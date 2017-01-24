package spring.mvc.uuplex.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.movie.handler.AddMovieInfoHandler;
import spring.mvc.uuplex.movie.handler.GetMovieInfoHandler;

@Controller
@RequestMapping("/c-box")
public class MFrontController {

	@RequestMapping("")
	public String list() {
		System.out.println("c-box main");

		String viewPage = "c-box/Movie_main";

		return viewPage;
	}

	// 유영원 >메인>>영화정보관리
	@RequestMapping("/ManageMovieInfo")
	public String ManageMovieInfo() {
		System.out.println("ManageMovieInfo");

		String viewPage = "c-box/ManageMovieInfo";

		return viewPage;
	}

	// 유영원 >영화정보관리>>영화정보추가
	@Autowired
	AddMovieInfoHandler addMovieInfoHandler;
	
	@RequestMapping("/AddMovieInfo")
	public String AddMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("AddMovieInfo");

		// 모델에 요청 담기
		model.addAttribute("req", req);

		// 핸들러에 모델 보내기
		String viewPage = addMovieInfoHandler.process(model);

		return viewPage;
	}

	// 유영원>영화정보관리>>영화정보추가처리
	@RequestMapping("/addMoviePro")
	public String addMovieInfoPro() {
		System.out.println("addMoviePro");

		String viewPage = "c-box/addMoviePro";

		return viewPage;
	}

	// 박주은>영화정보가져오기
	@Autowired
	GetMovieInfoHandler getMovieInfoHandler;
	@RequestMapping("/getMovieInfo")
	public String getMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("getMovieInfo");

		model.addAttribute("req", req);

		// 핸들러에 모델 보내기
		String viewPage = getMovieInfoHandler.process(model);

		return viewPage;
	}

}
