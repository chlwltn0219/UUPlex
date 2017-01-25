package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FTeacherInputHandler implements FCommandHandler{

	@Autowired
	FTeacherDAO dao;
	
		
	@Override
	public String process(Model model) {
		
		FTeacherDTO dto = new FTeacherDTO();
		int cnt = 0;
	
				
		String viewPage = "fitness/manage/teacher_inputPro";
		
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		
		
		dto.setTname(req.getParameter("tname"));
		dto.setTinfo(req.getParameter("tinfo"));
		
		cnt = dao.tInsert(dto);
		
		model.addAttribute("cnt", cnt);
		
		return viewPage;
		
	}

}
