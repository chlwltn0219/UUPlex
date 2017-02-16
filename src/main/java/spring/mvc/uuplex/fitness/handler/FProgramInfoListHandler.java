package spring.mvc.uuplex.fitness.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FProgramDAO;
import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dto.FProgramDTO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;

@Service
public class FProgramInfoListHandler implements FCommandHandler{

	@Autowired
	FProgramDAO  dao;
	@Autowired
	FSportsDAO sdao;
	
	@Override
	public String process(Model model) {
		
		List<FProgramDTO> dto = null;
		List<FSportsDTO> sList = null;
		String viewPage = "/fitness/user/program_list";

		dto = dao.pInfo();	
		sList = sdao.sportsActivatedList();
		model.addAttribute("dto", dto);		
		model.addAttribute("sports", sList);
		return viewPage;
	}
	
}
