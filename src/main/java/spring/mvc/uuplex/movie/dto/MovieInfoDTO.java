package spring.mvc.uuplex.movie.dto;

import java.sql.Date;

public class MovieInfoDTO {

	
			int movie_num; /* ��ȭ��ȣ */
			String title1; /* ��ȭ����1 */
			String title2; /* ��ȭ����2 */
			String director; /* ���� */
			String starring; /* �ֿ���� */
			String genre; /* �帣 */
			String MPAARating; /* ������� */
			int productionYear; /* ���۳⵵ */
			int runTime; /* ����Ÿ��(��) */
			Date releaseDate; /* ������ */
			String poster; /* ������ */
			String movie_img1; /* ��ƿ��1 */
			String movie_img2; /* ��ƿ��2 */
			String trailer; /* ������ũ */
			String status; /* ����󿵿��� */
			String synopsis; /* �ٰŸ� */
			
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
		
}
