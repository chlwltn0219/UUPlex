package spring.mvc.uuplex.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.TheaterDTO;

@Repository //����� ����
public class TheaterDAOImpl implements TheaterDAO{

	@Autowired
	private SqlSession sqlSession; //servlet-context.xml�� �ִ°� �ҷ��´�.
	
	//��ȭ�����߰�
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
	public TheaterDTO TheaterDetail(int THEATER_NUM) {
		TheaterDTO dto = null;
		TheaterDAO dao = sqlSession.getMapper(TheaterDAO.class);
		dto = dao.TheaterDetail(THEATER_NUM);
		return dto;
	}

	@Override
	public int TheatersCount() {
		int cnt = 0;
		TheaterDAO dao = sqlSession.getMapper(TheaterDAO.class);
		cnt = dao.TheatersCount();
		return cnt;
	}

}
