package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.fitness.dto.FStatementDTO;

@Repository
public class FStatementDAOImpl implements FStatementDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int reserveInput(FStatementDTO dto) {
		int cnt = 0;
		FStatementDAO dao = this.sqlSession.getMapper(FStatementDAO.class);
		cnt = dao.reserveInput(dto);
		return cnt;
	}
	
	@Override
	public int refundPro(FStatementDTO dto) {
		int cnt = 0;
		FStatementDAO dao = sqlSession.getMapper(FStatementDAO.class);
		cnt = dao.refundPro(dto);
		return cnt;
	}

	@Override
	public int statementCount() {
		int cnt = 0;
		FStatementDAO dao = sqlSession.getMapper(FStatementDAO.class);
		cnt = dao.statementCount();
		return cnt;
	}

	@Override
	public List<FStatementDTO> statementList(Map<String, Integer> rangeMap) {
		List<FStatementDTO> list = null;
		FStatementDAO dao = sqlSession.getMapper(FStatementDAO.class);
		list = dao.statementList(rangeMap);
		return list;
	}
	
	@Override
	public int userStatementCount(String memid) {
		int cnt = 0;
		FStatementDAO dao = sqlSession.getMapper(FStatementDAO.class);
		cnt = dao.userStatementCount(memid);
		return cnt;
	}

	@Override
	public List<FStatementDTO> userStatementList(Map<String, Object> rangeMap) {
		List<FStatementDTO> list = null;
		FStatementDAO dao = sqlSession.getMapper(FStatementDAO.class);
		list = dao.userStatementList(rangeMap);
		return list;
	}
	
	@Override
	public FStatementDTO refundForm(Map<String, Object> info) {		
		FStatementDTO dto = null;
		FStatementDAO dao = sqlSession.getMapper(FStatementDAO.class);
		dto = dao.refundForm(info);
		return dto;
	}

}
