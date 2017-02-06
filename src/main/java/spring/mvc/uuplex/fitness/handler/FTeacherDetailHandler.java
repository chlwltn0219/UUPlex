package spring.mvc.uuplex.fitness.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FTeacherDetailHandler implements FCommandHandler{
	
	@Autowired
	FTeacherDAO  dao;
	
	@Autowired
	FSportsDAO sdao;
	
	@Override
	public String process(Model model) {
		
		FTeacherDTO dto = null;
		int tid = 0;
		
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
<<<<<<< HEAD
		System.out.println(req.getParameter("tid"));
		tid = Integer.parseInt(req.getParameter("tid"));
=======
		tid = Integer.parseInt(req.getParameter("tid"));
		
>>>>>>> origin/master
		List<FSportsDTO> sports = sdao.sportsActivatedList();		
		
		dto = dao.tdetail(tid);		
		model.addAttribute("dto", dto);
		model.addAttribute("sports", sports);
		
		return "/fitness/manage/teacher_detail";
	}

}
