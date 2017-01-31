package spring.mvc.uuplex.fitness.dto;

import java.sql.Timestamp;

public class FTeacherDTO {

	private int tid; 
	private int sid;
	private String tname;
	private String tinfo;
	private String tpicture;
	private String activated;
	private Timestamp reg_date;
	
	//테이블에 없는 값
	private String sname;
	
	  
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
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTinfo() {
		return tinfo;
	}
	public void setTinfo(String tinfo) {
		this.tinfo = tinfo;
	}
	public String getTpicture() {
		return tpicture;
	}
	public void setTpicture(String tpicture) {
		this.tpicture = tpicture;
	}
	public String getActivated() {
		return activated;
	}
	public void setActivated(String activated) {
		this.activated = activated;
	}
	  
}
