package spring.mvc.uuplex.hotel.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.hotel.dao.HotelDAO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

@Service("RoomAddProHandler")
public class RoomAddProHandler implements HCommandHandler {

	@Autowired
	HotelDAO dao;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
	
		//1단계. dto 바구니 생성
		HotelDTO dto = new HotelDTO();
		
		//2단계. dto 바구니에 담는다.
		dto.setRoomName(req.getParameter("roomName"));
		dto.setMainImg(req.getParameter("mainImg"));
		dto.setDetail_1(req.getParameter("detail_1"));
		dto.setDetail_2(req.getParameter("detail_2"));
		dto.setDetail_3(req.getParameter("detail_3"));
		dto.setDetail_4(req.getParameter("detail_4"));
		dto.setDetail_5(req.getParameter("detail_5"));
		dto.setIntro(req.getParameter("intro"));
		dto.setRoomType(req.getParameter("roomType"));
		dto.setBed(req.getParameter("bed"));
		dto.setHotelView(req.getParameter("hotelView"));
		dto.setCapacity(req.getParameter("capacity"));
		dto.setCharge(Integer.parseInt(req.getParameter("charge")));
		
		int cnt = dao.insert(dto);
		
		model.addAttribute("cnt", cnt);
		
		return "/hotel/roomAddPro";
	}
	
	
}
