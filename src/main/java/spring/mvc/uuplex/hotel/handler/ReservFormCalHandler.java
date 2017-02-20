package spring.mvc.uuplex.hotel.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.ReservDAO;

@Service("reservFormCalHandler")
public class ReservFormCalHandler implements HCommandHandler {

	@Autowired
	ReservDAO dao;

	@Autowired
	ServletContext content;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");

			String checkIn = req.getParameter("checkIn");
			String checkOut = req.getParameter("checkOut");
			String roomName = req.getParameter("roomName");
			
			Map<String, Object> daoMap = new HashMap<String, Object>();
			daoMap.put("checkIn", checkIn);
			daoMap.put("checkOut", checkOut);
			daoMap.put("roomName", roomName);

			if(checkIn != null) {
				int reservCnt = dao.reservFormCal(daoMap);
				model.addAttribute("reservCnt", reservCnt);
			}
			
			model.addAttribute("checkIn", checkIn);

		return "/hotel/reservFormCal";
	}

}
