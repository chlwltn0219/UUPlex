package spring.mvc.uuplex.fitness.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import spring.mvc.uuplex.fitness.dto.FSportsDTO;

public class FSportsDAOImpl implements FSportsDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int sportsCount() {
		int cnt = 0;
		cnt = sqlSession.selectOne("spring.mvc.uuplex.fitness.dao.FSportDAO.sportsCount");
		return cnt;
	}
	
	@Override
	public List<FSportsDTO> sportsList(int start, int end) {
		List<FSportsDTO> list = null; 
		list = sqlSession.selectList("spring.mvc.uuplex.fitness.dao.FSportDAO.sportsList");
		return list;
	}

}
