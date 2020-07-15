package osf.spring.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import osf.spring.dto.BuyListDTO;
import osf.spring.dto.CartDTO;
import osf.spring.dto.LocketListDTO;
import osf.spring.dto.MemberDTO;
import osf.spring.dto.OrderBillDTO;
import osf.spring.statics.Statics;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public boolean login(Map<String,String> param) {
		int result= mybatis.selectOne("Member.login",param);

		if(result>0) return true;
		else return false;
	}

	public MemberDTO mypage(String id){
		MemberDTO dto = mybatis.selectOne("Member.mypage", id);
		return dto;
	}	

	public List<CartDTO> cart(CartDTO cdto) {
		return mybatis.selectList("Member.cart", cdto);
	}

	public int productDelete(CartDTO cdto) {
		return mybatis.delete("Member.deleteCart",cdto);
	}

	public int productDeleteAll(CartDTO cdto) {
		return mybatis.delete("Member.deleteAll",cdto);
	}

	public void joinCount() {
		mybatis.insert("Member.joinCount");
	}

	////영웅이형 파트//////////
	public int addMember(MemberDTO mdto) throws Exception{
		return mybatis.insert("Member.addmember",mdto);
	}

	public int locketwrite(LocketListDTO dto) throws Exception{

		return  mybatis.insert("Member.locketwrite",dto);

	}

	public boolean isIdAble(String id) throws Exception{
		int result = mybatis.selectOne("Member.duplcheck",id);
		if(result > 0) {return false;}
		else {return true;}
	}

	public boolean isEmailAvailable(String email) throws Exception{
		int result = mybatis.selectOne("Member.emailcode",email);
		if(result > 0) {return false;}
		else {return true;}
	}

	public String findid(String name, String email) throws Exception{
		Map<String,String> map = new HashMap();
		map.put("name", name);
		map.put("email", email);
		return mybatis.selectOne("Member.findid",map);
	}

	public String findpw(String id, String email) throws Exception{
		Map<String,String> map = new HashMap();
		map.put("id", id);
		map.put("email", email);
		return mybatis.selectOne("Member.findpw",map);
	}

	public MemberDTO profilego(String id) throws Exception{

		return mybatis.selectOne("Member.profilego",id);
	}

	public int delete(int seq) throws Exception{

		return mybatis.delete("Member.delete",seq);
	}

	public int updatePw(String pw,String id) throws Exception{

		Map<String,String> map = new HashMap();
		map.put("pw", pw);
		map.put("id", id);

		return mybatis.update("Member.updatePw",map);

	}
	public int memberupdate(String id,String name, String phone , String zipcode, String address1, String address2, String email) throws Exception{

		Map<String,String> map = new HashMap();

		map.put("id", id);
		map.put("name", name);
		map.put("phone", phone);
		map.put("zipcode", zipcode);
		map.put("address1", address1);
		map.put("address2", address2);
		map.put("email", email);


		return mybatis.update("Member.memberupdate",map);

	}

	public boolean pwcheck(String id,String pw) throws Exception {
		Map<String,String> param = new HashMap();
		param.put("id", id);
		param.put("pw", pw);
		int result = mybatis.selectOne("Member.pwcheck",param);
		System.out.println(result);
		if(result > 0) {return true;}
		else {return false;}
	}

	public int leaveMember(String id) throws Exception{

		int result = mybatis.delete("Member.leave",id);

		return result;
	}

	public int getArticleCount() throws Exception{

		return mybatis.selectOne("Member.countArticle");
	}


	public List<LocketListDTO> locketlist(int cpage,String id){

		int start = cpage*Statics.RECORD_COUNT_PER_PAGE - (Statics.RECORD_COUNT_PER_PAGE - 1);
		int end = start + (Statics.RECORD_COUNT_PER_PAGE - 1);

		Map<String,String> param = new HashMap();
		param.put("id", id);
		param.put("start", ""+start);
		param.put("end", ""+end);
		return mybatis.selectList("Member.locketlist", param);
	}

	public int getUseMoney(String id) {

		return mybatis.selectOne("Member.getUseMoney",id);
	}
	
	public List<BuyListDTO> orderList(String id){
		return mybatis.selectList("Member.orderList",id);
	}

	public String orderImg(int pseq) {
		return mybatis.selectOne("Member.orderImg",pseq);
	}
	public List<LocketListDTO> selectAddressList(String id){
		return mybatis.selectList("Member.selectAddressList",id);
	}
	
	public int orderCancel(int bseq) {
		return mybatis.delete("Member.orderCancel",bseq);
	}

	public int getOseq(int bseq) {
		return mybatis.selectOne("Member.getOseq",bseq);
	}

	public int getUsePoint(int oseq) {
		System.out.println("DAO : " + oseq);
		return mybatis.selectOne("Member.getUsePoint",oseq);
	}
	
	
	public int billCancel(int oseq) {
		return mybatis.delete("Member.billCancel",oseq);
	}
	
	public int returnPoint(String id,int usePoint) {
		Map<String,String> map = new HashMap();
		map.put("id", id);
		map.put("usePoint", ""+usePoint);
		return mybatis.update("Member.returnPoint",map);
	}

	public String getYN(int bseq) {
		return mybatis.selectOne("Member.getYN",bseq);
	}

	public boolean buylistYN(int oseq) {
		int result = mybatis.selectOne("Member.buylistYN",oseq);
		if(result > 0) {
			return true;
		}else {
			return false;
		}
	}
	
	public OrderBillDTO getOrderBill(int oseq) {
		return mybatis.selectOne("Member.getOrderBill",oseq);
	}

	public BuyListDTO getBuyList(int bseq) {
		return mybatis.selectOne("Member.getBuyList",bseq);
	}

	public int minusBill(int oseq, int price) {
		Map<String,Integer> map = new HashMap();
		map.put("oseq", oseq);
		map.put("price", price);
		return mybatis.update("Member.minusBill",map);
	}

	public List<String> myBuyList(String id) {
		return mybatis.selectList("Member.myBuyList",id);
	}

	public int onlyBuy(int bseq) {
		return mybatis.update("Member.onlyBuy",bseq);
	}

	public void addPoint(String id, int point) {
		Map<String,String> map = new HashMap();
		map.put("id", id);
		map.put("point",""+point);
		System.out.println("포인트 몇이냐? "+point);
		mybatis.update("Member.addPoint",map);
		
	}

}
