package spring.mvc.uuplex.hotel.handler;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.ReservDAO;
import spring.mvc.uuplex.hotel.dto.ReservDTO;

@Service("reservManageHandler")
public class ReservManageHandler implements HCommandHandler {

	@Autowired
	ReservDAO dao;
	
	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String memId = (String)req.getSession().getAttribute("id");
		
		if(memId != null) {
			ArrayList<ReservDTO> dtos = dao.reservList(memId);
			model.addAttribute("dtos", dtos);
		}
		model.addAttribute("memId", memId);
		
		return "/hotel/reservManage";
	}

}
