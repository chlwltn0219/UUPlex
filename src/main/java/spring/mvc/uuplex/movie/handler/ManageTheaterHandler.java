package spring.mvc.uuplex.movie.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.TheaterDAO;
import spring.mvc.uuplex.movie.dto.TheaterDTO;


@Service
public class ManageTheaterHandler implements MCommandHandler {
		@Autowired
		TheaterDAO dao;

		@Override
		public String process(Model model) {
			
			List<TheaterDTO> dtos = null;
			String viewPage = "/c-box/Movie_main";
			
			HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
			
			int total = dao.TheatersCount();
			
			if (total > 0) {
				dtos = dao.TheatersList();
				model.addAttribute("dtos", dtos);
			}
			
			model.addAttribute("contentPage", "manage/manage_theater.jsp");
			return viewPage;
	}

}
