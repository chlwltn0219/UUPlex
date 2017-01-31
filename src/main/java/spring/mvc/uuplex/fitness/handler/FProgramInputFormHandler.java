package spring.mvc.uuplex.fitness.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FProgramInputFormHandler implements FCommandHandler{
	
	@Autowired
	FSportsDAO sDao;
	@Autowired
	FTeacherDAO tDao;
	
	@Override
	public String process(Model model) {
		String viewPage = "/fitness/manage/program_input";
		Map<String, Integer> rangeMap =  new HashMap<String, Integer>();
		int total = 0;
		
		List<FSportsDTO> sList = null;
		List<FTeacherDTO> tList = null;
		
		sList = sDao.sportsActivatedList();
		tList = tDao.activatedList();
		
		model.addAttribute("sports", sList);
		model.addAttribute("teacher", tList);
		
		return viewPage;
	}

}

