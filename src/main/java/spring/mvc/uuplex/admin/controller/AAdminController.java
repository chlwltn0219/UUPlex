package spring.mvc.uuplex.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.admin.handler.MemberListHandler;
import spring.mvc.uuplex.admin.handler.MemberViewHandler;
import spring.mvc.uuplex.admin.handler.UpgradeHandler;
import spring.mvc.uuplex.admin.handler.UpgradeProHandler;

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
	
	@Autowired
	UpgradeHandler upgradeHandler;
	@RequestMapping("/noneSM/upgrade")
	public String upgrade(HttpServletRequest req, Model model) {
		
		System.out.println("등업창");
		
		model.addAttribute("req", req);
		
		String viewPage = upgradeHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	UpgradeProHandler upgradeProHandler;
	@RequestMapping("/upgradePro")
	public String upgradePro(HttpServletRequest req, Model model) {
		
		System.out.println("등업처리");
		
		model.addAttribute("req", req);
		
		String viewPage = upgradeProHandler.process(model);

		return viewPage;
	}

}
