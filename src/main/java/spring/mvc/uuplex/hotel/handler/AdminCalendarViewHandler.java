package spring.mvc.uuplex.hotel.handler;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.ReservDAO;
import spring.mvc.uuplex.hotel.dto.ReservDTO;

@Service("adminCalendarViewHandler")
public class AdminCalendarViewHandler implements HCommandHandler {

	@Autowired
	ReservDAO dao;

	@Autowired
	ServletContext content;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
			String checkIn = req.getParameter("checkIn");

			if(checkIn != null) {
				ArrayList<ReservDTO> dtos = dao.adminCalendar(checkIn);
				model.addAttribute("dtos", dtos);
			}
			
			model.addAttribute("checkIn", checkIn);

		return "/hotel/adminCalendarView";
	}

}
