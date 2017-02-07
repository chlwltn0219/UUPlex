package spring.mvc.uuplex.fitness.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FProgramDAO;
import spring.mvc.uuplex.fitness.dto.FProgramDTO;

@Service
public class FReservableProgramListHandler implements FCommandHandler{
	
	@Autowired
	FProgramDAO dao;
	
	@Override
	public String process(Model model) {
		String viewPage = "/fitness/user/reserve_program";
		List<FProgramDTO> list = null;
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		String sid = req.getParameter("sid");
		if (sid == null) {
			sid = "%";
		}
		
		list = dao.reservableList(sid);
		model.addAttribute("program", list);
		
		return viewPage;
	}

}
