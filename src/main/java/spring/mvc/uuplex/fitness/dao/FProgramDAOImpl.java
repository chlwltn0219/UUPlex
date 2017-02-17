package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.fitness.dto.FProgramDTO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;


@Repository
public class FProgramDAOImpl implements FProgramDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int programCount() {
		int cnt = 0;
		FProgramDAO dao = sqlSession.getMapper(FProgramDAO.class);
		cnt = dao.programCount();
		return cnt;
	}

	@Override
	public List<FProgramDTO> programList(Map<String, Integer> rangeMap) {
		List<FProgramDTO> list = null;
		FProgramDAO dao = sqlSession.getMapper(FProgramDAO.class);
		list = dao.programList(rangeMap);
		return list;
	}

	@Override
	public int addProgram(FProgramDTO dto) {
		int cnt = 0;
		FProgramDAO dao = sqlSession.getMapper(FProgramDAO.class);
		cnt = dao.addProgram(dto);
		return cnt;
	}

	@Override
	public FProgramDTO programDetail(int pid) {
		FProgramDTO dto = null;
		FProgramDAO dao = sqlSession.getMapper(FProgramDAO.class);
		dto = dao.programDetail(pid);
		return dto;
	}

	@Override
	public int modifyProgram(FProgramDTO dto) {
		int cnt = 0;
		FProgramDAO dao = sqlSession.getMapper(FProgramDAO.class);
		cnt = dao.modifyProgram(dto);
		return cnt;
	}
	
	@Override
	public List<FProgramDTO> programActivatedList() {
		List<FProgramDTO> list = null;
		FProgramDAO dao = sqlSession.getMapper(FProgramDAO.class);
		list = dao.programActivatedList();
		return list;
	}

	@Override
	public List<FProgramDTO> reservableList(String sid) {
		List<FProgramDTO> list = null;
		FProgramDAO dao = sqlSession.getMapper(FProgramDAO.class);
		list = dao.reservableList(sid);
		return list;
	}

	@Override
	public List<FProgramDTO> pInfo() {
		List<FProgramDTO> list = null;
		FProgramDAO dao = this.sqlSession.getMapper(FProgramDAO.class);
		
		list = dao.pInfo();
		return list;
	}
	
	@Override
	public int deactivateProgram(int tid) {
		int cnt = 0;
		FProgramDAO dao = sqlSession.getMapper(FProgramDAO.class);
		cnt = dao.deactivateProgram(tid);
		return cnt;
	}
	
}
