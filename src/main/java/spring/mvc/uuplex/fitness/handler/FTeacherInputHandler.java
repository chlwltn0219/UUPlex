package spring.mvc.uuplex.fitness.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;

@Service
public class FTeacherInputHandler implements FCommandHandler{

	@Autowired
	FSportsDAO dao;
	
	@Override
	public String process(Model model) {
		
		String viewPage = "/fitness/manage/teacher_input";
		
		List<FSportsDTO> sports = dao.sportsActivatedList();
	
		model.addAttribute("sports", sports);
						
		return viewPage;
		
	}

}
