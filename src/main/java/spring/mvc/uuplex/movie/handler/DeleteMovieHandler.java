package spring.mvc.uuplex.movie.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;

@Service
public class DeleteMovieHandler implements MCommandHandler{

	@Autowired
	MovieDAO dao;
	
	@Override
	public String process(Model model) {
		Map<String,Object> map = model.asMap();
		
		HttpServletRequest req = (HttpServletRequest)map.get("req");
		
		int movie_num = Integer.parseInt(req.getParameter("movie_num"));
		
		int cnt = dao.deleteMovie(movie_num);	
		
		model.addAttribute("cnt",cnt);
		
		return "/c-box/manage/movie_delete";
	}
}
