package spring.mvc.uuplex.movie.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.TheaterDAO;

@Service
public class DeleteTheaterHandler implements MCommandHandler {

	@Autowired
	TheaterDAO dao;
	
	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		String viewPage = "c-box/manage/theater_deletePro";
		int theater_num = Integer.parseInt(req.getParameter("theater_num"));
		
		int cnt =0;
		
		cnt = dao.deleteTheater(theater_num);
		model.addAttribute("cnt", cnt);
		
		return viewPage;
	}

}
