package spring.mvc.uuplex.fitness.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FTeacherSuitableListHandler implements FCommandHandler{
	
	@Autowired
	FTeacherDAO tDao;
	
	@Override
	public String process(Model model) {
		String viewPage = "/fitness/manage/teacher_suitable";
		
		int sid = 0;
		List<FTeacherDTO> list = null;
		
		HttpServletRequest req =  (HttpServletRequest) model.asMap().get("req");
		
		try {
			sid = Integer.parseInt(req.getParameter("sid"));
			list = tDao.suitableList(sid);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("teacher", list);
		
		return viewPage;
	}

}

