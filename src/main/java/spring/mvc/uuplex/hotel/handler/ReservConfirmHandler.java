package spring.mvc.uuplex.hotel.handler;
 
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
 
		ReservDTO dto = new ReservDTO();
		
		dto.setEmail(req.getParameter("email"));
		dto.setRoomName(req.getParameter("roomNum"));
		dto.setRoomName(req.getParameter("roomName"));
		dto.setCheckIn(req.getParameter("checkIn"));
		dto.setCheckOut(req.getParameter("checkOut"));
		dto.setCapacity(Integer.parseInt(req.getParameter("capacity")));
		dto.setExtraBed(req.getParameter("extraBed"));
		dto.setExtraBedcnt(Integer.parseInt(req.getParameter("extraBedcnt")));
		dto.setLaundry(req.getParameter("laundry"));
		dto.setBreakfast(req.getParameter("breakfast"));
		dto.setFirstName(req.getParameter("firstName"));
		dto.setLastName(req.getParameter("lastName"));
		dto.setCard(req.getParameter("card"));
		dto.setCardNum(req.getParameter("cardNum"));
		dto.setCardEndM(req.getParameter("cardEndM"));
		//dto.setTotCharge(Integer.parseInt(req.getParameter("totCharge")));
		
		model.addAttribute("dto", dto);
 
		return "/hotel/reservConfirm";
	}
 
}