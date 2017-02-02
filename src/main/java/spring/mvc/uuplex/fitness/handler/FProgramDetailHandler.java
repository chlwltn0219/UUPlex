package spring.mvc.uuplex.fitness.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FProgramDAO;
import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FProgramDTO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FProgramDetailHandler implements FCommandHandler{
	
	@Autowired
	FProgramDAO  dao;
	@Autowired
	FSportsDAO  sDao;
	@Autowired
	FTeacherDAO  tDao;
	
	
	@Override
	public String process(Model model) {
		
		FProgramDTO dto = null;
		String viewPage = "/fitness/manage/program_detail";
		int pid = 0;
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		List<FSportsDTO> sports = null;
		List<FTeacherDTO> teacher = null;
		
		try {
			pid = Integer.parseInt(req.getParameter("pid"));
			dto = dao.programDetail(pid);		
			model.addAttribute("dto", dto);
			
			sports = sDao.sportsActivatedList();
			model.addAttribute("sports", sports);
			
			teacher = tDao.suitableList(dto.getSid());
			model.addAttribute("teacher", teacher);
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
