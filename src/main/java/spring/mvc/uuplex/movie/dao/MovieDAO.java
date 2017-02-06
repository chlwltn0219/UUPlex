package spring.mvc.uuplex.movie.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;

public interface MovieDAO {
	public int addMovieInfo(MovieInfoDTO dto); // 관리자 - 영화추가

	public List<MovieInfoDTO> moviesList(); // 영화리스트

	public int addReview(ReviewDTO dto); // 사용자 - 리뷰추가

	public MovieInfoDTO movieDetail(int mnum); // 영화상세페이지

	public int moviesCount(); // 영화개수

	public List<MovieInfoDTO> manageMoviesList(Map<String, Integer> rangeMap); // 관리자 - 영화리스트

	public List<ReviewDTO> reviewList(Map<String, Integer> rangeMap); // 사용자 - 리뷰리스트

	public int reviewCount(int mnum); // 리뷰 개수

	
	public int deleteReview(int review_num);	//사용자 - 리뷰삭제
	
	public List<MovieInfoDTO> getScreening();
	
	public int modifyMovie(MovieInfoDTO dto);	//관리자 - 영화정보 수정
	
	public int deleteMovie(int movie_num);		//관리자 - 영화 삭제
	
	public double getAvg(int movie_num);		//평균 별점 구하기
	
	public int addChucheon(int review_num);		//리뷰 추천수 올리기 
	
	public int getChucheon(int review_num);		//리뷰 추천수 가져오기
	
	public List<ReviewDTO> ratingOrder(Map<String, Integer> rangeMap);		//리뷰리스트  평점순으로 
	
	public List<MovieInfoDTO> getRanking();		//예매순위
	
	public int reserveCnt();					//전체 예매 수량
}
