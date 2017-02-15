package spring.mvc.uuplex.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.admin.handler.CalculateHandler;
import spring.mvc.uuplex.admin.handler.DateSrcHandler;
import spring.mvc.uuplex.admin.handler.IdSrcHandler;
import spring.mvc.uuplex.admin.handler.MemberChartHandler;
import spring.mvc.uuplex.admin.handler.MemberListHandler;
import spring.mvc.uuplex.admin.handler.MemberViewHandler;
import spring.mvc.uuplex.admin.handler.ReserveAdminHandler;
import spring.mvc.uuplex.admin.handler.ReserveListHandler;
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
	
	
	@Autowired
	ReserveListHandler reserveListHandler;
	@RequestMapping("/reserveList")
	public String reserveList(HttpServletRequest req, Model model) {
		
		System.out.println("예약관리 페이지");
		
		model.addAttribute("req", req);
		
		String viewPage = reserveListHandler.process(model);

		return viewPage;
	}
	
	@RequestMapping("/noneSM/dateCnt")
	public String dateCnt(Model model) {
		
		System.out.println("날짜계산 AJAX");

		return "/main/reserve/dateCnt";
	}
	
	
	@Autowired
	ReserveAdminHandler reserveAdminHandler;
	@RequestMapping("/noneSM/reservAdmin")
	public String reserveAdmin(HttpServletRequest req, Model model) {
		
		System.out.println("예약 리스트 카테고리별 AJAX");
		
		model.addAttribute("req", req);
		
		String viewPage = reserveAdminHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	DateSrcHandler dateSrcHandler;
	@RequestMapping("/noneSM/dateSrc")
	public String dateSrc(HttpServletRequest req, Model model) {
		
		System.out.println("예약 리스트 날짜별 AJAX");
		
		model.addAttribute("req", req);
		
		String viewPage = dateSrcHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	IdSrcHandler idSrcHandler;
	@RequestMapping("/noneSM/idSrc")
	public String idSrc(HttpServletRequest req, Model model) {
		
		System.out.println("예약 리스트 아이디별 AJAX");
		
		model.addAttribute("req", req);
		
		String viewPage = idSrcHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	MemberChartHandler memberChartHandler;
	@RequestMapping("/memberChart")
	public String memberChart(HttpServletRequest req, Model model) {
		
		System.out.println("회원 통계");
		
		model.addAttribute("req", req);
		
		String viewPage = memberChartHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	CalculateHandler calculateHandler;
	@RequestMapping("/calculate")
	public String calculate(HttpServletRequest req, Model model) {
		
		System.out.println("매장 정산");
		
		model.addAttribute("req", req);
		
		String viewPage = calculateHandler.process(model);

		return viewPage;
	}

}
