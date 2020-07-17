package osf.spring.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import osf.spring.dto.BestProductDTO;
import osf.spring.dto.BuyListDTO;
import osf.spring.dto.MemberDTO;
import osf.spring.dto.OptionDTO;
import osf.spring.dto.PopupDTO;
import osf.spring.dto.ProductDTO;
import osf.spring.dto.ProductImgDTO;
import osf.spring.dto.QuestionDTO;
import osf.spring.service.AdminService;

@Controller
@RequestMapping("/admin/")
public class AdminController {

	public void deleteFile2(int seq, String title_img) {
		String filePath = session.getServletContext().getRealPath("upload/product/title");
		File folder = new File(filePath);

		File[] folder_list = folder.listFiles(); // 파일리스트 얻어오기

		for (int j = 0; j < folder_list.length; j++) {
			if (folder_list[j].equals(title_img)) {
				folder_list[j].delete(); // 파일 삭제
				System.out.println("대표이미지 삭제.");
			}
		}
	}

	public void deleteFile(int seq) {
		String filePath = session.getServletContext().getRealPath("upload/product/" + seq);
		File folder = new File(filePath);

		File[] folder_list = folder.listFiles(); // 파일리스트 얻어오기
		if (folder_list != null) {
			for (int j = 0; j < folder_list.length; j++) {
				folder_list[j].delete(); // 파일 삭제
				System.out.println("파일이 삭제되었습니다.");

			}
		}
	}

	public String filesUpload2(MultipartFile file, int seq) throws Exception {
		String filePath = session.getServletContext().getRealPath("upload");

		String sysname = "";
		File tempFilePath = new File(filePath);
		System.out.println("filePath: " + filePath);
		System.out.println("tempFilePath : " + tempFilePath);
		if (!tempFilePath.exists()) {
			tempFilePath.mkdir();
		}
		filePath += "/product";
		File temp2 = new File(filePath);
		if (!temp2.exists()) {
			System.out.println(temp2);
			temp2.mkdir();
		}
		filePath += "/title";
		File temp3 = new File(filePath);
		if (!temp3.exists()) {
			System.out.println(temp3);
			temp3.mkdir();
		}
		if (!file.isEmpty()) {
			String systemFileName = file.getOriginalFilename();
			File targetLoc = new File(filePath + "/" + systemFileName);
			file.transferTo(targetLoc);
			sysname = systemFileName;
		}
		return sysname;

	}

	public List<ProductImgDTO> filesUpload(MultipartFile[] files2, int seq) throws Exception {
		String filePath = session.getServletContext().getRealPath("upload/product/" + seq);
		System.out.println("파일 경로 : " + filePath);
		List<ProductImgDTO> pdto = new ArrayList<>();
		File tempFilePath = new File(filePath);
		System.out.println(tempFilePath.exists());
		if (!tempFilePath.exists()) {
			System.out.println("들어오나?");
			tempFilePath.mkdir();
		}

		for (MultipartFile file : files2) {
			if (!file.isEmpty()) {
				String systemFileName = file.getOriginalFilename();
				File targetLoc = new File(filePath + "/" + systemFileName);
				file.transferTo(targetLoc);
				pdto.add(new ProductImgDTO(0, file.getOriginalFilename(), systemFileName));
			}
		}
		return pdto;
	}

	@Autowired
	private AdminService aservice;

	@Autowired
	private HttpSession session;

	@Autowired
	private DataSourceTransactionManager txManager;

	@RequestMapping("adminMain")
	public String goAdminMain(Model model) {

		List<Integer> num = aservice.getSales();
		int totalSale = aservice.totalSale();
		List<BestProductDTO> buyRank = aservice.itemRank();
		List<ProductDTO> topProduct = aservice.bestProduct(buyRank);
		List<Integer> visit = aservice.visit();

		model.addAttribute("visit", visit);
		model.addAttribute("ranklist", buyRank);
		model.addAttribute("topProduct", topProduct);
		model.addAttribute("sales", num);
		model.addAttribute("totalSale", totalSale);
		return "/admin/adminMain";
	}

	@RequestMapping("productAdmin")
	public String goProductAdmin(Model model) {
		List<ProductDTO> pdto = aservice.getProduct();

		model.addAttribute("pdto", pdto);

		return "/admin/productAdmin";
	}

	@RequestMapping("productModify")
	public String goProductModify(HttpServletRequest request, Model model) {
		int pseq = Integer.parseInt(request.getParameter("pseq"));
		ProductDTO pdto = aservice.productDetail(pseq);
		List<String> img = aservice.getImg(pseq);
		List<OptionDTO> odto = aservice.getOption(pseq);
		model.addAttribute("pdto", pdto);
		model.addAttribute("img", img);
		model.addAttribute("odto", odto);
		return "/admin/productModify";
	}

	@RequestMapping("productModifyProc")
	public String productModify(HttpServletRequest request, MultipartFile[] files2, MultipartFile file) throws Exception {
		request.setCharacterEncoding("utf-8");
		String pname = request.getParameter("pname");
		int price = Integer.parseInt(request.getParameter("price"));
		String content = request.getParameter("content");
		String category = request.getParameter("category");
		String[] colors = request.getParameterValues("color");
		Map<String, String[]> map = new HashMap<>();

		String[] count = null;
		for (int i = 0; i < colors.length; i++) {
			count = request.getParameterValues("count");
			String color = colors[i];
			String[] list = request.getParameterValues(color);
			map.put(color, list);
			System.out.println(count[i]);
		}

		int seq = Integer.parseInt(request.getParameter("pseq"));
		System.out.println("상품번호 : " + seq);
		String title_img = request.getParameter("title_img");
		String sysname = "";
		System.out.println(file.getSize());
		System.out.println(files2.length);
		if (!file.isEmpty()) {
			this.deleteFile2(seq, title_img);
			sysname = this.filesUpload2(file, seq);
		} else {
			sysname = title_img;
		}

		if (!"".contentEquals(files2[0].getOriginalFilename())) {
			this.deleteFile(seq);
			List<ProductImgDTO> pdto = this.filesUpload(files2, seq);
			aservice.modifyImg(pdto, seq);
		}

		int result = aservice.productModify(seq, pname, price, content, category, sysname);
		if (result > 0) {
			List<OptionDTO> odto = new ArrayList<>();
			int index = 0;
			for (String key : map.keySet()) {
				String[] list = map.get(key);

				for (int i = 0; i < list.length; i++) {
					System.out.println(key);
					System.out.println(list[i]);
					odto.add(new OptionDTO(seq, key, list[i], Integer.parseInt(count[index])));
				}
				index++;
			}
			aservice.modifyOption(odto, seq);
		}
		return "redirect:/admin/adminMain";
	}

	@RequestMapping("productAdd")
	public String goProductAdd() {
		return "/admin/productAdd";
	}

	@RequestMapping("memberAdmin")
	public String goMembers(Model model) throws Exception {
		List<MemberDTO> mdto = aservice.getMembers();

		model.addAttribute("mdto", mdto);
		System.out.println(mdto.size());
		return "/admin/memberAdmin";
	}

	@RequestMapping("productAddProc")
	@Transactional("txManager")
	public String productAdd(HttpServletRequest request, MultipartFile[] files2, MultipartFile file) throws Exception {
		request.setCharacterEncoding("utf-8");
		String pname = request.getParameter("pname");
		int price = Integer.parseInt(request.getParameter("price"));
		String content = request.getParameter("content");
		String category = request.getParameter("category");
		String[] colors = request.getParameterValues("color");
		Map<String, String[]> map = new HashMap<>();
		System.out.println("색상 개수는 : " + colors.length);
		String[] count = null;

		for (int i = 0; i < colors.length; i++) {
			count = request.getParameterValues("count");
			String color = colors[i];
			String[] list = request.getParameterValues(color);
			map.put(color, list);
			System.out.println(count[i]);
		}

		int seq = aservice.getProductSequence();

		String sysname = this.filesUpload2(file, seq);
		System.out.println("상품번호가? " + seq);
		List<ProductImgDTO> pdto = this.filesUpload(files2, seq);
		aservice.addImg(pdto, seq);

		aservice.productAdd(seq, pname, price, content, category, sysname);

		List<OptionDTO> odto = new ArrayList<>();
		int index = 0;
		for (String key : map.keySet()) {
			String[] list = map.get(key);

			for (int i = 0; i < list.length; i++) {
				System.out.println(key);
				System.out.println(list[i]);
				System.out.println(count[index]);
				odto.add(new OptionDTO(seq, key, list[i], Integer.parseInt(count[index])));
			}
			index++;
		}
		aservice.addOption(odto);

		return "redirect:/admin/adminMain";
	}

	@RequestMapping("productDelete")
	public String productDelete(int pseq) {
		int result = aservice.productDelete(pseq);
		if (result > 0) {
			return "redirect:/admin/productAdmin";
		}
		return "error";
	}

	@RequestMapping("memberDelete")
	public String memberDelete(String id) {
		System.out.println(id);
		aservice.memberDelete(id);
		return "redirect:/admin/memberAdmin";
	}

	@RequestMapping("memberBlack")
	public String memberBlack(String id) {
		System.out.println(id);
		aservice.memberBlack(id);
		return "redirect:/admin/memberAdmin";
	}

	@RequestMapping("unBlack")
	public String unBlack(String id) {
		aservice.unBlack(id);
		return "redirect:/admin/memberAdmin";
	}

	@RequestMapping("updatePoint")
	@ResponseBody
	public Object updatePoint(String id, int point) {
		System.out.println(id + "/" + point);
		int result = aservice.updatePoint(id, point);
		return result;
	}

	@RequestMapping("setBest")
	public String setBest(int[] pseq) {

		aservice.setBest(pseq);
		return "redirect:/admin/adminMain";
	}

	@RequestMapping("unBest")
	public String unBest(int pseq) {
		aservice.unBest(pseq);
		return "redirect:/admin/adminMain";
	}

	///////////////////////// 영재씨파트 ///////////////////////////////////////
	// buyList
	@RequestMapping("/buyList")
	public String buyList(HttpServletRequest req, Model model, String BuylistSelected, String input) throws Exception {
		if (input == "") {
			input = null;
		}

		Map<String, Object> selectParamBuylist = new HashMap<>();
		selectParamBuylist.put("BuylistSelected", BuylistSelected);
		selectParamBuylist.put("input", input);
		List<BuyListDTO> bList = aservice.selectByPage(selectParamBuylist);
		model.addAttribute("bList", bList);
		return "admin/buylist";
	}

	@RequestMapping("BuyListUpdate")
	@ResponseBody
	public Object BuyListModify(int bseq, String status, String send_money_yn, long send_number) {

		/* System.out.println(bseq + status + send_money_yn + send_number); */

		Map<String, Object> updateParam = new HashMap<>();
		updateParam.put("bseq", bseq);
		updateParam.put("status", status);
		updateParam.put("send_money_yn", send_money_yn);
		updateParam.put("send_number", send_number);
		if (send_money_yn.contentEquals("N")) {
			aservice.updateWhenStatusN(updateParam);
		} else if (send_money_yn.contentEquals("Y")) {
			if (send_number == 0) {
				aservice.updateWhenStatusY0(updateParam);
			} else {
				aservice.updateWhenStatusYX(updateParam);
			}
		}
		return updateParam;
	}

	@RequestMapping("buyListDelete")
	public Object buyListDelete(int bseq) {
		aservice.buyListDelete(bseq);
		return "admin/buylist";
	}

	// questionAnswer

	@RequestMapping("question")
	public String question(HttpServletRequest req, Model model, String questionSelected, String input) throws Exception {
		if (input == "") {
			input = null;
		}
		Map<String, Object> updateParamQuestion = new HashMap<>();
		updateParamQuestion.put("questionSelected", questionSelected);
		updateParamQuestion.put("input", input);
		List<QuestionDTO> qlist = aservice.qSelectAll(updateParamQuestion);
		model.addAttribute("qList", qlist);
		return "admin/qnaAdmin";
	}

	@RequestMapping("AnswerInput")
	@ResponseBody
	public Object AnswerInput(int bno, String aInput) {
		Map<String, Object> inputParam = new HashMap<>();
		inputParam.put("parent_bno", bno);
		inputParam.put("contents", aInput);
		return aservice.answerInput(inputParam);

	}

	// popup

	@RequestMapping("popup")
	public String popup(HttpServletRequest req, Model model) {
		List<BuyListDTO> PopupList = aservice.selectPopupByPage();
		model.addAttribute("PopupList", PopupList);
		return "admin/popup";
	}

	@RequestMapping("popupInsertPage")
	public String popupInsertPage() {
		return "admin/popupInsertPage";
	}

	@RequestMapping("popupInput")
	public String popupInput(PopupDTO pdto, MultipartFile file) throws Exception {

		String filePath = session.getServletContext().getRealPath("upload/popup");
		File folder = new File(filePath);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		String title = pdto.getTitle();
		String originalFileName = file.getOriginalFilename();
		String systemFileName = System.currentTimeMillis() + "_" + originalFileName;

		File targetLoc = new File(filePath + "/" + systemFileName);
		file.transferTo(targetLoc);

		Map<String, Object> popupInsertParam = new HashMap<>();
		popupInsertParam.put("title", title);
		popupInsertParam.put("sysFileName", systemFileName);
		aservice.popupInsert(popupInsertParam);
		return "redirect:/admin/popup";
	}

	@RequestMapping("popupShow")
	public Object popupShowUpdate(int popup_seq, String show_yn) {
		Map<String, Object> popupShow_ynUpdate = new HashMap<>();
		popupShow_ynUpdate.put("popup_seq", popup_seq);
		popupShow_ynUpdate.put("show_yn", show_yn);
		aservice.popupShowUpdate(popupShow_ynUpdate);
		return "admin/popup";
	}

	@RequestMapping("pupupDelete")
	public Object pupupDelete(int popup_seq) {
		aservice.pupupDelete(popup_seq);
		return "admin/popup";
	}

}
