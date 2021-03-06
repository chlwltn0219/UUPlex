package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FClassroomDAO;
import spring.mvc.uuplex.fitness.dto.FClassroomDTO;

@Service
public class FClassroomModifyHandler implements FCommandHandler{
	
	@Autowired
	FClassroomDAO dao;
	
	@Override
	public String process(Model model) {
		
		String viewPage = "fitness/manage/classroom_modifyPro";
		FClassroomDTO dto = new FClassroomDTO();
		
		int crid = 0;
		String crname = null;
		String activated = null;
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		try {
			crid = Integer.parseInt(req.getParameter("crid"));
			crname = req.getParameter("crname");
			activated = req.getParameter("activated");
			
			
			System.out.println("sag : " + crid + crname + activated);
			
			dto.setCrid(crid);
			dto.setCrname(crname);;
			dto.setActivated(activated);
			
			int cnt = dao.modifyClassroom(dto);
			
			System.out.println("Eg : " + cnt);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
