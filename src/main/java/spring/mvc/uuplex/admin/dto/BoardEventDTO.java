package spring.mvc.uuplex.admin.dto;

import java.sql.Timestamp;

public class BoardEventDTO {
	private int shopCode;           //�����ȣ
	private int eventNum;           //�۹�ȣ
	private String memId;  		    //�ۼ���
	private String eventPasswd;	    //��й�ȣ
	private String subject;		    //������
	private String eventImg;		//�̺�Ʈ �̹���
	private String content;         //�۳���
	private int readCnt;    	    //��ȸ��
	private int ref;  			    //�׷�
	private int ref_step;    	    //�׷� ����
	private int ref_level;   	    //�׷� ����
	private Timestamp event_date;   //�ۼ���
	private String ip;              //IP
	
	
	
	public int getShopCode() {
		return shopCode;
	}
	public void setShopCode(int shopCode) {
		this.shopCode = shopCode;
	}
	public int getEventNum() {
		return eventNum;
	}
	public void setEventNum(int eventNum) {
		this.eventNum = eventNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getEventPasswd() {
		return eventPasswd;
	}
	public void setEventPasswd(String eventPasswd) {
		this.eventPasswd = eventPasswd;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getEventImg() {
		return eventImg;
	}
	public void setEventImg(String eventImg) {
		this.eventImg = eventImg;
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
	public Timestamp getEvent_date() {
		return event_date;
	}
	public void setEvent_date(Timestamp event_date) {
		this.event_date = event_date;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	

	
	
}
