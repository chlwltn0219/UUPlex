package spring.mvc.uuplex.movie.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.uuplex.movie.dto.ScheduleDTO;

@Repository //����� ����
public class ScheduleDAOImpl implements ScheduleDAO{

	@Autowired
	private SqlSession sqlSession; //servlet-context.xml�� �ִ°� �ҷ��´�.
	
	//��ȭ�����߰�
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

	@Override
	public int deleteSchedule(int schedule_num) {
		int cnt = 0;
		ScheduleDAO dao = sqlSession.getMapper(ScheduleDAO.class);
		cnt = dao.deleteSchedule(schedule_num);
		return cnt;
		
		
	}

	@Override
	public List<ScheduleDTO> schedules(Map<String, String> map) {
		List<ScheduleDTO> list = null;
		ScheduleDAO dao = sqlSession.getMapper(ScheduleDAO.class);
		list = dao.schedules(map);
		return list;
	}

	@Override
	public List<ScheduleDTO> dateschedules(Map<String, String> map) {
		List<ScheduleDTO> list = null;
		ScheduleDAO dao = sqlSession.getMapper(ScheduleDAO.class);
		list = dao.dateschedules(map);
		return list;
	}

	@Override
	public ScheduleDTO getScheduleinfo(int schedule_num) {
		ScheduleDTO scheduleinfo = null;
		ScheduleDAO dao = sqlSession.getMapper(ScheduleDAO.class);
		scheduleinfo = dao.getScheduleinfo(schedule_num);
		return scheduleinfo;
	}

}
