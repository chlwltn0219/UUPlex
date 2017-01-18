package spring.mvc.uuplex.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.admin.handler.CommandHandler;

@Controller
public class AFrontController {
	
	CommandHandler command;
	
	@RequestMapping("/main")
	public String main(Model model) {
		
		System.out.println("main������");
		
		return "/decorator/main_decorator";
	}
	
	@RequestMapping("/inputForm")
	public String inputForm(Model model) {
		
		System.out.println("ȸ������������");

		return "/main/inputForm";
	}

}
