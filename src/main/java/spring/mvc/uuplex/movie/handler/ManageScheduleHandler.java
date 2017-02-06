package spring.mvc.uuplex.movie.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ScheduleDAO;
<<<<<<< HEAD
=======
import spring.mvc.uuplex.movie.dao.TheaterDAO;
>>>>>>> origin/master
import spring.mvc.uuplex.movie.dto.ScheduleDTO;

@Service
public class ManageScheduleHandler implements MCommandHandler {

	@Autowired
	ScheduleDAO dao;
	
<<<<<<< HEAD
=======
	@Autowired
	TheaterDAO tdao;
	
>>>>>>> origin/master

	@Override
	public String process(Model model) {

		List<ScheduleDTO> dtos = null;
		
<<<<<<< HEAD
=======
		int theatercount = tdao.TheatersCount();
		model.addAttribute("theatercount",theatercount);

		
>>>>>>> origin/master
		String viewPage = "/c-box/Movie_main";
		//HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");

		int total = dao.SchedulesCount();
		
		if (total > 0) {
			dtos = dao.getSchedule();
			
			model.addAttribute("dtos", dtos);
			
		}

		model.addAttribute("contentPage", "manage/manage_schedule.jsp");

		return viewPage;
	}

}
