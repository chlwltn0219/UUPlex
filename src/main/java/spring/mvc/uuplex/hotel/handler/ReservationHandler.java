package spring.mvc.uuplex.hotel.handler;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.HotelDAO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

@Service("reservationHandler")
public class ReservationHandler implements HCommandHandler {

	@Autowired
	HotelDAO dao;
	
	@Override
	public String process(Model model) {
		 Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		ArrayList<HotelDTO> dtos = dao.list();
		
		model.addAttribute("dtos", dtos);
		
		return "/hotel/reservation";
	}

}
