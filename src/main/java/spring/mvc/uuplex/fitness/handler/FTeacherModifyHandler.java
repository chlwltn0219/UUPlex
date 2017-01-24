package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FTeacherModifyHandler implements FCommandHandler{

	@Autowired
	FTeacherDAO dao;
	
	@Override
	public String process(Model model) {
		String viewPage = null;
		FTeacherDTO dto = new FTeacherDTO();
		
		int tid = 0;
		String tname = null;
		String tinfo = null;
		
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		tid = Integer.parseInt(req.getParameter("tid"));
		tname = req.getParameter("tname"); 
		tinfo = req.getParameter("tinfo");	
		
		dto.setTid(Integer.parseInt(req.getParameter("tid")));
		dto.setTname(req.getParameter("tname"));
		dto.setTinfo(req.getParameter("tinfo"));	
		
		dao.teacherModify(dto);		
		

		
		return viewPage;
	}

}
