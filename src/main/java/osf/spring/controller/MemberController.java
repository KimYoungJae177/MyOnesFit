package osf.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;

import osf.spring.dto.BuyListDTO;
import osf.spring.dto.CartDTO;
import osf.spring.dto.LocketListDTO;
import osf.spring.dto.MemberDTO;
import osf.spring.dto.OrderBillDTO;
import osf.spring.service.MemberService;
import osf.spring.service.ProductService;
import osf.spring.statics.Mail;
import osf.spring.statics.Mail2;
import osf.spring.statics.Mail3;

@Controller
@RequestMapping("/member/")
public class MemberController {

	@Autowired
	private MemberService mservice;

	@Autowired
	private ProductService pservice;

	@Autowired
	private HttpSession session;



	@RequestMapping("login")
	public String login(String id,String pw)throws Exception{
		boolean login = mservice.login(id, pw);

		if(login) {

			MemberDTO dto = mservice.mypage(id);
			session.setAttribute("loginInfo", dto);
			session.setAttribute("loginid", dto.getId());

			System.out.println("member loginid : " + session.getAttribute("loginid"));

		}else {return "loginFailed";}
		mservice.joinCount();

		return "redirect:/";
	}	

	@RequestMapping("logout")
	public String logout() throws Exception{
		session.invalidate();
		return "redirect:/"; 
	}

	@RequestMapping("cart")
	public String cart(CartDTO cdto, Model model) throws Exception{
		List<CartDTO> list =  mservice.cart(cdto);
		model.addAttribute("list",list);
		return "member/cart";
	}

	@RequestMapping("productDelete")
	public String productDelete(CartDTO cdto) throws Exception{
		mservice.productDelete(cdto);
		return "redirect:../member/cart?parent_id="+cdto.getParent_id(); 
	}

	@RequestMapping("productDeleteAll")
	public String productDeleteAll(CartDTO cdto) throws Exception{
		MemberDTO id = (MemberDTO) session.getAttribute("loginInfo");
		cdto.setParent_id(id.getId());

		mservice.productDeleteAll(cdto);
		return "redirect:../member/cart?parent_id="+cdto.getParent_id();
	}


	/////////////////////영웅이형꺼//////////////////////////
	@RequestMapping("toSignup")
	public String toSignup() {
		return "member/signup";
	}
	@RequestMapping("toLogin")
	public String toLogin() {
		return "member/login";
	}
	@RequestMapping("toidfind")
	public String toidfind() {
		return "member/idfind";
	}
	@RequestMapping("topwfind")
	public String topwfind() {
		return "member/pwfind";
	}
	@RequestMapping("tomyPage")
	public String tomyPage(Model model) {
		MemberDTO dto = (MemberDTO)session.getAttribute("loginInfo");
		String id = dto.getId();
		int useMoney = mservice.getUseMoney(id);
		List<String> mylist = mservice.myBuyList(id);
		model.addAttribute("mylist",mylist);
		model.addAttribute("useMoney",useMoney);
		return "member/mypage";
	}

	@RequestMapping("toLocketlist")
	public String toLocketlist(Model model, int page)  throws Exception{
		if(page==0) {page=1;}

		List<LocketListDTO> list = mservice.locketlist(page);
		String navi = mservice.getPageNavi(page);
		model.addAttribute("list",list);
		model.addAttribute("navi",navi);

		return "locket/locketlist";
	}


	@RequestMapping("locketwrite")
	public String locketwrite() {
		return "locket/locketwrite";
	}


	@RequestMapping("locketwriteProc")
	public String locketwriteProc(LocketListDTO dto)throws Exception {

		mservice.locketwrite(dto);

		return "redirect:/member/toLocketlist?page=1";
	}

	@RequestMapping("delete")
	public String delete(HttpServletRequest request) throws Exception{
		int seq = Integer.parseInt(request.getParameter("seq"));
		mservice.delete(seq);

		return "redirect:/member/toLocketlist?page=1";
	}




	@RequestMapping("loginFailed")
	public String tologinFailed() {
		return "loginFailed";
	}



	@RequestMapping("signup")
	public String toSignup(HttpServletRequest req) throws Exception{
		MemberDTO mdto = new MemberDTO();
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String zipcode = req.getParameter("zipcode");
		String address1 = req.getParameter("address1");
		String address2 = req.getParameter("address2");
		String phone1 = req.getParameter("phone1");
		String phone2 = req.getParameter("phone2");
		String phone3 = req.getParameter("phone3");
		StringBuilder sb = new StringBuilder(phone1+phone2+phone3);
		System.out.println(sb.toString());
		mdto.setId(id);
		mdto.setPw(pw);
		mdto.setName(name);
		mdto.setEmail(email);
		mdto.setPhone(sb.toString());
		mdto.setZipcode(zipcode);
		mdto.setAddress1(address1);
		mdto.setAddress2(address2);
		int result = mservice.addMember(mdto);
		if(result > 0) {
			
			return "redirect:/";
		}
		return "redirect:/";
	}

	   @ResponseBody
	   @RequestMapping("duplcheck")
	   public Object duplcheck(MemberDTO mdto) throws Exception{
	      String id = mdto.getId();
//	      JsonObject obj = new JsonObject();
	      
	      boolean result = mservice.isIdAble(id);
//	         obj.addProperty("check", result);
	      return result;
	   }



	@RequestMapping("findId")
	public String findId(Model model,HttpServletRequest request) throws Exception{

		String name = request.getParameter("name");
		String email = request.getParameter("email");

		String result = mservice.doesIdExist(name,email);

		if(result==null) {
			return "member/findidNo";
		}else{
			model.addAttribute("id",result);
			return "member/findidOk";
		}
	}

	@RequestMapping("findPw")
	public String findPw(Model model,HttpServletRequest request) throws Exception{

		String id = request.getParameter("id");
		String email = request.getParameter("email");

		String result = mservice.isMemberAvailable(id,email);

		if(result==null) {
			return "member/findpwNo";
		}else{
			model.addAttribute("id",result);
			return "member/changePw";
		}
	}


	@RequestMapping("changePw")
	public String changePw(HttpServletRequest request) throws Exception{

		String id = request.getParameter("id");
		String pw = request.getParameter("pw1");

		System.out.println(id);
		System.out.println(pw);

		int result = mservice.updatePw(pw,id);

		if(result>0) {
			return "member/changePwOk";
		}else{
			return  "member/findpwNo";
		}		
	}

	@RequestMapping("toProfile")
	   public String toProfile(Model model)throws Exception {
	      
	      MemberDTO result =(MemberDTO)session.getAttribute("loginInfo");


	      model.addAttribute("mdto",result);

	      return "member/profile";
	   }

	@RequestMapping("profile")
	public String profile(HttpServletRequest request) throws Exception{

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String zipcode = request.getParameter("zipcode");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String email = request.getParameter("email");


		System.out.println(id);
		System.out.println(name);
		System.out.println(phone);
		System.out.println(zipcode);
		System.out.println(address1);
		System.out.println(address2);
		System.out.println(email);

		int result = mservice.memberupdate(id,name,phone,zipcode,address1,address2,email);
		session.setAttribute("loginInfo", mservice.mypage(id));
		if(result>0) {
			return "member/profileOk";
		}else{
			return  "member/findidNo";
		}	
	}
	
	@RequestMapping("pwcheckok")
	   public String pwcheckok() {
	      return "member/pwCheckView";
	   }

	@ResponseBody
	@RequestMapping("pwcheck")
	public Object pwcheck(HttpServletRequest request) throws Exception{
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		boolean result = mservice.pwcheck(id,pw);	
		return result;
	}


	@RequestMapping("leave")
	public String leave() throws Exception{

		MemberDTO mdto = (MemberDTO)session.getAttribute("loginInfo");

		String id = mdto.getId();

		int result = mservice.leaveMember(id);
		if(result > 0) {
			session.invalidate();
            session.invalidate();
			return "redirect:/";
		}
		return "redirect:/";
	}


	@ResponseBody
	@RequestMapping("emailcode")
	public String emailcode(MemberDTO mdto) throws Exception{
		String email = mdto.getEmail();

		int code=0;

		JsonObject obj = new JsonObject();

		boolean check = mservice.isEmailAvailable(email);

		if(check) {
			code=Mail.gmailSend(email);
		}
		System.out.println(check);
		obj.addProperty("result", check);
		obj.addProperty("code", code);
		System.out.println(obj.toString());
		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("emailcode2") 
	public String emailcode2(MemberDTO mdto) throws Exception{ 
		String email = mdto.getEmail();

		int code=0;

		JsonObject obj = new JsonObject(); 

		code=Mail2.gmailSend(email);

		obj.addProperty("code", code); 
		System.out.println(obj.toString()); 
		return obj.toString();
	}

	@ResponseBody
	@RequestMapping("emailcode3") 
	public String emailcode3(MemberDTO mdto) throws Exception{ 
		String email = mdto.getEmail();

		int code=0;

		JsonObject obj = new JsonObject(); 

		code=Mail3.gmailSend(email);

		obj.addProperty("code", code); 
		System.out.println(obj.toString()); 
		return obj.toString();
	}
	
	@RequestMapping("orderList")
	public String orderList(Model model) {
		String id = (String)session.getAttribute("loginid");
		List<BuyListDTO> blist = mservice.orderList(id);
		List<Integer> pseq = new ArrayList<>();
		List<Integer> oseq = new ArrayList<>();
		for(BuyListDTO b : blist) {
			System.out.println(b.getProduct_num());
			pseq.add(b.getProduct_num());
			if(!oseq.contains(b.getOseq())) {
			oseq.add(b.getOseq());
			}
		}
		List<OrderBillDTO> olist = new ArrayList<>();
		for(Integer i : oseq) {
			olist.add(mservice.getOrderBill(i));
		}
		model.addAttribute("olist",olist);
		model.addAttribute("imgs",mservice.orderImg(pseq));
		
		model.addAttribute("blist",blist);
		return "/member/orderList";
	}
	
	@RequestMapping("addressList")
	public String addressList(Model model) throws Exception{
		MemberDTO dto = (MemberDTO)session.getAttribute("loginInfo");
		List<LocketListDTO> list=mservice.selectAddressList(dto.getId());
		
		model.addAttribute("list",list);
		
		return "product/addressList";
	}
	
	@RequestMapping("orderCancel")
	public String orderCancel(int bseq,int amount,int oseq) {
		int result = mservice.orderCancel(bseq,amount,oseq);
		if(result > 0) {
			return "redirect:/member/orderList";
		}else {
			return "notice/error";
		}
	}
	
	@RequestMapping("onlyBuy")
	public String onlyBuy(int bseq,int price) {
		mservice.onlyBuy(bseq,price);
		String id = (String)session.getAttribute("loginid");
		MemberDTO dto = mservice.mypage(id);
		session.setAttribute("loginInfo", dto);
		return "redirect:/member/tomyPage";
	}
	


}
