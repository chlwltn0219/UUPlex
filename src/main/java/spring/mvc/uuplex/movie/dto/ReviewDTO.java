package spring.mvc.uuplex.movie.dto;

import java.sql.Timestamp;

public class ReviewDTO {

	
	int review_num; /* �����ȣ */
	String memId; /* ȸ��id */
	int movie_num; /* ��ȭ��ȣ */
	int rating; /* ���� */
	String review_content; /* ���䳻�� */
	Timestamp reg_date;/* ����� */
	
	public int getReview_num() {
	
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getMovie_num() {
		return movie_num;
	}
	public void setMovie_num(int movie_num) {
		this.movie_num = movie_num;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

}
