package spring.mvc.uuplex.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.admin.handler.ConfirmIdHandler;
import spring.mvc.uuplex.admin.handler.InputProHandler;

@Controller
public class AFrontController {
	
	@RequestMapping("/main")
	public String main(Model model) {
		
		System.out.println("main�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕");
		
		return "/main/main3";
	}
	
	@RequestMapping("/input")
	public String input(Model model) {
		
		System.out.println("�쉶�뜝�룞�삕�뜝�룞�삕�뜝�뙃�뼲�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝占�");

		return "/main/InputMember/input";
	}
	
	@RequestMapping("/inputForm")
	public String inputForm(Model model) {
		
		System.out.println("�쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕");

		return "/main/InputMember/inputForm";
	}
	
	@Autowired
	InputProHandler inputProHandler;
	@RequestMapping("/inputPro")
	public String inputPro(HttpServletRequest req, Model model) {
		
		System.out.println("�쉶�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕泥섇뜝�룞�삕");
		
		model.addAttribute("req", req);
		
		String viewPage = inputProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	ConfirmIdHandler confirmIdHandler;
	@RequestMapping("/confirmId")
	public String confirmId(HttpServletRequest req, Model model) {
		
		System.out.println("�뜝�뙥釉앹삕�솗�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕");
		
		model.addAttribute("req", req);
		
		String viewPage = confirmIdHandler.process(model);

		return viewPage;
	}
	
	@RequestMapping("noneSM/pwdChk")
	public String pwdChk(Model model) {
		
		System.out.println("pwdChk()");
		
		return "/main/InputMember/pwdChk";
	}

}
