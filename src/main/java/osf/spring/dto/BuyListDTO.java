package osf.spring.dto;

import java.sql.Timestamp;

public class BuyListDTO {
   private int bseq;
   private String parent_id;
   private String pname;
   private int price;
   private String psize;
   private String pcolor;
   private int amount;
   private String recipient;
   private int zipcode;
   private String address1;
   private String address2;
   private String phone;
   private String msg;
   private String status;
   private int product_num;
   private Timestamp buy_date;
   private String send_money_yn;
   private long send_number;
   private int addpoint;
   private int oseq;
   
   public BuyListDTO() {}

public BuyListDTO(int bseq, String parent_id, String pname, int price, String psize, String pcolor, int amount,
		String recipient, int zipcode, String address1, String address2, String phone, String msg, String status,
		int product_num, Timestamp buy_date, String send_money_yn, long send_number, int addpoint, int oseq) {
	super();
	this.bseq = bseq;
	this.parent_id = parent_id;
	this.pname = pname;
	this.price = price;
	this.psize = psize;
	this.pcolor = pcolor;
	this.amount = amount;
	this.recipient = recipient;
	this.zipcode = zipcode;
	this.address1 = address1;
	this.address2 = address2;
	this.phone = phone;
	this.msg = msg;
	this.status = status;
	this.product_num = product_num;
	this.buy_date = buy_date;
	this.send_money_yn = send_money_yn;
	this.send_number = send_number;
	this.addpoint = addpoint;
	this.oseq = oseq;
}

public int getBseq() {
	return bseq;
}

public void setBseq(int bseq) {
	this.bseq = bseq;
}

public String getParent_id() {
	return parent_id;
}

public void setParent_id(String parent_id) {
	this.parent_id = parent_id;
}

public String getPname() {
	return pname;
}

public void setPname(String pname) {
	this.pname = pname;
}

public int getPrice() {
	return price;
}

public void setPrice(int price) {
	this.price = price;
}

public String getPsize() {
	return psize;
}

public void setPsize(String psize) {
	this.psize = psize;
}

public String getPcolor() {
	return pcolor;
}

public void setPcolor(String pcolor) {
	this.pcolor = pcolor;
}

public int getAmount() {
	return amount;
}

public void setAmount(int amount) {
	this.amount = amount;
}

public String getRecipient() {
	return recipient;
}

public void setRecipient(String recipient) {
	this.recipient = recipient;
}

public int getZipcode() {
	return zipcode;
}

public void setZipcode(int zipcode) {
	this.zipcode = zipcode;
}

public String getAddress1() {
	return address1;
}

public void setAddress1(String address1) {
	this.address1 = address1;
}

public String getAddress2() {
	return address2;
}

public void setAddress2(String address2) {
	this.address2 = address2;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getMsg() {
	return msg;
}

public void setMsg(String msg) {
	this.msg = msg;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public int getProduct_num() {
	return product_num;
}

public void setProduct_num(int product_num) {
	this.product_num = product_num;
}

public Timestamp getBuy_date() {
	return buy_date;
}

public void setBuy_date(Timestamp buy_date) {
	this.buy_date = buy_date;
}

public String getSend_money_yn() {
	return send_money_yn;
}

public void setSend_money_yn(String send_money_yn) {
	this.send_money_yn = send_money_yn;
}

public long getSend_number() {
	return send_number;
}

public void setSend_number(long send_number) {
	this.send_number = send_number;
}

public int getAddpoint() {
	return addpoint;
}

public void setAddpoint(int addpoint) {
	this.addpoint = addpoint;
}

public int getOseq() {
	return oseq;
}

public void setOseq(int oseq) {
	this.oseq = oseq;
}

  
   
   
}