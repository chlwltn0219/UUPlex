package spring.mvc.uuplex.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.movie.handler.AddMovieInfoHandler;
import spring.mvc.uuplex.movie.handler.AddReviewHandler;
import spring.mvc.uuplex.movie.handler.ManageMovieHandler;
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

	// 영화 등록
	@RequestMapping("/manage/movie/inputForm")
	public String movieInputForm() {
		System.out.println("movie_input");
		String viewPage = "/c-box/manage/movie_input";

		return viewPage;
	}

	@Autowired
	AddMovieInfoHandler addMovieInfoHandler;

	@RequestMapping("/manage/movie/add")
	public String AddMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("movie_inputPro");

		model.addAttribute("req", req);
		
		String viewPage = addMovieInfoHandler.process(model);

		return viewPage;
	}

	@RequestMapping("/addMoviePro")
	public String addMovieInfoPro() {
		System.out.println("addMoviePro");

		String viewPage = "c-box/manage/addMoviePro";

		return viewPage;
	}

	// 고객 : 영화 목록
	@Autowired
	MovieListHandler movieListHandler;

	@RequestMapping("/user/movie_list")
	public String movieList(Model model) {
		System.out.println("movie_list");

		model.addAttribute("contentPage", "user/movie_list.jsp");
		String viewPage = movieListHandler.process(model);

		return viewPage;
	}

	// 박주은 : 영화 상세정보
	@Autowired
	MovieDetailHandler movieDetailHandler;

	@RequestMapping("/movie_detail")
	public String sportsDetail(HttpServletRequest req, Model model) {
		model.addAttribute("req", req);
		String viewPage = movieDetailHandler.process(model);
		return viewPage;
	}

	// 박주은 : 관리자 영화 목록
	@Autowired
	ManageMovieHandler manageMovieHandler;

	@RequestMapping("/manage_movie")
	public String manage_movie(HttpServletRequest req, Model model) {
		System.out.println("manage_movie");

		model.addAttribute("req", req);
		String viewPage = manageMovieHandler.process(model);
		return viewPage;
	}

	@Autowired
	AddReviewHandler addReviewHandler;

	@RequestMapping("/user/add_review")
	public String add_review() {
		String viewPage = "/c-box/manage/movie_input";

		System.out.println("detail");
		return viewPage;
	}
}
