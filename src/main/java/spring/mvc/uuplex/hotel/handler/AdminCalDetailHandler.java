package spring.mvc.uuplex.hotel.handler;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.ReservDAO;
import spring.mvc.uuplex.hotel.dto.ReservDTO;

@Service("AdminCalDetailHandler")
public class AdminCalDetailHandler implements HCommandHandler {
	
	@Autowired
	ReservDAO dao;
	
	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int reservNum = Integer.parseInt(req.getParameter("reservNum"));
		System.out.println(req.getParameter("reservNum"));
		ReservDTO dto = dao.detail(reservNum);
		
		model.addAttribute("dto", dto);
		model.addAttribute("reservNum", reservNum);
		
		return "/hotel/adminCalDetail";
	}

}
