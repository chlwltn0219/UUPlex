package spring.mvc.uuplex.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.ScheduleDTO;

@Repository //저장소 역할
public class ScheduleDAOImpl implements ScheduleDAO{

	@Autowired
	private SqlSession sqlSession; //servlet-context.xml에 있는거 불러온다.
	
	//영화정보추가
	@Override
	public int addSchedule(ScheduleDTO dto) {
		int cnt = 0;
		ScheduleDAO dao = this.sqlSession.getMapper(ScheduleDAO.class);
		cnt = dao.addSchedule(dto);
		
		return cnt;
	}

	@Override
	public List<ScheduleDTO> SchedulesList() {
		List<ScheduleDTO> list = null;
		ScheduleDAO dao = sqlSession.getMapper(ScheduleDAO.class);
		list = dao.SchedulesList();
		return list;
	}

	@Override
	public int SchedulesCount() {
		int cnt = 0;
		ScheduleDAO dao = sqlSession.getMapper(ScheduleDAO.class);
		cnt = dao.SchedulesCount();
		return cnt;
	}

	@Override
	public List<ScheduleDTO> getSchedule() {
		List<ScheduleDTO> list = null;
		ScheduleDAO dao = sqlSession.getMapper(ScheduleDAO.class);
		list = dao.getSchedule();
		return list;
	}

}
