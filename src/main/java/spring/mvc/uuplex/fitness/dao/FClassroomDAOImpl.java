package spring.mvc.uuplex.fitness.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.fitness.dto.FClassroomDTO;

@Repository
public class FClassroomDAOImpl implements FClassroomDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int classroomCount() {
		int cnt = 0;		
		FClassroomDAO dao = this.sqlSession.getMapper(FClassroomDAO.class);
		
		cnt = dao.classroomCount();
		
		return cnt;
	}

	@Override
	public List<FClassroomDTO> list(Map<String, Integer> rangeMap) {
		List<FClassroomDTO> list = null;
		FClassroomDAO dao = this.sqlSession.getMapper(FClassroomDAO.class);
		
		list = dao.list(rangeMap);
		
		return list;
	}

	@Override
	public int insertClass(FClassroomDTO dto) {
		int cnt = 0;
		FClassroomDAO dao = sqlSession.getMapper(FClassroomDAO.class);
		cnt = dao.insertClass(dto);
		return cnt;
	}

	@Override
	public FClassroomDTO classroomDetail(int crid) {
		FClassroomDTO dto = null;
		FClassroomDAO dao = sqlSession.getMapper(FClassroomDAO.class);
		dto = dao.classroomDetail(crid);
		return dto;
	}

	@Override
	public int modifyClassroom(FClassroomDTO dto) {
		int cnt = 0;
		FClassroomDAO dao = sqlSession.getMapper(FClassroomDAO.class);
		cnt = dao.modifyClassroom(dto);
		return cnt;
	}

}
