package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FProgramDAO;
import spring.mvc.uuplex.fitness.dto.FProgramDTO;

@Service
public class FProgramModifyHandler implements FCommandHandler{
	
	@Autowired
	FProgramDAO dao;
	
	@Override
	public String process(Model model) {
		
		String viewPage = "fitness/manage/program_modifyPro";
		FProgramDTO dto = new FProgramDTO();
		
		int pid = 0;
		String pname = null;
		String pinfo = null;
		String activated = null;
		
		int sid = 0;
		int tid = 0;
		int price = 0;
		int preparationCost = 0;
		String preparation = null;
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		try {
			pid = Integer.parseInt(req.getParameter("pid"));
			pname = req.getParameter("pname");
			pinfo = req.getParameter("pinfo");
			activated = req.getParameter("activated");
			
			sid = Integer.parseInt(req.getParameter("sid"));
			tid = Integer.parseInt(req.getParameter("tid"));
			price = Integer.parseInt(req.getParameter("price"));
			preparationCost = Integer.parseInt(req.getParameter("preparationCost"));
			preparation = req.getParameter("preparation");

			
			dto.setPid(pid);
			dto.setPname(pname);
			dto.setPinfo(pinfo);
			dto.setActivated(activated);
			
			dto.setSid(sid);
			dto.setTid(tid);
			dto.setPrice(price);
			dto.setPreparationCost(preparationCost);
			dto.setPreparation(preparation);
			
			int cnt = dao.modifyProgram(dto);
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
