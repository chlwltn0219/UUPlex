package spring.mvc.uuplex.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.movie.handler.AddMovieInfoHandler;
import spring.mvc.uuplex.movie.handler.AddReviewHandler;
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

	// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 >�뜝�룞�삕�뜝�룞�삕>>�뜝�룞�삕�솕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕
	@RequestMapping("/ManageMovieInfo")
	public String ManageMovieInfo() {
		System.out.println("ManageMovieInfo");

		String viewPage = "c-box/ManageMovieInfo";

		return viewPage;
	}

	// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 >�뜝�룞�삕�솕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕>>�뜝�룞�삕�솕�뜝�룞�삕�뜝�룞�삕�뜝�뙥怨ㅼ삕
	@Autowired
	AddMovieInfoHandler addMovieInfoHandler;

	@RequestMapping("/AddMovieInfo")
	public String AddMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("AddMovieInfo");

		// �뜝�룣�뜽�슱�삕 �뜝�룞�삕泥� �뜝�룞�삕�뜝占�
		model.addAttribute("req", req);

		// �뜝�뙓�뱾�윭�뜝�룞�삕 �뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕
		String viewPage = addMovieInfoHandler.process(model);

		return viewPage;
	}

	// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕>�뜝�룞�삕�솕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕>>�뜝�룞�삕�솕�뜝�룞�삕�뜝�룞�삕�뜝�뙥怨ㅼ삕泥섇뜝�룞�삕
	@RequestMapping("/addMoviePro")
	public String addMovieInfoPro() {
		System.out.println("addMoviePro");

		String viewPage = "c-box/addMoviePro";

		return viewPage;
	}

	// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕>�뜝�룞�삕�솕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕
	@Autowired
	GetMovieInfoHandler getMovieInfoHandler;

	@RequestMapping("/getMovieInfo")
	public String getMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("getMovieInfo");

		model.addAttribute("req", req);

		// �뜝�뙓�뱾�윭�뜝�룞�삕 �뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕
		String viewPage = getMovieInfoHandler.process(model);

		return viewPage;
	}
	
	// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕>�뜝�룞�삕�솕�뜝�룞�삕�뜝占�
	@Autowired
	MovieListHandler movieListHandler;
	@RequestMapping("/movie_list")
	public String movieList(Model model) {
		System.out.println("movie_list");

		model.addAttribute("contentPage", "movie_list.jsp");
		String viewPage = movieListHandler.process(model);

		return viewPage;
	}
	
<<<<<<< HEAD
	// ������ >��ȭ������>>�����߰�(�����)
	@Autowired
	AddReviewHandler addReviewHandler;

	@RequestMapping("/addReview")
	public String addReview(HttpServletRequest req, Model model) {
		System.out.println("addReview");

		model.addAttribute("req", req);

		String viewPage = addReviewHandler.process(model);

		return viewPage;
	}
	
	@RequestMapping("/addReviewPro")
	public String addReviewPro(HttpServletRequest req, Model model) {
		System.out.println("addReviewPro");


		return "c-box/addReviewPro";
=======
	@Autowired
	MovieDetailHandler movieDetailHandler;
	
	@RequestMapping("/movie_detail")
	public String sportsDetail(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = movieDetailHandler.process(model);
		return viewPage;
	}
	
	@RequestMapping("/detail")
	public String detail(){
		
		System.out.println("detail");
		
		String viewPage = "c-box/movie_datail";
		
		return viewPage;
>>>>>>> 8149e23b0760a8022850150552777270f27ff254
	}
}
