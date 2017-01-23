package spring.mvc.uuplex.hotel.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.BoardDAO;

@Service("modifyFormHandler")
public class RoomModifyFormHandler implements HCommandHandler {

	@Autowired
	BoardDAO dao;
	
	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		int roomNum = Integer.parseInt(req.getParameter("roomNum"));
		
		model.addAttribute("roomNum", roomNum);
		
		return "/hotel/modifyForm";
	}

}
