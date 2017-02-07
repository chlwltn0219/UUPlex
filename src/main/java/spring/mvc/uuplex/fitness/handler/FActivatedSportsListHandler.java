package spring.mvc.uuplex.fitness.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;

@Service
public class FActivatedSportsListHandler implements FCommandHandler{
	
	@Autowired
	FSportsDAO sDao;
	
	@Override
	public String process(Model model) {
		String viewPage = null;
		List<FSportsDTO> list = null;
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		String sidString = req.getParameter("sid");
		if (sidString == null) {
			sidString = "%";
		}
		
		list = sDao.sportsActivatedList();
		model.addAttribute("sports", list);
		
		return viewPage;
	}

}
