package spring.mvc.uuplex.movie.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Service
public class MovieListHandler implements MCommandHandler {

	@Autowired
	MovieDAO dao;
	
	@Override
	public String process(Model model) {

		List<MovieInfoDTO> dtos = null;
		//String viewPage = "c-box/movie_list";
		//HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		dtos = dao.moviesList();
		model.addAttribute("dtos", dtos);
		
		return "c-box/Movie_main";
	}

}
