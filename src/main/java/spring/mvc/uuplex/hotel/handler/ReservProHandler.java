package spring.mvc.uuplex.hotel.handler;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.ReservDAO;
import spring.mvc.uuplex.hotel.dto.ReservDTO;

@Service("ReservProHandler")
public class ReservProHandler implements HCommandHandler {

	@Autowired
	ReservDAO dao;

	@Autowired
	ServletContext content;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");

			String memId = (String) req.getSession().getAttribute("id");
			// 1단계. dto 바구니 생성
			ReservDTO dto = new ReservDTO();

			// 2단계. dto 바구니에 담는다.
			dto.setRoomName(req.getParameter("roomName"));
			dto.setMemId(memId);
			dto.setCheckIn(req.getParameter("checkIn"));
			dto.setCheckOut(req.getParameter("checkOut"));
			dto.setDay(Integer.parseInt(req.getParameter("day")));
			dto.setCapacity(Integer.parseInt(req.getParameter("capacity")));
			dto.setExtraBed(req.getParameter("extraBed"));
			dto.setLaundry(req.getParameter("laundry"));
			dto.setBreakfast(req.getParameter("breakfast"));
			dto.setFirstName(req.getParameter("firstName"));
			dto.setLastName(req.getParameter("lastName"));
			dto.setCountry(req.getParameter("country"));
			dto.setCard(req.getParameter("card"));
			dto.setCardNum(req.getParameter("cardNum"));
			dto.setCardEndM(req.getParameter("cardEndM"));
			dto.setTotCharge(Integer.parseInt(req.getParameter("totCharge")));

			int cnt = dao.reservation(dto);

			model.addAttribute("cnt", cnt);

		return "/hotel/reservPro";
	}

}
