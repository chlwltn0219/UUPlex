package spring.mvc.uuplex.movie.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;

@Repository //����� ����
public class MovieDAOImpl implements MovieDAO{

	@Autowired
	private SqlSession sqlSession; //servlet-context.xml�� �ִ°� �ҷ��´�.
	
	//��ȭ�����߰�
	@Override
	public int addMovieInfo(MovieInfoDTO dto) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.addMovieInfo(dto);
		
		return cnt;
	}

	@Override
	public MovieInfoDTO getMovieInfo(int num) {
		MovieInfoDTO dto = null;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		dto = dao.getMovieInfo(num);
		return dto;
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

<<<<<<< HEAD
	@Override
	public int moviesCount() {
		int cnt = 0;
		MovieDAO dao = sqlSession.getMapper(MovieDAO.class);
		cnt = dao.moviesCount();
		return cnt;
	}

	

=======
	//�����߰�
	@Override
	public int addReview(ReviewDTO dto) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.addReview(dto);
		
		return cnt;
	}

>>>>>>> 7a5850533ded6377adfd19ff75739d07e90a043a

}
