package spring.mvc.uuplex.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.admin.handler.MemberListHandler;
import spring.mvc.uuplex.admin.handler.MemberViewHandler;

@Controller
public class AAdminController {
	
	@Autowired
	MemberListHandler memberListHandler;
	@RequestMapping("/memberList")
	public String memberList(HttpServletRequest req, Model model) {
		
		System.out.println("회원관리 페이지");
		
		model.addAttribute("req", req);
		
		String viewPage = memberListHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	MemberViewHandler memberViewHandler;
	@RequestMapping("/noneSM/memberView")
	public String memberView(HttpServletRequest req, Model model) {
		
		System.out.println("회원관리 상세 페이지");
		
		model.addAttribute("req", req);
		
		String viewPage = memberViewHandler.process(model);

		return viewPage;
	}

}
