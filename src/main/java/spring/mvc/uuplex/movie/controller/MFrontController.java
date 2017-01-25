package spring.mvc.uuplex.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.movie.handler.AddMovieInfoHandler;
import spring.mvc.uuplex.movie.handler.GetMovieInfoHandler;
import spring.mvc.uuplex.movie.handler.MovieDetailHandler;
import spring.mvc.uuplex.movie.handler.MovieListHandler;

@Controller
@RequestMapping("/c-box")
public class MFrontController {

	@RequestMapping("")
	public String list() {
		System.out.println("c-box main");

		String viewPage = "c-box/Movie_main";

		return viewPage;
	}

	// 占쏙옙占쏙옙占쏙옙 >占쏙옙占쏙옙>>占쏙옙화占쏙옙占쏙옙占쏙옙占쏙옙
	@RequestMapping("/ManageMovieInfo")
	public String ManageMovieInfo() {
		System.out.println("ManageMovieInfo");

		String viewPage = "c-box/ManageMovieInfo";

		return viewPage;
	}

	// 占쏙옙占쏙옙占쏙옙 >占쏙옙화占쏙옙占쏙옙占쏙옙占쏙옙>>占쏙옙화占쏙옙占쏙옙占쌩곤옙
	@Autowired
	AddMovieInfoHandler addMovieInfoHandler;

	@RequestMapping("/AddMovieInfo")
	public String AddMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("AddMovieInfo");

		// 占쏜델울옙 占쏙옙청 占쏙옙占�
		model.addAttribute("req", req);

		// 占쌘들러占쏙옙 占쏙옙 占쏙옙占쏙옙占쏙옙
		String viewPage = addMovieInfoHandler.process(model);

		return viewPage;
	}

	// 占쏙옙占쏙옙占쏙옙>占쏙옙화占쏙옙占쏙옙占쏙옙占쏙옙>>占쏙옙화占쏙옙占쏙옙占쌩곤옙처占쏙옙
	@RequestMapping("/addMoviePro")
	public String addMovieInfoPro() {
		System.out.println("addMoviePro");

		String viewPage = "c-box/addMoviePro";

		return viewPage;
	}

	// 占쏙옙占쏙옙占쏙옙>占쏙옙화占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
	@Autowired
	GetMovieInfoHandler getMovieInfoHandler;

	@RequestMapping("/getMovieInfo")
	public String getMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("getMovieInfo");

		model.addAttribute("req", req);

		// 占쌘들러占쏙옙 占쏙옙 占쏙옙占쏙옙占쏙옙
		String viewPage = getMovieInfoHandler.process(model);

		return viewPage;
	}
	
	// 占쏙옙占쏙옙占쏙옙>占쏙옙화占쏙옙占�
	@Autowired
	MovieListHandler movieListHandler;
	@RequestMapping("/movie_list")
	public String movieList(Model model) {
		System.out.println("movie_list");

		model.addAttribute("contentPage", "movie_list.jsp");
		String viewPage = movieListHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	MovieDetailHandler movieDetailHandler;
	
	@RequestMapping("/movie_detail")
	public String sportsDetail(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = movieDetailHandler.process(model);
		return viewPage;
	}
}
