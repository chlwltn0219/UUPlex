package spring.mvc.uuplex.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MFrontController{

	@RequestMapping("/c-box")
	public String list(){
		
		String viewPage = "c-box/Movie_main";
		
		return viewPage;
	}
}
