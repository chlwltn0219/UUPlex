package spring.mvc.uuplex.movie.dto;

import java.sql.Date;

public class RankingDTO {

	int rank_num;			/*예매순위*/
	int movie_num; 			/* 영화번호 */
	String title1; 			/* 영화제목 */
	Date releaseDate; 		/* 개봉일 */
	int cnt;				/* 영화별 예매수량 */
	
	public int getRank_num() {
		return rank_num;
	}
	public void setRank_num(int rank_num) {
		this.rank_num = rank_num;
	}
	public int getMovie_num() {
		return movie_num;
	}
	public void setMovie_num(int movie_num) {
		this.movie_num = movie_num;
	}
	public String getTitle1() {
		return title1;
	}
	public void setTitle1(String title1) {
		this.title1 = title1;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	
}
