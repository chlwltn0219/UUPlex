package spring.mvc.uuplex.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.TheaterDTO;

@Repository //저장소 역할
public class TheaterDAOImpl implements TheaterDAO{

	@Autowired
	private SqlSession sqlSession; //servlet-context.xml에 있는거 불러온다.
	
	//영화정보추가
	@Override
	public int addTheater(TheaterDTO dto) {
		int cnt = 0;
		TheaterDAO dao = this.sqlSession.getMapper(TheaterDAO.class);
		cnt = dao.addTheater(dto);
		
		return cnt;
	}

	@Override
	public List<TheaterDTO> TheatersList() {
		List<TheaterDTO> list = null;
		TheaterDAO dao = sqlSession.getMapper(TheaterDAO.class);
		list = dao.TheatersList();
		return list;
	}

	@Override
	public int TheatersCount() {
		int cnt = 0;
		TheaterDAO dao = sqlSession.getMapper(TheaterDAO.class);
		cnt = dao.TheatersCount();
		return cnt;
	}

	@Override
	public TheaterDTO getTheater(int theater_num) {
		TheaterDTO dto = null;
		TheaterDAO dao = sqlSession.getMapper(TheaterDAO.class);
		dto = dao.getTheater(theater_num);
		return dto;
	}

	@Override
	public int modifyTheater(TheaterDTO dto) {
		int cnt = 0;
		TheaterDAO dao = sqlSession.getMapper(TheaterDAO.class);
		cnt = dao.modifyTheater(dto);
		return cnt;
	}

}
