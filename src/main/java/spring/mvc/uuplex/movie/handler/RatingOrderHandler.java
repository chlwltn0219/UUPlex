package spring.mvc.uuplex.movie.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;
import spring.mvc.uuplex.util.Pager;

@Service
public class RatingOrderHandler implements MCommandHandler{

	@Autowired
	MovieDAO dao;
	
	Pager pager = Pager.getInstance();
	private static final Logger logger = LoggerFactory.getLogger(MovieDetailHandler.class);

	@Override
	public String process(Model model) {
		
		int nowPage = 1;
		int total = 0;
		List<ReviewDTO> dtos = null; //리뷰리스트불러오기
		
		Map<String,Object> map = model.asMap();
		
		HttpServletRequest req = (HttpServletRequest)map.get("req");
		
		int movie_num = Integer.parseInt(req.getParameter("movie_num"));
		
		//리뷰리스트 불러오기&리뷰리스트  페이징하기
		if (req.getParameter("page") == null) {
			nowPage = 1;
		} else {
			
			try {
				nowPage = Integer.parseInt(req.getParameter("page"));
			} catch (NumberFormatException e) {
				e.printStackTrace();
				nowPage = 1;
			}
		}
		//
		total = dao.reviewCount(movie_num);

		logger.info("total : " + total);

		
		// 
		pager.setDisplayContentCnt(3);
		// 
		pager.setDisplayPageCnt(5);
		// 
		pager.calcPage(total, nowPage);

		if (total > 0) {
			Map<String, Integer> rangeMap = new HashMap<String, Integer>();
			rangeMap.put("start", pager.getStartContent());
			rangeMap.put("end", pager.getEndContent());
			rangeMap.put("movie_num", Integer.parseInt(req.getParameter("movie_num")));

			dtos = dao.ratingOrder(rangeMap);

			
			model.addAttribute("dtos", dtos); //리뷰 리스트 평점 순으로!!
			
			
			model.addAttribute("contentCnt", pager.getDisplayContentCnt());

			model.addAttribute("nowPage", pager.getNowPage());
			model.addAttribute("startPage", pager.getStartPage());
			model.addAttribute("endPage", pager.getEndPage());

			model.addAttribute("prev", pager.getPrev());
			model.addAttribute("next", pager.getNext());
			
			model.addAttribute("total",total);
		}
		
			
		
		
		return "/c-box/user/review_list";
	}

}
