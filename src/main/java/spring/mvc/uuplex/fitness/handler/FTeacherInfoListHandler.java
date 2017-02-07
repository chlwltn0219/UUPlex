package spring.mvc.uuplex.fitness.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FTeacherInfoListHandler implements FCommandHandler{

	@Autowired
	FTeacherDAO  dao;
	@Autowired
	FSportsDAO sdao;
		
	@Override
	public String process(Model model) {
		
		List<FTeacherDTO> dtos = null;
		List<FSportsDTO> sList = null;
		
		String viewPage = "fitness/user/teacher_list";
		
		dtos = dao.tInfo();
		sList = sdao.sportsActivatedList();
		
		model.addAttribute("sports", sList);
		model.addAttribute("dtos", dtos);
		
		return viewPage;
	}

}
