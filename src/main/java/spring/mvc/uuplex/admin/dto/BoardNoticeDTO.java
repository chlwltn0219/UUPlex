package spring.mvc.uuplex.admin.dto;

import java.sql.Timestamp;

public class BoardNoticeDTO {
	private int shopCode;           //�����ȣ
	private int notiNum;            //�۹�ȣ
	private String memId;  		    //�ۼ���
	private String notiPasswd;	    //��й�ȣ
	private String subject;		    //������
	private String content;         //�۳���
	private int readCnt;    	    //��ȸ��
	private int ref;  			    //�׷�
	private int ref_step;    	    //�׷� ����
	private int ref_level;   	    //�׷� ����
	private Timestamp noti_date;    //�ۼ���
	private String ip;              //IP
	private String important;       //�߿䵵
	
	
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
