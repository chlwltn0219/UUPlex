package spring.mvc.uuplex.movie.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ScheduleDAO;
import spring.mvc.uuplex.movie.dao.TheaterDAO;
import spring.mvc.uuplex.movie.dto.ScheduleDTO;
import spring.mvc.uuplex.movie.dto.TheaterDTO;
@Service
public class TicketHandler implements MCommandHandler {

	@Autowired
	ScheduleDAO sdao;
	
	@Autowired
	TheaterDAO tdao;
	
	@Override
	public String process(Model model) {

		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		TheaterDTO theater = null;
		int schedule_num = Integer.parseInt(req.getParameter("schedule_num"));
		
		theater = tdao.Theater(schedule_num);
		model.addAttribute("theater", theater);

		String[] row = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"};
		
		model.addAttribute("row", row);
		ScheduleDTO scheduleInfo = sdao.getScheduleinfo(schedule_num);
		
		model.addAttribute("scheduleInfo", scheduleInfo);
		
		return "c-box/Movie_main";
	}

}
