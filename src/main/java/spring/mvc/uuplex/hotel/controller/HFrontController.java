package spring.mvc.uuplex.hotel.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.hotel.handler.HCommandHandler;
import spring.mvc.uuplex.hotel.handler.ReservFormHandler;
import spring.mvc.uuplex.hotel.handler.ReservationHandler;
import spring.mvc.uuplex.hotel.handler.RoomAddProHandler;
import spring.mvc.uuplex.hotel.handler.RoomDeleteProHandler;
import spring.mvc.uuplex.hotel.handler.RoomListHandler;
import spring.mvc.uuplex.hotel.handler.RoomModifyFormHandler;
import spring.mvc.uuplex.hotel.handler.RoomModifyProHandler;

@Controller
@RequestMapping("/hotel")
public class HFrontController {

	HCommandHandler command;
	
	//∏ﬁ¿Œ
	@RequestMapping("")
	public String list(){
		
		System.out.println("hotel main");
		
		String viewPage = "hotel/hotelMain";
		
		return viewPage;
	}
	
	/*@Autowired
	HotelMainHandler hotelMainHandler;
	@RequestMapping("")
	public String hotelMain(HttpServletRequest req, Model model) {
		System.out.println("hotelMain()");
		String viewPage = hotelMainHandler.process(model);
		
		return viewPage;
	}*/
	
	//∞¥Ω«∏Ò∑œ
	@Autowired
	RoomListHandler roomListHandler;
	@RequestMapping("/roomList")
	public String roomList(HttpServletRequest req, Model model) {
		System.out.println("roomList()");
		
		/*model.addAttribute("req", req);*/
		String viewPage = roomListHandler.process(model);
		
		return viewPage;
	}
	
	@Autowired
	ReservationHandler reservationHandler;
	@RequestMapping("/reservation")
	public String reservation(HttpServletRequest req, Model model) {
		System.out.println("reservation()");
		
		model.addAttribute("req", req);
		String viewPage = reservationHandler.process(model);
		
		return viewPage;
	}
	
	//∞¥Ω«¡§∫∏
	@RequestMapping("/hotelInfo")
	public String roomInfo(Model model) {
		System.out.println("hotelInfo()");
		return "/hotel/hotelInfo";
	}
	
	//∞¥Ω«µÓ∑œ
	@RequestMapping("/roomAddForm")
	public String roomAddForm(Model model) {
		System.out.println("roomAddForm()");
		return "/hotel/roomAddForm";
	}

	
	@Autowired
	RoomAddProHandler roomAddProHandler;
	@RequestMapping("/roomAddPro")
	public String roomAddPro(HttpServletRequest req, Model model) {
		System.out.println("roomAddPro()");
		
		model.addAttribute("req", req);
		String viewPage = roomAddProHandler.process(model);
		
		return viewPage;
	}
	
	//∞¥Ω«ºˆ¡§
	@Autowired
	RoomModifyFormHandler roomModifyFormHandler;
	@RequestMapping("/roomModifyForm")
	public String roomModifyForm(HttpServletRequest req, Model model) {
		System.out.println("roomModifyForm()");
		
		model.addAttribute("req", req);
		String viewPage = roomModifyFormHandler.process(model);
				
		return viewPage;
	}
	
	@Autowired
	RoomModifyProHandler roomModifyProHandler;
	@RequestMapping("/roomModifyPro")
	public String roomModifyPro(HttpServletRequest req, Model model){
		System.out.println("roomModifyPro()");
		
		model.addAttribute("req", req);
		String viewPage = roomModifyProHandler.process(model);
		
		return viewPage;
	}
	
	//∞¥Ω«ªË¡¶
	@Autowired
	RoomDeleteProHandler roomDeleteProHandler;
	@RequestMapping("/roomDeletePro")
	public String roomDeletePro(HttpServletRequest req, Model model) {
		System.out.println("roomDeletePro()");
		
		model.addAttribute("req", req);
		String viewPage = roomDeleteProHandler.process(model);
		
		return viewPage;
	}
	
	//∞¥Ω«øπæ‡
	@Autowired
	ReservFormHandler reservFormHandler;
	@RequestMapping("/reservForm")
	public String test(HttpServletRequest req, Model model) {
		System.out.println("reservForm");
		
		model.addAttribute("req", req);
		String viewPage = reservFormHandler.process(model);
		
		return viewPage;
	}
	
	@RequestMapping("/calculation")
	public String calculation(Model model) {
		System.out.println("calculation()");
		return "/hotel/calculation";
	}
}
