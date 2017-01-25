package spring.mvc.uuplex.hotel.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.HotelDAO;

@Service("roomDeleteProHandler")
public class RoomDeleteProHandler implements HCommandHandler {

	@Autowired
	HotelDAO dao;
	
	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		
		
		String[] roomNum = req.getParameterValues("checkbox");
		for(int i=0; i<roomNum.length; i++){
			int num = Integer.parseInt(roomNum[i]);
			dao.delete(num);
		}
		
		return "/hotel/roomDeletePro";
	}

}
