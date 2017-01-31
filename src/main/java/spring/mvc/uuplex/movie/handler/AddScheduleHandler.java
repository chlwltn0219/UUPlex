package spring.mvc.uuplex.movie.handler;

import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ScheduleDAO;
import spring.mvc.uuplex.movie.dto.ScheduleDTO;

@Service
public class AddScheduleHandler implements MCommandHandler {

	@Autowired
	ScheduleDAO sdao;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();

		HttpServletRequest req = (HttpServletRequest) map.get("req");		

			ScheduleDTO dto = new ScheduleDTO();
			String title1 = req.getParameter("title1");
			int theater_num = Integer.parseInt(req.getParameter("theater_num"));
			int movie_num =  Integer.parseInt(req.getParameter("movie_num"));
			String schedule_Date = req.getParameter("schedule_Date");
			String schedule_Time = req.getParameter("schedule_Time");
			
			Timestamp showtime = Timestamp.valueOf(schedule_Date+" "+schedule_Time+":00");

			dto.setTitle1(title1);
			dto.setTheater_num(theater_num);
			dto.setMovie_num(movie_num);
			dto.setShowtime(showtime);
			
			int cnt = sdao.addSchedule(dto);

			model.addAttribute("cnt", cnt);

		return "c-box/manage/schedule_inputPro";
	}

}
