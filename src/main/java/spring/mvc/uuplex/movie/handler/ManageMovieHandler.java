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

import spring.mvc.uuplex.fitness.handler.FSportsListHandler;
import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.util.Pager;

@Service
public class ManageMovieHandler implements MCommandHandler {

	@Autowired
	MovieDAO dao;

	Pager pager = Pager.getInstance();
	private static final Logger logger = LoggerFactory.getLogger(FSportsListHandler.class);

	@Override
	public String process(Model model) {

		int nowPage = 1;
		int total = 0;
		List<MovieInfoDTO> dtos = null;
		String viewPage = "/c-box/Movie_main";
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");

		// 현재 페이지 정보 설정
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
		// 목록 총 개수 계산
		total = dao.moviesCount();

		logger.info("total : " + total);

		/*
		 * 페이지 정보 계산
		 */
		// 한 페이지에 보여주는 게시글 수
		pager.setDisplayContentCnt(15);
		// 한번에 보여줄 페이지 개수
		pager.setDisplayPageCnt(10);
		// page 정보 계산해주는 객체
		pager.calcPage(total, nowPage);

		if (total > 0) {
			Map<String, Integer> rangeMap = new HashMap<String, Integer>();
			rangeMap.put("start", pager.getStartContent());
			rangeMap.put("end", pager.getEndContent());

			dtos = dao.manageMoviesList(rangeMap);

			model.addAttribute("contentPage", "manage/manage_movie.jsp");
			model.addAttribute("dtos", dtos);
			
			// ▲ 게시글 목록 데이터
			// ▼ 페이저 생성 데이터
			model.addAttribute("contentCnt", pager.getDisplayContentCnt());

			model.addAttribute("nowPage", pager.getNowPage());
			model.addAttribute("startPage", pager.getStartPage());
			model.addAttribute("endPage", pager.getEndPage());

			model.addAttribute("prev", pager.getPrev());
			model.addAttribute("next", pager.getNext());
		}

		return viewPage;
	}

}
