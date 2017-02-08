package spring.mvc.uuplex.fitness.dto;

import java.sql.Timestamp;

public class FStatementDTO {
	
	int cid;
	int price;
	String memid;
	Timestamp reg_date;
	
	String subname;
	String pame;
	String tname;
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	
	
}
