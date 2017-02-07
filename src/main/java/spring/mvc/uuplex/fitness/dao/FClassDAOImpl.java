package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.fitness.dto.FClassDTO;


@Repository
public class FClassDAOImpl implements FClassDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int classCount() {
		int cnt = 0;
		FClassDAO dao = sqlSession.getMapper(FClassDAO.class);
		cnt = dao.classCount();
		return cnt;
	}

	@Override
	public List<FClassDTO> classList(Map<String, Integer> rangeMap) {
		List<FClassDTO> dtos = null;
		FClassDAO dao = sqlSession.getMapper(FClassDAO.class);
		dtos = dao.classList(rangeMap);
		return dtos;
	}

	@Override
	public int addClass(FClassDTO dto) {
		int cnt = 0;
		FClassDAO dao = sqlSession.getMapper(FClassDAO.class);
		cnt = dao.addClass(dto);
		return cnt;
	}
	
	@Override
	public int addClassWeek(FClassDTO dto) {
		int cnt = 0;
		FClassDAO dao = sqlSession.getMapper(FClassDAO.class);
		cnt = dao.addClassWeek(dto);
		return cnt;
	}

	@Override
	public FClassDTO classDetail(int cid) {
		FClassDTO dto = null;
		FClassDAO dao = sqlSession.getMapper(FClassDAO.class);
		dto = dao.classDetail(cid);
		System.out.println(dto.getCrid());
		return dto;
	}

	@Override
	public int modifyClass(FClassDTO dto) {
		int cnt = 0;
		FClassDAO dao = sqlSession.getMapper(FClassDAO.class);
		cnt = dao.modifyClass(dto);
		return cnt;
	}

	@Override
	public List<FClassDTO> classActivatedList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int reservableCount(int pid) {
		int cnt = 0;
		FClassDAO dao = sqlSession.getMapper(FClassDAO.class);
		cnt = dao.reservableCount(pid);
		return cnt;
	}
	
	@Override
	public List<FClassDTO> reservableList(Map<String,Object> paramMap) {
		List<FClassDTO> dtos = null;
		FClassDAO dao = sqlSession.getMapper(FClassDAO.class);
		dtos = dao.reservableList(paramMap);
		return dtos;
	}
	
}
