package spring.mvc.uuplex.movie.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.TheaterDAO;
import spring.mvc.uuplex.movie.dto.TheaterDTO;

@Service
public class GetTheaterHandler implements MCommandHandler {

	@Autowired
	TheaterDAO dao;
	
	@Override
	public String process(Model model) {
		TheaterDTO dto = null;
		String viewPage ="/c-box/manage/theater_input";
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		int theater_num = 0;
		theater_num = Integer.parseInt(req.getParameter("theater_num"));
		dto = dao.getTheater(theater_num);
		String[] seat = dto.getSeat_arrange().split("");
		String[] row = {"A","B","C","D","E","F","G","H","I","J","K","L"};
		model.addAttribute("seat", seat);
		model.addAttribute("row", row);
		model.addAttribute("dto", dto);
		
		return viewPage;
	}

}
