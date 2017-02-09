package spring.mvc.uuplex.fitness.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FStatementDAO;
import spring.mvc.uuplex.fitness.dto.FStatementDTO;

@Service
public class FRefundFormHandler implements FCommandHandler{

	@Autowired
	FStatementDAO  dao;
	
	
	@Override
	public String process(Model model) {
		
		FStatementDTO dto = null;
		String viewPage = "fitness/user/refund_check";;
		int stid = 0;
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		Map<String, Object> info = new HashMap<String, Object>();
		
		try {
			stid = Integer.parseInt(req.getParameter("stid"));
			
			info.put("stid", stid);
			info.put("memid", req.getSession().getAttribute("id"));
			
			dto = dao.refundForm(info);		
			model.addAttribute("dto", dto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
