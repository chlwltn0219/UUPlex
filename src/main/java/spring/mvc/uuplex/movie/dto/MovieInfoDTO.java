package spring.mvc.uuplex.movie.dto;

import java.sql.Date;

public class MovieInfoDTO {

	
			int movie_num; /* */
			String title1; /* 한글 제목 */
			String title2; /* 영어 제목, 원제 */
			String director; /* 감독 */
			String starring; /* 주연  */
			String genre; /* 장르 */
			String MPAARating; /* 관람등급 */
			int productionYear; /* 제작 연도  */
			int runTime; /* 상영시간(분) */
			Date releaseDate; /* 개봉일  */
			String poster; /* ������ */
			String movie_img1; /* ��ƿ��1 */
			String movie_img2; /* ��ƿ��2 */
			String trailer; /* ������ũ */
			String status; /* 상영여부  */
			String synopsis; /* 줄거리  */
			String country; /* 국가  */
			
			
			public String getSynopsis() {
				return synopsis;
			}
			public void setSynopsis(String synopsis) {
				this.synopsis = synopsis;
			}
			public int getMovie_num() {
				return movie_num;
			}
			public String getTitle1() {
				return title1;
			}
			public String getTitle2() {
				return title2;
			}
			public String getDirector() {
				return director;
			}
			public String getStarring() {
				return starring;
			}
			public String getGenre() {
				return genre;
			}
			public String getMPAARating() {
				return MPAARating;
			}
			public int getProductionYear() {
				return productionYear;
			}
			public int getRunTime() {
				return runTime;
			}
			public Date getReleaseDate() {
				return releaseDate;
			}
			public String getPoster() {
				return poster;
			}
			public String getMovie_img1() {
				return movie_img1;
			}
			public String getMovie_img2() {
				return movie_img2;
			}
			public String getTrailer() {
				return trailer;
			}
			public String getStatus() {
				return status;
			}
			public void setMovie_num(int movie_num) {
				this.movie_num = movie_num;
			}
			public void setTitle1(String title1) {
				this.title1 = title1;
			}
			public void setTitle2(String title2) {
				this.title2 = title2;
			}
			public void setDirector(String director) {
				this.director = director;
			}
			public void setStarring(String starring) {
				this.starring = starring;
			}
			public void setGenre(String genre) {
				this.genre = genre;
			}
			public void setMPAARating(String mPAARating) {
				MPAARating = mPAARating;
			}
			public void setProductionYear(int productionYear) {
				this.productionYear = productionYear;
			}
			public void setRunTime(int runTime) {
				this.runTime = runTime;
			}
			public void setReleaseDate(Date releaseDate) {
				this.releaseDate = releaseDate;
			}
			public void setPoster(String poster) {
				this.poster = poster;
			}
			public void setMovie_img1(String movie_img1) {
				this.movie_img1 = movie_img1;
			}
			public void setMovie_img2(String movie_img2) {
				this.movie_img2 = movie_img2;
			}
			public void setTrailer(String trailer) {
				this.trailer = trailer;
			}
			public void setStatus(String status) {
				this.status = status;
			}
			public String getCountry() {
				return country;
			}
			public void setCountry(String country) {
				this.country = country;
			}
}
