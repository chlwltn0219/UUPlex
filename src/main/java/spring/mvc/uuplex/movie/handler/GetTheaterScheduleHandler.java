package spring.mvc.uuplex.movie.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ScheduleDAO;
import spring.mvc.uuplex.movie.dto.ScheduleDTO;

@Service
public class GetTheaterScheduleHandler implements MCommandHandler {

	@Autowired
	ScheduleDAO dao;
	

	@Override
	public String process(Model model) {
		List<ScheduleDTO> dtos = null;
		String viewPage = "/c-box/user/movie_detail";
		int theater_num = 0;
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		try {
			theater_num = Integer.parseInt(req.getParameter("theater_num"));
			dtos = dao.getSchedule();		
			model.addAttribute("dtos", dtos);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
