package spring.mvc.uuplex.movie.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;

@Service
public class AddReviewHandler implements MCommandHandler{

	@Autowired
	MovieDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String,Object> map = model.asMap();
		
		HttpServletRequest req = (HttpServletRequest)map.get("req");
		
		ReviewDTO dto = new ReviewDTO();
		
		
		/*String memId = (String) req.getSession().getAttribute("memId");*/
		String memId = "memId";
		dto.setMemId(memId);
		
		dto.setMovie_num(Integer.parseInt(req.getParameter("movie_num")));
		
		dto.setRating(Integer.parseInt(req.getParameter("rating")));
		
		String review_content = req.getParameter("review_content");
		dto.setReview_content(review_content);
		
		
		
		int cnt = dao.addReview(dto);	
		
		model.addAttribute("cnt",cnt);
		
		
		return "c-box/addReviewPro";
	}

}
