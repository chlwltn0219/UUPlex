package spring.mvc.uuplex.movie.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Service
public class ModifyMovieHandler implements MCommandHandler{

	@Autowired
	MovieDAO dao;
	
	@Override
	public String process(Model model) {
		MovieInfoDTO dto = null;
		
		String viewPage = "/c-box/manage/movie_modify";
		int movie_num = 0;
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		try {
			movie_num = Integer.parseInt(req.getParameter("movie_num"));
			System.out.println("movie_num : "+movie_num);
			dto = dao.movieDetail(movie_num);		
			model.addAttribute("dto", dto);
			
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
