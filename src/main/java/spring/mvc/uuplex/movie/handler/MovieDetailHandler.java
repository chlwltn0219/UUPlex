package spring.mvc.uuplex.movie.handler;

import java.text.DecimalFormat;
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
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.movie.dto.ReviewDTO;
import spring.mvc.uuplex.util.Pager;

@Service
public class MovieDetailHandler implements MCommandHandler {
	
	@Autowired
	MovieDAO dao;
	
	Pager pager = Pager.getInstance();
	private static final Logger logger = LoggerFactory.getLogger(MovieDetailHandler.class);

	
	@Override
	public String process(Model model) {
		
		int nowPage = 1;
		int total = 0;
		MovieInfoDTO dto = null;
		List<ReviewDTO> dtos = null; //리뷰리스트불러오기
		int mnum = 0;
		
		String viewPage = "/c-box/user/movie_detail";
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		//영화상세정보
		try {
			mnum = Integer.parseInt(req.getParameter("mnum"));
			dto = dao.movieDetail(mnum);		
			model.addAttribute("dto", dto);
			
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		
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
		total = dao.reviewCount(mnum);

		logger.info("total : " + total);

		
		// 
		pager.setDisplayContentCnt(3);
		// 
		pager.setDisplayPageCnt(3);
		// 
		pager.calcPage(total, nowPage);

		if (total > 0) {
			Map<String, Integer> rangeMap = new HashMap<String, Integer>();
			rangeMap.put("start", pager.getStartContent());
			rangeMap.put("end", pager.getEndContent());
			rangeMap.put("mnum", Integer.parseInt(req.getParameter("mnum")));

			dtos = dao.reviewList(rangeMap);

			
			model.addAttribute("dtos", dtos);
			
			
			model.addAttribute("contentCnt", pager.getDisplayContentCnt());

			model.addAttribute("nowPage", pager.getNowPage());
			model.addAttribute("startPage", pager.getStartPage());
			model.addAttribute("endPage", pager.getEndPage());

			model.addAttribute("prev", pager.getPrev());
			model.addAttribute("next", pager.getNext());
			
			model.addAttribute("total",total);
		}
		
		//평균 별점 구하기
		
		double avg = 0;
		
		if(total == 0){
			avg = 0;
			model.addAttribute("avg",avg);
		}else{
			avg = dao.getAvg(mnum);
			
			String pattern = "#.#";
			DecimalFormat dformat = new DecimalFormat(pattern);
			
			String avg1 = dformat.format(avg);
			model.addAttribute("avg",avg1);
		}
		
		System.out.println(avg);
		
		
		
		
		return viewPage;
	}

}
