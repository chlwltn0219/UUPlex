package spring.mvc.uuplex.fitness.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;

@Service
public class FReserveFormHandler implements FCommandHandler{
	
	@Autowired
	FSportsDAO sDao;
	
	@Override
	public String process(Model model) {
		String viewPage = "/fitness/user/reserve_form";
		List<FSportsDTO> list = null;
		
		list = sDao.sportsActivatedList();
		model.addAttribute("sports", list);
		
		return viewPage;
	}

}
