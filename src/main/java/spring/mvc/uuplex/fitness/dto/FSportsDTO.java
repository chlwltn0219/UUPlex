package spring.mvc.uuplex.fitness.dto;

import java.sql.Timestamp;

public class FSportsDTO {
	
	private int sid;
	private String sname;
	private String sinfo;
	private String activated;
	private Timestamp reg_date;
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSinfo() {
		return sinfo;
	}
	public void setSinfo(String sinfo) {
		this.sinfo = sinfo;
	}
	public String getActivated() {
		return activated;
	}
	public void setActivated(String activated) {
		this.activated = activated;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
}
