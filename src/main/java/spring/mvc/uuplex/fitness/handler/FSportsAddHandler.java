package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;

@Service
public class FSportsAddHandler implements FCommandHandler{
	
	@Autowired
	FSportsDAO dao;
	
	@Override
	public String process(Model model) {
		
		FSportsDTO dto = new FSportsDTO();
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		dto.setSname(req.getParameter("sname"));
		dto.setSinfo(req.getParameter("sinfo"));
		
		dao.sportsAdd(dto);
		
		return "/manage/sports/addPro";
	}

}
