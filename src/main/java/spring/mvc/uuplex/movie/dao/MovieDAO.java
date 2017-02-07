package spring.mvc.uuplex.movie.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;

public interface MovieDAO {
	public int addMovieInfo(MovieInfoDTO dto); // 愿�由ъ옄 - �쁺�솕異붽�

	public List<MovieInfoDTO> moviesList(); // �쁺�솕由ъ뒪�듃

	public int addReview(ReviewDTO dto); // �궗�슜�옄 - 由щ럭異붽�

	public MovieInfoDTO movieDetail(int mnum); // �쁺�솕�긽�꽭�럹�씠吏�

	public int moviesCount(); // �쁺�솕媛쒖닔

	public List<MovieInfoDTO> manageMoviesList(Map<String, Integer> rangeMap); // 愿�由ъ옄 - �쁺�솕由ъ뒪�듃

	public List<ReviewDTO> reviewList(Map<String, Integer> rangeMap); // �궗�슜�옄 - 由щ럭由ъ뒪�듃

	public int reviewCount(int mnum); // 由щ럭 媛쒖닔

	
	public int deleteReview(int review_num);	//�궗�슜�옄 - 由щ럭�궘�젣
	
	public List<MovieInfoDTO> getScreening();
	
	public int modifyMovie(MovieInfoDTO dto);	//愿�由ъ옄 - �쁺�솕�젙蹂� �닔�젙
	
	public int deleteMovie(int movie_num);		//愿�由ъ옄 - �쁺�솕 �궘�젣
	
	public double getAvg(int movie_num);		//�룊洹� 蹂꾩젏 援ы븯湲�
	
	public int addChucheon(int review_num);		//由щ럭 異붿쿇�닔 �삱由ш린 
	
	public int getChucheon(int review_num);		//由щ럭 異붿쿇�닔 媛��졇�삤湲�
	
	public List<ReviewDTO> ratingOrder(Map<String, Integer> rangeMap);		//由щ럭由ъ뒪�듃  �룊�젏�닚�쑝濡� 
	
	public List<MovieInfoDTO> getRanking();		//�삁留ㅼ닚�쐞
	
	public int reserveCnt();					//�쟾泥� �삁留� �닔�웾
}
