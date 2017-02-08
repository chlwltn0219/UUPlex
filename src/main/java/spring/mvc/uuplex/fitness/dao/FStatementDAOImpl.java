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
	public int refund(FStatementDTO dto) {
		int cnt = 0;
		FStatementDAO dao = sqlSession.getMapper(FStatementDAO.class);
		cnt = dao.refund(dto);
		return cnt;
	}

	@Override
	public int statementCount() {
		int cnt = 0;
		FStatementDAO dao = sqlSession.getMapper(FStatementDAO.class);
		cnt = dao.statementCount();
		return 0;
	}

	@Override
	public List<FStatementDTO> statementList(Map<String, Integer> rangeMap) {
		// TODO Auto-generated method stub
		return null;
	}

}
