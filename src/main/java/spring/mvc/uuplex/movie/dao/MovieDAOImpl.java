package spring.mvc.uuplex.movie.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Repository //저장소 역할
public class MovieDAOImpl implements MovieDAO{

	@Autowired 
	private SqlSession sqlSession; //servlet-context.xml에 있는거 불러온다.
	
	//영화정보추가
	@Override
	public int addMovieInfo(MovieInfoDTO dto) {
		int cnt = 0;
		MovieDAO dao = this.sqlSession.getMapper(MovieDAO.class);
		cnt = dao.addMovieInfo(dto);
		
		return cnt;
	}

}
