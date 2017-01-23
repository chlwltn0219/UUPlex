package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FTeacherDetailHandler implements FCommandHandler{
	
	@Autowired
	FTeacherDAO  dao;
	
	
	@Override
	public String process(Model model) {
		
		FTeacherDTO dto = null;
		int tid = 0;
		
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		tid = Integer.parseInt(req.getParameter("tid"));
		dto = dao.tdetail(tid);		
		model.addAttribute("dto", dto);
		
		return null;
	}

}
