package spring.mvc.uuplex.hotel.handler;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dto.MemberDTO;
import spring.mvc.uuplex.hotel.dao.HotelDAO;

@Service("reservFormHandler")
public class ReservFormHandler implements HCommandHandler {
	
	@Autowired
	HotelDAO dao;
	
	@Override
	public String process(Model model) {
		 Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String memId = (String) req.getSession().getAttribute("id");
		String roomName = req.getParameter("roomName");
		int charge = Integer.parseInt(req.getParameter("charge"));
		if(memId != null) {
			MemberDTO dto = dao.reserView(memId);
			model.addAttribute("dto", dto);
		}
		
		model.addAttribute("roomName", roomName);
		model.addAttribute("charge", charge);
		model.addAttribute("memId", memId);
		
		return "/hotel/reservForm";
	}

}
