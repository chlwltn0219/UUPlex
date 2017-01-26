package spring.mvc.uuplex.movie.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Service
public class MovieDetailHandler implements MCommandHandler {
	
	@Autowired
	MovieDAO dao;
	

	@Override
	public String process(Model model) {
		MovieInfoDTO dto = null;
		String viewPage = "/c-box/user/movie_detail";
		int mnum = 0;
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		try {
			mnum = Integer.parseInt(req.getParameter("mnum"));
			dto = dao.movieDetail(mnum);		
			model.addAttribute("dto", dto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
