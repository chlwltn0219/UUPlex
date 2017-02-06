package spring.mvc.uuplex.movie.handler;

import java.util.List;

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
		dtos = dao.TheatersList();
		model.addAttribute("dtos", dtos);

		String[] row = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"};
<<<<<<< HEAD
=======
		
		int theatercount = dao.TheatersCount();
		
		model.addAttribute("theatercount",theatercount);
>>>>>>> origin/master
		model.addAttribute("row", row);
		model.addAttribute("contentPage", "manage/manage_theater.jsp");
		return viewPage;
	}

}
