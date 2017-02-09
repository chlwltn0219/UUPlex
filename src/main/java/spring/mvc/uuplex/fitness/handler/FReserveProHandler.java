package spring.mvc.uuplex.fitness.handler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FStatementDAO;
import spring.mvc.uuplex.fitness.dto.FStatementDTO;

@Service
public class FReserveProHandler implements FCommandHandler{
	
	@Autowired
	FStatementDAO dao;
	
	@Override
	public String process(Model model) {
		String viewPage = "/fitness/user/reserve_pro";
		int cnt = 0;
		FStatementDTO dto = new FStatementDTO();
		
		int cid = 0;
		int price = 0;
		String memid = null;
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		cid = Integer.parseInt(req.getParameter("cid"));
		price = Integer.parseInt(req.getParameter("price"));
		memid = (String) req.getSession().getAttribute("id");
		
		System.out.println(memid);
		
		if(memid != null) {
			dto.setCid(cid);
			dto.setMemid(memid);
			dto.setPrice(price);
			
			cnt = dao.reserveInput(dto);
			
			model.addAttribute("cnt", cnt);
		} else {
//		 	로그인 유도 할 것
			model.addAttribute("cnt", 2);
		}
		
		return viewPage;
	}

}
