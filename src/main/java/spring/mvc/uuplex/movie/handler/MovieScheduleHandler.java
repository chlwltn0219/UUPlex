package spring.mvc.uuplex.movie.handler;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Service
public class MovieScheduleHandler implements MCommandHandler {

	@Autowired
	MovieDAO mdao;

	@Override
	public String process(Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");

		List<MovieInfoDTO> mdtos = null;
		String viewPage = "/c-box/manage/schedule_input";
		try {
			String date = req.getParameter("date");
			String time = req.getParameter("time");

			System.out.println(date + "요일" + time + "시간");

			

			mdtos = mdao.getScreening();

			model.addAttribute("mdtos", mdtos);
			model.addAttribute("date", date);
			model.addAttribute("time", time);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

		return viewPage;
	}

}
