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
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;
import spring.mvc.uuplex.util.Pager;

@Service
public class ManageMovieHandler implements MCommandHandler {

	@Autowired
	MovieDAO dao;

	Pager pager = Pager.getInstance();
	private static final Logger logger = LoggerFactory.getLogger(ManageMovieHandler.class);

	@Override
	public String process(Model model) {

		int nowPage = 1;
		int total = 0;
		List<MovieInfoDTO> dtos = null;
		String viewPage = "/c-box/Movie_main";
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");

		// �쁽�옱 �럹�씠吏� �젙蹂� �꽕�젙
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
		// 紐⑸줉 珥� 媛쒖닔 怨꾩궛
		total = dao.moviesCount();

		logger.info("total : " + total);

		/*
		 * �럹�씠吏� �젙蹂� 怨꾩궛
		 */
		// �븳 �럹�씠吏��뿉 蹂댁뿬二쇰뒗 寃뚯떆湲� �닔
		pager.setDisplayContentCnt(1);
		// �븳踰덉뿉 蹂댁뿬以� �럹�씠吏� 媛쒖닔
		pager.setDisplayPageCnt(1);
		// page �젙蹂� 怨꾩궛�빐二쇰뒗 媛앹껜
		pager.calcPage(total, nowPage);

		if (total > 0) {
			Map<String, Integer> rangeMap = new HashMap<String, Integer>();
			rangeMap.put("start", pager.getStartContent());
			rangeMap.put("end", pager.getEndContent());

			dtos = dao.manageMoviesList(rangeMap);

			
			model.addAttribute("dtos", dtos);
			
			// �뼯 寃뚯떆湲� 紐⑸줉 �뜲�씠�꽣
			// �뼹 �럹�씠�� �깮�꽦 �뜲�씠�꽣
			model.addAttribute("contentCnt", pager.getDisplayContentCnt());

			model.addAttribute("nowPage", pager.getNowPage());
			model.addAttribute("startPage", pager.getStartPage());
			model.addAttribute("endPage", pager.getEndPage());

			model.addAttribute("prev", pager.getPrev());
			model.addAttribute("next", pager.getNext());
		}

		model.addAttribute("contentPage", "manage/manage_movie.jsp");
		return viewPage;
	}

}
