package spring.mvc.uuplex.movie.handler;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dao.TheaterDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Service
public class MovieScheduleHandler implements MCommandHandler {

	@Autowired
	MovieDAO mdao;
	
	@Autowired
	TheaterDAO tdao;

	@Override
	public String process(Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");

		List<MovieInfoDTO> mdtos = null;
		String viewPage = "/c-box/manage/schedule_input";

			int d = Integer.parseInt(req.getParameter("d"));
			int t = Integer.parseInt(req.getParameter("t"));
			String theater_num = req.getParameter("theater_num");
			
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String date = dateFormat.format(new Date(new Date().getTime() + 60*60*24*1000*d));
			
			String time = (9+t/2<10 ? "0"+(9+t/2) : (9+t/2)) +":"+((t%2)*30 == 0 ? "00":"30");
			
			System.out.println(time);

			mdtos = mdao.getScreening();
			int theatercount = tdao.TheatersCount();
			
			model.addAttribute("theatercount",theatercount);
			model.addAttribute("mdtos", mdtos);
			model.addAttribute("theater_num", theater_num);
			model.addAttribute("date", date);
			model.addAttribute("time", time);


		return viewPage;
	}

}
