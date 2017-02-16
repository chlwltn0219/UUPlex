package spring.mvc.uuplex.movie.handler;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ManagerDAO;
import spring.mvc.uuplex.movie.dto.ScreenQuotaDTO;

@Service
public class ScreenQuaterHandler implements MCommandHandler{

	@Autowired
	ManagerDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();

		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String year = req.getParameter("year");
		
		List<ScreenQuotaDTO> sq = dao.getScreenQuota(year);
		
		model.addAttribute("sq",sq);
		
		return "c-box/manage/screenQuota";
	}

}
