package spring.mvc.uuplex.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/c-box")
public class MFrontController{

	@RequestMapping("")
	public String list(){
		
		System.out.println("c-box main");
		
		String viewPage = "c-box/Movie_main";
		
		return viewPage;
	}
	@RequestMapping("/main")
	public String main(){
		
		String viewPage = "c-box/main";
		
		return viewPage;
	}
	@RequestMapping("/ManageMovieInfo")
	public String ManageMovieInfo(){
		
		String viewPage = "c-box/ManageMovieInfo";
		
		
		return viewPage;
	}
	@RequestMapping("/youtube")
	public String youtube(){
		
		String viewPage = "c-box/youtube";
		
		return viewPage;
	}
}
