package spring.mvc.uuplex.movie.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ManagerDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Service
public class OrderByDateHandler implements MCommandHandler{

	@Autowired
	ManagerDAO dao;
	
	@Override
	public String process(Model model) {
		List<MovieInfoDTO> dtos = null;
		dtos = dao.getLatestMovie();	//최신개봉작 리스트
		
		model.addAttribute("dtos", dtos);
		
		return "c-box/user/orderByDate";
	}

}
