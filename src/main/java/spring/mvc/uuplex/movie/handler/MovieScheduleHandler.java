package spring.mvc.uuplex.movie.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dao.ScheduleDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ScheduleDTO;

@Service
public class MovieScheduleHandler implements MCommandHandler {
	
	@Autowired
	MovieDAO mdao;
	
	@Autowired
	ScheduleDAO sdao;

	@Override
	public String process(Model model) {
		
		List<MovieInfoDTO> mdtos = null;
		List<ScheduleDTO> sdtos = null;
		
		mdtos = mdao.getScreening();
		sdtos = sdao.getSchedule();	
		
		model.addAttribute("sdtos", sdtos);
		model.addAttribute("mdtos", mdtos);
		
		
		return "/c-box/manage/schedule_input";
	}

}
