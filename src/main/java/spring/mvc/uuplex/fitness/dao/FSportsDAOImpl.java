package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.fitness.dto.FProgramDTO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;


@Repository
public class FSportsDAOImpl implements FSportsDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int sportsCount() {
		int cnt = 0;
		FSportsDAO dao = sqlSession.getMapper(FSportsDAO.class);
		cnt = dao.sportsCount();
		return cnt;
	}
	
	@Override
	public List<FSportsDTO> sportsList(Map<String, Integer> rangeMap) {
		List<FSportsDTO> list = null;
		FSportsDAO dao = sqlSession.getMapper(FSportsDAO.class);
		list = dao.sportsList(rangeMap);
		return list;
	}
	
	@Override
	public int addSports(FSportsDTO dto) {
		int rtn = 0;
		FSportsDAO dao = sqlSession.getMapper(FSportsDAO.class);
		rtn = dao.addSports(dto);
		return rtn;
	}
	
	@Override
	public FSportsDTO sportsDetail(int sid) {
		FSportsDTO dto = null;
		FSportsDAO dao = sqlSession.getMapper(FSportsDAO.class);
		dto = dao.sportsDetail(sid);
		return dto;
	}

	@Override
	public int modifySports(FSportsDTO dto) {
		int rtn = 0;
		FSportsDAO dao = sqlSession.getMapper(FSportsDAO.class);
		rtn = dao.modifySports(dto);
		return rtn;
	}
	
	@Override
	public List<FSportsDTO> sportsActivatedList() {
		List<FSportsDTO> list = null;
		FSportsDAO dao = sqlSession.getMapper(FSportsDAO.class);
		list = dao.sportsActivatedList();
		return list;
	}

	@Override
	public List<FSportsDTO> sInfo() {
		List<FSportsDTO> list = null;
		FSportsDAO dao = this.sqlSession.getMapper(FSportsDAO.class);
		
		list = dao.sInfo();
		return list;
	}
	
}
