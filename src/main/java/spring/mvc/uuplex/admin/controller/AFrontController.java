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
		
		System.out.println("main페이지");
		
		return "/decorator/main_decorator";
	}
	
	@RequestMapping("/inputForm")
	public String inputForm(Model model) {
		
		System.out.println("회원가입페이지");

		return "/main/inputForm";
	}

}
