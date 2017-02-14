package spring.mvc.uuplex.movie.dao;

import java.util.List;
import java.util.Map;

import spring.mvc.uuplex.movie.dto.ScheduleDTO;

public interface ScheduleDAO {

	public int addSchedule(ScheduleDTO dto); 
	public List<ScheduleDTO> SchedulesList();
	public int SchedulesCount();
	public List<ScheduleDTO> getSchedule();
	public int deleteSchedule(int schedule_num);
	public List<ScheduleDTO> schedules(Map<String, String> map);
	public List<ScheduleDTO> dateschedules(Map<String, String> map);
	public ScheduleDTO getScheduleinfo(int schedule_num);
}
