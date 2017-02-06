package spring.mvc.uuplex.movie.handler;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Service
public class GetRankingHandler implements MCommandHandler{

	@Autowired
	MovieDAO dao;
	
	@Override
	public String process(Model model){
		
		List<MovieInfoDTO> dtos = null;
		dtos = dao.getRanking();
		
		int reserveCnt = 0;
		reserveCnt = dao.reserveCnt();
		
		model.addAttribute("dtos", dtos);
		model.addAttribute("reserveCnt",reserveCnt);
		
		return "c-box/Movie_main";
	}

}
