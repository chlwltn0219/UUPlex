package spring.mvc.uuplex.admin.dto;

import java.sql.Timestamp;

public class BoardNoticeDTO {
	private int shopCode;           //매장번호
	private int notiNum;            //글번호
	private String memId;  		    //작성자
	private String notiPasswd;	    //비밀번호
	private String subject;		    //글제목
	private String content;         //글내용
	private int readCnt;    	    //조회수
	private int ref;  			    //그룹
	private int ref_step;    	    //그룹 스텝
	private int ref_level;   	    //그룹 레벨
	private Timestamp noti_date;    //작성일
	private String ip;              //IP
	private String important;       //중요도
	
	
	public int getShopCode() {
		return shopCode;
	}
	public void setShopCode(int shopCode) {
		this.shopCode = shopCode;
	}
	public int getNotiNum() {
		return notiNum;
	}
	public void setNotiNum(int notiNum) {
		this.notiNum = notiNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getNotiPasswd() {
		return notiPasswd;
	}
	public void setNotiPasswd(String notiPasswd) {
		this.notiPasswd = notiPasswd;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadCnt() {
		return readCnt;
	}
	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRef_step() {
		return ref_step;
	}
	public void setRef_step(int ref_step) {
		this.ref_step = ref_step;
	}
	public int getRef_level() {
		return ref_level;
	}
	public void setRef_level(int ref_level) {
		this.ref_level = ref_level;
	}
	public Timestamp getNoti_date() {
		return noti_date;
	}
	public void setNoti_date(Timestamp noti_date) {
		this.noti_date = noti_date;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getImportant() {
		return important;
	}
	public void setImportant(String important) {
		this.important = important;
	}
	
	
}
