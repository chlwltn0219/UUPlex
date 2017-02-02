package spring.mvc.uuplex.movie.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;

@Service
public class DeleteReviewHandler implements MCommandHandler{

	@Autowired
	MovieDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String,Object> map = model.asMap();
		
		HttpServletRequest req = (HttpServletRequest)map.get("req");
		
		int review_num = Integer.parseInt(req.getParameter("review_num"));
		
		int cnt = dao.deleteReview(review_num);	
		
		model.addAttribute("cnt",cnt);
		
		return "/c-box/user/review_delete";
	}

}
