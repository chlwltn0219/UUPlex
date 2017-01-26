package spring.mvc.uuplex.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.movie.handler.AddMovieInfoHandler;
import spring.mvc.uuplex.movie.handler.AddReviewHandler;
import spring.mvc.uuplex.movie.handler.GetMovieInfoHandler;
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

<<<<<<< HEAD
	// 占쏙옙占쏙옙占쏙옙 >占쏙옙占쏙옙>>占쏙옙화占쏙옙占쏙옙占쏙옙占쏙옙
	@RequestMapping("/manage/movie/inputForm")
	public String inputForm() {
		System.out.println("movie_input");
=======
	// 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 >占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲>>占쎈쐻占쎈짗占쎌굲占쎌넅占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
	@RequestMapping("/ManageMovieInfo")
	public String ManageMovieInfo() {
		System.out.println("ManageMovieInfo");
>>>>>>> 7a5850533ded6377adfd19ff75739d07e90a043a

		String viewPage = "/c-box/manage/movie_input";

		return viewPage;
	}

	// 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 >占쎈쐻占쎈짗占쎌굲占쎌넅占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲>>占쎈쐻占쎈짗占쎌굲占쎌넅占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈솯�ⓦ끉�굲
	@Autowired
	AddMovieInfoHandler addMovieInfoHandler;
	
	@RequestMapping("/manage/movie/add")
	public String AddMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("movie_inputPro");

		// 占쎈쐻占쎈＃占쎈쑞占쎌뒻占쎌굲 占쎈쐻占쎈짗占쎌굲筌ｏ옙 占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占�
		model.addAttribute("req", req);

		// 占쎈쐻占쎈솓占쎈굶占쎌쑎占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
		String viewPage = addMovieInfoHandler.process(model);

		return viewPage;
	}

	// 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲>占쎈쐻占쎈짗占쎌굲占쎌넅占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲>>占쎈쐻占쎈짗占쎌굲占쎌넅占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈솯�ⓦ끉�굲筌ｌ꼪�쐻占쎈짗占쎌굲
	@RequestMapping("/addMoviePro")
	public String addMovieInfoPro() {
		System.out.println("addMoviePro");

		String viewPage = "c-box/manage/addMoviePro";

		return viewPage;
	}

	// 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲>占쎈쐻占쎈짗占쎌굲占쎌넅占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
	@Autowired
	GetMovieInfoHandler getMovieInfoHandler;

	@RequestMapping("/getMovieInfo")
	public String getMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("getMovieInfo");

		model.addAttribute("req", req);

		// 占쎈쐻占쎈솓占쎈굶占쎌쑎占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
		String viewPage = getMovieInfoHandler.process(model);

		return viewPage;
	}
	
	// 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲>占쎈쐻占쎈짗占쎌굲占쎌넅占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占�
	@Autowired
	MovieListHandler movieListHandler;
	@RequestMapping("/user/movie_list")
	public String movieList(Model model) {
		System.out.println("movie_list");

		model.addAttribute("contentPage", "user/movie_list.jsp");
		String viewPage = movieListHandler.process(model);

		return viewPage;
	}
	
	//박주은 : 영화 상세정보
	@Autowired
	MovieDetailHandler movieDetailHandler;
	
	@RequestMapping("/movie_detail")
	public String sportsDetail(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = movieDetailHandler.process(model);
		return viewPage;
	}
	
<<<<<<< HEAD
	//박주은 : 관리자 영화 목록
	@Autowired
	ManageMovieHandler manageMovieHandler;
	
	@RequestMapping("/manage_movie")
	public String manage_movie(HttpServletRequest req, Model model){
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
=======
	@RequestMapping("/detail")
	public String detail(){
		
		System.out.println("detail");
		
		String viewPage = "c-box/movie_datail";
		
>>>>>>> 7a5850533ded6377adfd19ff75739d07e90a043a
		return viewPage;
	}
}
