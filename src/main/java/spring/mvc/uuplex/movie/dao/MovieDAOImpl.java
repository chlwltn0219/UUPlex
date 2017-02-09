package spring.mvc.uuplex.movie.dao;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;
import spring.mvc.uuplex.movie.dto.SalesDTO;
import spring.mvc.uuplex.movie.dto.ScreenQuotaDTO;

@Repository 
public class MovieDAOImpl implements MovieDAO{

	@Autowired
	private SqlSession sqlSession; //servlet-context.xml�뜝�룞�삕 �뜝�뙇�뒗怨ㅼ삕 �뜝��琉꾩삕�뜝�듅�뙋�삕.
	
	@Override
	public int addMovieInfo(MovieInfoDTO dto) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.addMovieInfo(dto);
		
		return cnt;
	}

	@Override
	public List<MovieInfoDTO> moviesList() {
		List<MovieInfoDTO> list = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		list = dao.moviesList();
		return list;
	}
	
	@Override
	public List<MovieInfoDTO> manageMoviesList(Map<String, Integer> rangeMap) {
		List<MovieInfoDTO> list = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		list = dao.manageMoviesList(rangeMap);
		return list;
	}
	
	@Override
	public MovieInfoDTO movieDetail(int mnum) {
		MovieInfoDTO dto = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		dto = dao.movieDetail(mnum);
		return dto;
	}

	@Override
	public int moviesCount() {
		int cnt = 0;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		cnt = dao.moviesCount();
		return cnt;
	}

	//�뜝�룞�삕�뜝�룞�삕�뜝�뙥怨ㅼ삕
	@Override
	public int addReview(ReviewDTO dto) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.addReview(dto);
		
		return cnt;
	}

	// �궗�슜�옄 - 由щ럭 由ъ뒪�듃 媛��졇�삤湲�
	@Override
	public List<ReviewDTO> reviewList(Map<String, Integer> rangeMap) {
		List<ReviewDTO> list = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		list = dao.reviewList(rangeMap);
		
		return list;
	}

	//揶쏉옙 占쏙옙占쏙옙占쏙옙 �뵳�됰윮 揶쏉옙占쏙옙
	@Override
	public int reviewCount(int mnum) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.reviewCount(mnum);
		
		return cnt;
	}

	//�뵳�됰윮 占쏙옙占쏙옙
	@Override
	public int deleteReview(int review_num) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.deleteReview(review_num);
		return cnt;
	}

	@Override
	public List<MovieInfoDTO> getScreening() {
		List<MovieInfoDTO> list = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		list = dao.getScreening();
		return list;
	}

	//�쁺�솕�젙蹂� �닔�젙
	@Override
	public int modifyMovie(MovieInfoDTO dto) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.modifyMovie(dto);
		
		return cnt;
	}

	//�쁺�솕�젙蹂� �궘�젣
	@Override
	public int deleteMovie(int movie_num) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.deleteMovie(movie_num);
		
		return cnt;
	}

	@Override
	public double getAvg(int movie_num) {
		double avg = 0;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		avg = dao.getAvg(movie_num);
		return avg;
	}

	@Override
	public int addChucheon(int review_num) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.addChucheon(review_num);
		
		return cnt;
	}

	@Override
	public int getChucheon(int review_num) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.getChucheon(review_num);
		
		return cnt;
	}

	@Override
	public List<ReviewDTO> ratingOrder(Map<String, Integer> rangeMap) {
		List<ReviewDTO> list = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		list = dao.ratingOrder(rangeMap);
		
		return list;
	}


	@Override
	public List<MovieInfoDTO> getRanking() {
		List<MovieInfoDTO> list = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		list = dao.getRanking();
		return list;
	}

	@Override
	public int reserveCnt() {
		int cnt = 0;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		cnt = dao.reserveCnt();
		return cnt;
	}

	@Override
	public List<SalesDTO> getSales(Map<String, Timestamp> rangeMap) {
		List<SalesDTO> list = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		list = dao.getSales(rangeMap);
		return list;
	}

	@Override
	public List<ScreenQuotaDTO> getScreenQuota(String year) {
		List<ScreenQuotaDTO> list = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		list = dao.getScreenQuota(year);
		
		return list;
	}

	
	

}
