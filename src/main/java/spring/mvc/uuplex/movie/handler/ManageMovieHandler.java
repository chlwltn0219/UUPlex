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

		// 占쎌겱占쎌삺 占쎈읂占쎌뵠筌욑옙 占쎌젟癰귨옙 占쎄퐬占쎌젟
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
		// 筌뤴뫖以� �룯占� 揶쏆뮇�땾 �④쑴沅�
		total = dao.moviesCount();

		logger.info("total : " + total);

		/*
		 * 占쎈읂占쎌뵠筌욑옙 占쎌젟癰귨옙 �④쑴沅�
		 */
		// 占쎈립 占쎈읂占쎌뵠筌욑옙占쎈퓠 癰귣똻肉т틠�눖�뮉 野껊슣�뻻疫뀐옙 占쎈땾
		pager.setDisplayContentCnt(5);
		// 占쎈립甕곕뜆肉� 癰귣똻肉т빳占� 占쎈읂占쎌뵠筌욑옙 揶쏆뮇�땾
		pager.setDisplayPageCnt(3);
		// page 占쎌젟癰귨옙 �④쑴沅쏉옙鍮먧틠�눖�뮉 揶쏆빘猿�
		pager.calcPage(total, nowPage);

		if (total > 0) {
			Map<String, Integer> rangeMap = new HashMap<String, Integer>();
			rangeMap.put("start", pager.getStartContent());
			rangeMap.put("end", pager.getEndContent());

			dtos = dao.manageMoviesList(rangeMap);

			
			model.addAttribute("dtos", dtos);
			
			// 占쎈섞 野껊슣�뻻疫뀐옙 筌뤴뫖以� 占쎈쑓占쎌뵠占쎄숲
			// 占쎈섰 占쎈읂占쎌뵠占쏙옙 占쎄문占쎄쉐 占쎈쑓占쎌뵠占쎄숲
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
