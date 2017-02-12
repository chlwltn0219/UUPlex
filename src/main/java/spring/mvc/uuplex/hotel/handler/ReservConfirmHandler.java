package spring.mvc.uuplex.hotel.handler;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
 
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
 
import spring.mvc.uuplex.hotel.dto.ReservDTO;
 
@Service("reservConfirmHandler")
public class ReservConfirmHandler implements HCommandHandler {
	
	@Override
	public String process(Model model) {
		 Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String email = (String) req.getParameter("email");
 
		ReservDTO dto = new ReservDTO();
		
		Timestamp checkIn = Timestamp.valueOf(req.getParameter("checkIn")+ " 00:00:00");
		Timestamp checkOut = Timestamp.valueOf(req.getParameter("checkOut")+ " 00:00:00");
		
		int staydate = (int) (checkOut.getTime()-checkIn.getTime())/(60 * 60 * 24 * 1000);
		
		System.out.println(staydate+"¿œ");
		
		System.out.println(checkIn +"====="+ checkOut);
		
		dto.setCheckIn(req.getParameter("checkIn"));
		dto.setCheckOut(req.getParameter("checkOut"));
		dto.setDay(staydate);
		
		dto.setRoomName(req.getParameter("roomNum"));
		dto.setRoomName(req.getParameter("roomName"));
		
		dto.setCapacity(Integer.parseInt(req.getParameter("capacity")));
		dto.setExtraBed(req.getParameter("extraBed"));
		System.out.println("extraBed: " + req.getParameter("extraBed"));
		String bedcnt = "";
		bedcnt = req.getParameter("extraBedcnt");
		if(!bedcnt.equals("")) {
			dto.setExtraBedcnt(Integer.parseInt(req.getParameter("extraBedcnt")));			
		}
		dto.setLaundry(req.getParameter("laundry"));
		dto.setBreakfast(req.getParameter("breakfast"));
		dto.setFirstName(req.getParameter("firstName"));
		dto.setLastName(req.getParameter("lastName"));
		dto.setCountry(req.getParameter("country"));
		dto.setCard(req.getParameter("card"));
		dto.setCardNum(req.getParameter("cardNum"));
		dto.setCardEndM(req.getParameter("cardEndM"));
		dto.setTotCharge(Integer.parseInt(req.getParameter("totCharge")));
		System.out.println(req.getParameter("totCharge"));
		
		model.addAttribute("dto", dto);
		model.addAttribute("email", email);
 
		return "/hotel/reservConfirm";
	}
 
}