package spring.mvc.uuplex.hotel.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.hotel.handler.HCommandHandler;
import spring.mvc.uuplex.hotel.handler.RoomAddProHandler;
import spring.mvc.uuplex.hotel.handler.RoomListHandler;

@Controller
@RequestMapping("/hotel")
public class HFrontController {

	HCommandHandler command;
	
	@RequestMapping("")
	public String list(){
		
		System.out.println("hotel main");
		
		String viewPage = "hotel/adminMain";
		
		return viewPage;
	}
	
	//∏ﬁ¿Œ∆‰¿Ã¡ˆ
	@RequestMapping("/adminMain")
	public String adminMain(Model model) {
		System.out.println("adminMain()");
		return "/hotel/adminMain";
	}
	
	@RequestMapping("/guestMain")
	public String guestMain(Model model) {
		System.out.println("guestMain()");
		return "/hotel/guestMain";
	}
	
	//∞¥Ω«∏Ò∑œ
	@Autowired
	RoomListHandler roomListHandler;
	@RequestMapping("/roomList")
	public String roomList(HttpServletRequest req, Model model) {
		System.out.println("roomList()");
		
		model.addAttribute("req", req);
		String viewPage = roomListHandler.process(model);
		
		return viewPage;
	}
	
	//∞¥Ω«¡§∫∏
	@RequestMapping("/roomInfo")
	public String roomInfo(Model model) {
		System.out.println("roomInfo()");
		return "/hotel/roomInfo";
	}
	
	//∞¥Ω«µÓ∑œ
	@RequestMapping("/roomAddForm")
	public String roomAddForm(Model model) {
		System.out.println("roomAddForm()");
		return "/hotel/roomAddForm";
	}
	
<<<<<<< HEAD
//<<<<<<< HEAD
//	//∞¥Ω«µÓ∑œ
//	@Autowired
//	RoomAddProHandler roomAddProHandler;
//	@RequestMapping("/roomAddPro")
//	public String roomAddPro(HttpServletRequest req, Model model) {
//		System.out.println("roomAddPro()");
//		
//		model.addAttribute("req", req);
//		String viewPage = roomAddProHandler.process(model);
//		
//		return viewPage;
//	}
//	
//
//=======
//>>>>>>> cf41f35c3fd7a3b6e34794d90ab3f1bc00a2a5e4
=======

	//∞¥Ω«µÓ∑œ
	@Autowired
	RoomAddProHandler roomAddProHandler;
	@RequestMapping("/roomAddPro")
	public String roomAddPro(HttpServletRequest req, Model model) {
		System.out.println("roomAddPro()");
		
		model.addAttribute("req", req);
		String viewPage = roomAddProHandler.process(model);
		
		return viewPage;
	}
	


>>>>>>> 1e28e8f7517edc1f6684a295fbd442c476773800
}
