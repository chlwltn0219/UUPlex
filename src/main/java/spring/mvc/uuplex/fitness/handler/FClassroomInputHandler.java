package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FClassroomDAO;
import spring.mvc.uuplex.fitness.dto.FClassroomDTO;

@Service
public class FClassroomInputHandler implements FCommandHandler{

	
	@Autowired
	FClassroomDAO dao;
	
	@Override
	public String process(Model model) {
		
		FClassroomDTO dto = new FClassroomDTO();
		
		int cnt = 0;
		
		String viewPage = "/fitness/manage/classroom_inputPro";
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		dto.setCrname(req.getParameter("crname"));
		
		cnt = dao.insertClass(dto);
		
		model.addAttribute("cnt", cnt);
		
		return viewPage;

	}

}
