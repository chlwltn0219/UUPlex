package spring.mvc.uuplex.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.admin.handler.DeleteProHandler;
import spring.mvc.uuplex.admin.handler.LoginProHandler;
import spring.mvc.uuplex.admin.handler.LogoutProHandler;
import spring.mvc.uuplex.admin.handler.MemInfoHandler;
import spring.mvc.uuplex.admin.handler.MemModifyFormHandler;
import spring.mvc.uuplex.admin.handler.MemModifyProHandler;
import spring.mvc.uuplex.admin.handler.MemReserveHandler;

@Controller
public class AHeaderController {
	
	@RequestMapping("/introduce")
	public String introduce(Model model) {
		
		System.out.println("소개페이지");
		
		return "/main/mainHeader/introduce";
	}
	
	@RequestMapping("/roadMap")
	public String roadMap(Model model) {
		
		System.out.println("오시는길");
		
		return "/main/mainHeader/roadMap";
	}
	
	@RequestMapping("/floor")
	public String floor(Model model) {
		
		System.out.println("층별안내도");
		
		return "/main/floor/floor";
	}
	
	
	@RequestMapping("noneSM/loginForm")
	public String loginForm(Model model) {
		
		System.out.println("로그인페이지");

		return "/main/login/loginForm";
	}
	
	@Autowired
	LoginProHandler loginProHandler;
	@RequestMapping("/loginPro")
	public String loginPro(HttpServletRequest req, Model model) {
		
		System.out.println("로그인처리");
		
		model.addAttribute("req", req);
		
		String viewPage = loginProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	LogoutProHandler logoutProHandler;
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req, Model model) {
		
		System.out.println("로그아웃");
		
		model.addAttribute("req", req);
		
		String viewPage = logoutProHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	MemInfoHandler memInfoHandler;
	@RequestMapping("/memInfo")
	public String memInfo(HttpServletRequest req, Model model) {
		
		System.out.println("내정보페이지");
		
		model.addAttribute("req", req);
		
		String viewPage = memInfoHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	MemModifyFormHandler memModifyFormHandler;
	@RequestMapping("/memModifyForm")
	public String memModifyForm(HttpServletRequest req, Model model) {
		
		System.out.println("내정보수정 페이지");
		
		model.addAttribute("req", req);
		
		String viewPage = memModifyFormHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	MemReserveHandler memReserveHandler;
	@RequestMapping("/memReserve")
	public String memReserve(HttpServletRequest req, Model model) {
		
		System.out.println("내정보수정 페이지");
		
		model.addAttribute("req", req);
		
		String viewPage = memReserveHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	MemModifyProHandler memModifyProHandler;
	@RequestMapping("/memModifyPro")
	public String memModifyPro(HttpServletRequest req, Model model) {
		
		System.out.println("내정보수정 처리");
		
		model.addAttribute("req", req);
		
		String viewPage = memModifyProHandler.process(model);

		return viewPage;
	}
	
	@RequestMapping("/noneSM/deleteForm")
	public String deleteForm(Model model) {
		
		System.out.println("회원탈퇴 비밀번호 확인");
		
		return "/main/mainHeader/deletePWChk";
	}
	
	@Autowired
	DeleteProHandler deleteProHandler;
	@RequestMapping("/deletePro")
	public String deletePro(HttpServletRequest req, Model model) {
		
		System.out.println("회원탈퇴 처리");
		
		model.addAttribute("req", req);
		
		String viewPage = deleteProHandler.process(model);

		return viewPage;
	}

}
