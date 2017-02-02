package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FClassDAO;
import spring.mvc.uuplex.fitness.dto.FClassDTO;

@Service
public class FClassDetailHandler implements FCommandHandler{
	
	@Autowired
	FClassDAO  dao;
	
	
	@Override
	public String process(Model model) {
		
		FClassDTO dto = null;
		String viewPage = "/fitness/manage/class_detail";
		int cid = 0;
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		try {
			cid = Integer.parseInt(req.getParameter("cid"));
			dto = dao.classDetail(cid);		
			model.addAttribute("dto", dto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
