package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;

@Service
public class FSportsModifyHandler implements FCommandHandler{
	
	@Autowired
	FSportsDAO dao;
	
	@Override
	public String process(Model model) {
		String viewPage = null;
		FSportsDTO dto = new FSportsDTO();
		
		int sid = 0;
		String sname = null;
		String sinfo = null;

		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		try {
			sid = Integer.parseInt(req.getParameter("sid"));
			sname = req.getParameter("sname");
			sinfo = req.getParameter("sinfo");

			
			dto.setSid(sid);
			dto.setSname(sname);
			dto.setSinfo(sinfo);

			
			dao.modifySports(dto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
