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
		int cnt = 0;
		
		String viewPage = "/fitness/manage/sports_inputPro";
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		dto.setSname(req.getParameter("sname"));
		dto.setSinfo(req.getParameter("sinfo"));
		
		cnt = dao.addSports(dto);
		
		model.addAttribute("cnt", cnt);
		
		return viewPage;
	}

}
