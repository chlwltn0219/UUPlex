package spring.mvc.uuplex.movie.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;

@Repository 
public class MovieDAOImpl implements MovieDAO{

	@Autowired
	private SqlSession sqlSession; //servlet-context.xml占쏙옙 占쌍는곤옙 占쌀뤄옙占승댐옙.
	
	//占쏙옙화占쏙옙占쏙옙占쌩곤옙
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

	//占쏙옙占쏙옙占쌩곤옙
	@Override
	public int addReview(ReviewDTO dto) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.addReview(dto);
		
		return cnt;
	}

	// 사용자 - 리뷰 리스트 가져오기
	@Override
	public List<ReviewDTO> reviewList(Map<String, Integer> rangeMap) {
		List<ReviewDTO> list = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		list = dao.reviewList(rangeMap);
		
		return list;
	}

	//媛� ������ 由щ럭 媛���
	@Override
	public int reviewCount(int mnum) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.reviewCount(mnum);
		
		return cnt;
	}

	//由щ럭 ����
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

	//영화정보 수정
	@Override
	public int modifyMovie(MovieInfoDTO dto) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.modifyMovie(dto);
		
		return cnt;
	}

	//영화정보 삭제
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

}
