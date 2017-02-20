package spring.mvc.uuplex.hotel.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.ReservDAO;

@Service("chargeCountHandler")
public class ChargeCountHandler implements HCommandHandler {

	@Autowired
	ReservDAO dao;

	@Autowired
	ServletContext content;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");

			String chargeCnt = req.getParameter("chargeCnt");
			String checkOut = req.getParameter("checkOut");
			String charge = req.getParameter("charge");

			if(checkOut == null) {
				model.addAttribute("chargeCnt", charge);
			} else {
				model.addAttribute("chargeCnt", chargeCnt);
				
			}
			

		return "/hotel/chargeCount";
	}

}
