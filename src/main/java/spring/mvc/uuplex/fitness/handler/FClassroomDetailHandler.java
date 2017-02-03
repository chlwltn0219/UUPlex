package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FClassroomDAO;
import spring.mvc.uuplex.fitness.dto.FClassroomDTO;

@Service
public class FClassroomDetailHandler implements FCommandHandler{

	@Autowired
	FClassroomDAO  dao;
	
	
	@Override
	public String process(Model model) {
		
		FClassroomDTO dto = null;
		String viewPage = "/fitness/manage/classroom_detail";
		int crid = 0;
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		try {
			crid = Integer.parseInt(req.getParameter("crid"));
			dto = dao.classroomDetail(crid);		
			model.addAttribute("dto", dto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
