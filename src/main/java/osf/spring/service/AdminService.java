package osf.spring.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import osf.spring.dao.AdminDAO;
import osf.spring.dto.BestProductDTO;
import osf.spring.dto.BuyListDTO;
import osf.spring.dto.MemberDTO;
import osf.spring.dto.OptionDTO;
import osf.spring.dto.PopupDTO;
import osf.spring.dto.ProductDTO;
import osf.spring.dto.ProductImgDTO;
import osf.spring.dto.QuestionDTO;

@Service
public class AdminService {
	
	
	@Autowired
	private AdminDAO adao;
	
	
	public List<Integer> getSales() {
		return adao.getSales();
	}
	
	public int totalSale() {
		return adao.totalSale();
	}
	
	public List<MemberDTO> getMembers(){
		return adao.getMembers();
	}
	
	public int memberDelete(String id) {
		return adao.memberDelete(id);
	}
	
	public int memberBlack(String id) {
		return adao.memberBlack(id);
	}
	
	public void unBlack(String id) {
		adao.unBlack(id);	
	}
	
	public int updatePoint(String id,int point) {
		return adao.updatePoint(id,point);
	}
	
	public List<ProductDTO> getProduct(){
		return adao.getProduct();
	}

	public int productAdd(int product_seq,String pname,int price,String content,String category,String sysname) {
		return adao.productAdd(product_seq,pname, price, content, category,sysname);
	}


	public int getProductSequence() {
		return adao.getProductSequence();
	}

	public void addImg(List<ProductImgDTO> pdto,int seq) {
		adao.addImg(pdto,seq);
	}

	public ProductDTO productDetail(int pseq) {
		return adao.productDetail(pseq);
	}

	public int addOption(List<OptionDTO> odto) throws InterruptedException {
		int result = 0;
		for(int i=0;i<odto.size();i++) {
			adao.addOption(odto.get(i));
		}
		return result;
	}
	
	
	@Transactional("txManager")
	public int productDelete(int seq) {
		adao.deleteOption(seq);
		adao.deleteImg(seq);
		return adao.productDelete(seq);
	}
	
	public List<String> getImg(int pseq) {
		return adao.getImg(pseq);
	}

	public void modifyImg(List<ProductImgDTO> pdto, int seq) {	
		adao.modifyImg(pdto,seq);
	}

	public void modifyOption(List<OptionDTO> odto,int seq) throws InterruptedException {
		adao.deleteOption(seq);
		for(int i=0;i<odto.size();i++) {
			adao.addOption(odto.get(i));
		}
	}

	public int productModify(int pseq,String pname, int price, String content, String category, String sysname) {
		return adao.productModify(pseq,pname,price,content,category,sysname);
	}

	public List<OptionDTO> getOption(int pseq) {
		return adao.getOption(pseq);
	}
	
	public List<BestProductDTO> itemRank(){
		
		return adao.itemRank();
	}
	
	public List<ProductDTO> bestProduct(List<BestProductDTO> best){
		List<ProductDTO> bestList = new ArrayList<>();
		for(BestProductDTO b : best) {
			bestList.add(adao.bestProduct(b.getProduct_num()));
		}
		return bestList;
	}

	public void setBest(int[] pseq) {
		for(int i=0;i<pseq.length;i++) {
		  adao.setBest(pseq[i]);
		}
		
	}
	
	public int unBest(int pseq) {
		return adao.unBest(pseq);
	}
	
	/////////////////////////영재씨파트///////////////////////
	//buylist
		public List<BuyListDTO> selectByPage(Map<String, Object> selectParamBuylist){
			return adao.selectByPageNo(selectParamBuylist);
		}

		public Object updateWhenStatusN(Map<String, Object> updateParam) {
			return adao.updateWhenStatusN(updateParam);
			
		}

		public Object updateWhenStatusY0(Map<String, Object> updateParam) {
			return adao.updateWhenStatusY0(updateParam);
			
		}

		public Object updateWhenStatusYX(Map<String, Object> updateParam) {
			return adao.updateWhenStatusYX(updateParam);
			
		}
		
		public Object buyListDelete(int bseq) {
			return adao.buyListDelete(bseq);
			
		}

		
		//question
		public List<QuestionDTO> qSelectAll(Map<String, Object> updateParamQuestion) {
			return adao.qSelectAll(updateParamQuestion);
		}

		public int answerInput(Map<String, Object> inputParam) {
			return adao.answerInput(inputParam);
			
		}
		
		//PopUp
		public int popupInsert(Map<String, Object> popupInsertParam) {
			return adao.popupInsert(popupInsertParam);
			
		}

		public List<BuyListDTO> selectPopupByPage() {
			return adao.selectPopupByPage();
		}

		public Object popupShowUpdate(Map<String, Object> popupShow_ynUpdate) {
			return adao.popupShowUpdate(popupShow_ynUpdate);
			
		}

		public List<PopupDTO> selectPopupByY() {
			return adao.selectPopupByY();
		}

		public List<Integer> visit() {
			return adao.visit();
		}
		
		public int pupupDelete(int popup_seq) {
	         return adao.pupupDelete(popup_seq);
	         
	      }
		

	

	
}
