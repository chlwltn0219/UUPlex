package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FStatementDAO;
import spring.mvc.uuplex.fitness.dto.FStatementDTO;

@Service
public class FRefundProHandler implements FCommandHandler{

	@Autowired
	FStatementDAO  dao;
	
	@Override
	public String process(Model model) {
		
		FStatementDTO dto = new FStatementDTO();
		int cnt;
		String viewPage = "fitness/user/refund_result";
		int stid = 0;
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		try {
			stid = Integer.parseInt(req.getParameter("stid"));
			
			dto.setStid(stid);
			dto.setMemid((String) req.getSession().getAttribute("id"));
			
			cnt = dao.refundPro(dto);		
			model.addAttribute("cnt", cnt);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
