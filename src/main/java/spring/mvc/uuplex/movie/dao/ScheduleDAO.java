package spring.mvc.uuplex.movie.dao;

import java.util.List;

import spring.mvc.uuplex.movie.dto.ScheduleDTO;

public interface ScheduleDAO {

	public int addSchedule(ScheduleDTO dto); 
	public List<ScheduleDTO> SchedulesList();
	public int SchedulesCount();
	public List<ScheduleDTO> getSchedule();
	public int deleteSchedule(int schedule_num);
}
