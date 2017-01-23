package spring.mvc.uuplex.fitness.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.fitness.handler.FSportsAddHandler;
import spring.mvc.uuplex.fitness.handler.FSportsListHandler;

@Controller
@RequestMapping("/fitness")
public class FFrontController{
	
	@Autowired
	FSportsListHandler sportsListHandler;
	@Autowired
	FSportsAddHandler sportsAddHandler;

	// 최지수 : 피트니스 메인
	@RequestMapping("")
	public String list(Model model){
		String viewPage = "fitness/user/fit_main";
		return viewPage;
	}
	
	// 최지수 : 피트니스 관리자 - 종목 등록
	@RequestMapping("/manage/sports/list")
	public String manageSportsList(HttpServletRequest req, Model model){
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("req", req);
		String viewPage = sportsListHandler.process(model);
		return viewPage;
	}
	
	// 최지수 : 피트니스 관리자 - 종목 추가
	@RequestMapping("/manage/sports/add")
	public String sportsAdd(HttpServletRequest req, Model model){
		
		try {
			// 한글 인코딩
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("req", req);
		String viewPage = sportsAddHandler.process(model);
		return viewPage;
	}
	
	@RequestMapping("/sports/detail")
	public String sportsDetail(HttpServletRequest req, Model model){
		
		System.out.println("details");
		model.addAttribute("req", req);
		String viewPage = sportsAddHandler.process(model);
		return viewPage;
	}
	
}
