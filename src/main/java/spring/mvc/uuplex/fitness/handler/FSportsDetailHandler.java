package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;

@Service
public class FSportsDetailHandler implements FCommandHandler{
	
	@Autowired
	FSportsDAO dao;
	
	@Override
	public String process(Model model) {
		FSportsDTO dto = null;
		int sid = 0;
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		try {
			sid = Integer.parseInt((String) req.getParameter("sid"));
			dto = dao.sportsDetail(sid);
			model.addAttribute("dto", dto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
