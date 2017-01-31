package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FProgramDAO;
import spring.mvc.uuplex.fitness.dto.FProgramDTO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;

@Service
public class FProgramInputProHandler implements FCommandHandler{
	
	@Autowired
	FProgramDAO dao;
	
	@Override
	public String process(Model model) {
		
		FProgramDTO dto = new FProgramDTO();
		int cnt = 0;
		
		String viewPage = "/fitness/manage/program_inputPro";
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		try {
			dto.setPname(req.getParameter("pname"));
			dto.setSid(Integer.parseInt(req.getParameter("sid")));
			dto.setTid(Integer.parseInt(req.getParameter("tid")));
			dto.setPrice(Integer.parseInt(req.getParameter("price")));
			dto.setPreparationCost(Integer.parseInt(req.getParameter("preparationCost")));
			dto.setPreparation(req.getParameter("preparation"));
			dto.setPinfo(req.getParameter("preparation"));
			
		} catch (NumberFormatException e) {
			// TODO: handle exception
		}
		
		cnt = dao.addProgram(dto);
		
		model.addAttribute("cnt", cnt);
		
		return viewPage;
	}

}
