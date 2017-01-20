package spring.mvc.uuplex.fitness.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/fitness")
public class FFrontController{

	// 최지수 : 피트니스 메인
	@RequestMapping("")
	public String list(Model model){
		String viewPage = "fitness/user/fit_main";
		return viewPage;
	}
	
	// 최지수 : 피트니스 관리자 - 종목 등록
	@RequestMapping("/manage/sports/list")
	public String manageSportsList(Model model){
		String viewPage = "fitness/manage/sports_list";
		return viewPage;
	}
	
}
