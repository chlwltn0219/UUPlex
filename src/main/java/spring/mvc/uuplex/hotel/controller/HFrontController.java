package spring.mvc.uuplex.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.hotel.handler.HCommandHandler;

@Controller
public class HFrontController {

	HCommandHandler command;
	
	//����������
	@RequestMapping("/main")
	public String main(Model model) {
		System.out.println("main()");
		return "/hotel/main";
	}
	
}
