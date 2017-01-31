package spring.mvc.uuplex.hotel.handler;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Service;
import org.springframework.ui.Model;



@Service("testHandler")
public class TestHandler implements HCommandHandler {
	
	@Override
	public String process(Model model) {
		 Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String roomNum = req.getParameter("roomNum");
		
		System.out.println(roomNum);
		
		model.addAttribute("roomNum", roomNum);
		
		return "/hotel/test";
	}

}
