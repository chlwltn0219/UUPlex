package spring.mvc.uuplex.fitness.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Repository
public class FTeacherDAOImpl implements FTeacherDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int teacherCount() {
		int cnt = 0;
		FTeacherDAO dao = this.sqlSession.getMapper(FTeacherDAO.class);
		
		cnt = dao.teacherCount();
		return cnt;
	}

	@Override
	public List<FTeacherDTO> list(Map<String, Integer> rangeMap) {
		
		//작은 바구니
		List<FTeacherDTO> list = null;		
		FTeacherDAO dao = this.sqlSession.getMapper(FTeacherDAO.class);
		list = dao.list(rangeMap);
				
		return list;
	}

	@Override
	public int tInsert(FTeacherDTO dto) {
		
		int cnt = 0;
		FTeacherDAO dao = this.sqlSession.getMapper(FTeacherDAO.class);
		
		cnt = dao.tInsert(dto);
			
		
		return cnt;
	}

	@Override
	public FTeacherDTO tdetail(int tid) {
		FTeacherDTO dto = null;
		FTeacherDAO dao = this.sqlSession.getMapper(FTeacherDAO.class);
		
		dto = dao.tdetail(tid);
		
		return dto;
	}

}
