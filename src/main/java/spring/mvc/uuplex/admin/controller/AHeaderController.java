package spring.mvc.uuplex.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.admin.handler.ConfirmIdHandler;
import spring.mvc.uuplex.admin.handler.LoginProHandler;
import spring.mvc.uuplex.admin.handler.LogoutProHandler;


@Controller
public class AHeaderController {
	
	@RequestMapping("/introduce")
	public String introduce(Model model) {
		
		System.out.println("�Ұ�������");
		
		return "/main/mainHeader/introduce";
	}
	
	@RequestMapping("/roadMap")
	public String roadMap(Model model) {
		
		System.out.println("���ô±�");
		
		return "/main/mainHeader/roadMap";
	}
	
	/*@RequestMapping("/qna")
	public String qna(Model model) {
		
		System.out.println("Q&A");
		
		return "/main/board/qna";
	}*/
	
	/*@RequestMapping("/loginView")
	public String loginView(Model model) {
		
		System.out.println("�α���ȭ��");

		return "/main/login/loginView";
	}*/
	
	@RequestMapping("/loginForm")
	public String loginForm(Model model) {
		
		System.out.println("�α���������");

		return "/main/login/loginForm";
	}
	
	@Autowired
	LoginProHandler loginProHandler;
	@RequestMapping("/loginPro")
	public String loginPro(HttpServletRequest req, Model model) {
		
		System.out.println("�α���ó��");
		
		model.addAttribute("req", req);
		
		String viewPage = loginProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	LogoutProHandler logoutProHandler;
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req, Model model) {
		
		System.out.println("�α׾ƿ�");
		
		model.addAttribute("req", req);
		
		String viewPage = logoutProHandler.process(model);

		return viewPage;
	}

}
