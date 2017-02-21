package spring.mvc.uuplex.hotel.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.ReservDAO;

@Service("adminCancelHandler")
public class AdminCancelHandler implements HCommandHandler {

	@Autowired
	ReservDAO dao;
	
	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
			int num = Integer.parseInt(req.getParameter("reservNum"));
			dao.cancel(num);
			dao.calcancel(num);
		
		return "/hotel/adminCancel";
	}

}
