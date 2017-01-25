package spring.mvc.uuplex.admin.dto;

import java.sql.Timestamp;

public class BoardDTO {
	private int shopCode;            //�����ȣ
	private int qnaNum;            //�۹�ȣ
	private String memId;  		   //�ۼ���
	private String qnaPasswd;	   //��й�ȣ
	private String subject;		   //������
	private String content;        //�۳���
	private int readCnt;    	   //��ȸ��
	private int ref;  			   //�׷�
	private int ref_step;    	   //�׷� ����
	private int ref_level;   	   //�׷� ����
	private Timestamp qna_date;    //�ۼ���
	private String ip;             //IP
	

	public int getShopCode() {
		return shopCode;
	}
	public void setShopCode(int shopCode) {
		this.shopCode = shopCode;
	}
	public int getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getQnaPasswd() {
		return qnaPasswd;
	}
	public void setQnaPasswd(String qnaPasswd) {
		this.qnaPasswd = qnaPasswd;
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
	public Timestamp getQna_date() {
		return qna_date;
	}
	public void setQna_date(Timestamp qna_date) {
		this.qna_date = qna_date;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	
	
}
