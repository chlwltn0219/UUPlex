package spring.mvc.uuplex.hotel.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.hotel.handler.HCommandHandler;
import spring.mvc.uuplex.hotel.handler.RoomListHandler;

@Controller
public class HFrontController {

	HCommandHandler command;
	
	//����������
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
	
	//���Ǹ��
	@Autowired
	RoomListHandler roomListHandler;
	@RequestMapping("/roomList")
	public String roomList(HttpServletRequest req, Model model) {
		System.out.println("roomList()");
		
		model.addAttribute("req", req);
		String viewPage = roomListHandler.process(model);
		
		return viewPage;
	}
	
	//��������
	@RequestMapping("/roomInfo")
	public String roomInfo(Model model) {
		System.out.println("roomInfo()");
		return "/hotel/roomInfo";
	}
	
	//���ǵ��
	@RequestMapping("/roomAddForm")
	public String roomAddForm(Model model) {
		System.out.println("roomAddForm()");
		return "/hotel/roomAddForm";
	}

}
