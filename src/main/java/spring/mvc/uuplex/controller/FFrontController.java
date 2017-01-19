package spring.mvc.uuplex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/fitness")
public class FFrontController{

	// 피트니스 메인
	@RequestMapping("")
	public String list(Model model){
		String viewPage = "fitness/fit_main";
		return viewPage;
	}
}
