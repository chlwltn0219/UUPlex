package spring.mvc.uuplex.movie.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.movie.handler.AddMovieInfoHandler;
import spring.mvc.uuplex.movie.handler.AddReviewHandler;
import spring.mvc.uuplex.movie.handler.AddScheduleHandler;
import spring.mvc.uuplex.movie.handler.DeleteMovieHandler;
import spring.mvc.uuplex.movie.handler.DeleteReviewHandler;
import spring.mvc.uuplex.movie.handler.DeleteScheduleHandler;
import spring.mvc.uuplex.movie.handler.GetTheaterHandler;
import spring.mvc.uuplex.movie.handler.ManageMovieHandler;
import spring.mvc.uuplex.movie.handler.ManageScheduleHandler;
import spring.mvc.uuplex.movie.handler.ManageTheaterHandler;
import spring.mvc.uuplex.movie.handler.ModifyMovieHandler;
import spring.mvc.uuplex.movie.handler.ModifyMovieProHandler;
import spring.mvc.uuplex.movie.handler.ModifyTheaterHandler;
import spring.mvc.uuplex.movie.handler.MovieDetailHandler;
import spring.mvc.uuplex.movie.handler.MovieListHandler;
import spring.mvc.uuplex.movie.handler.MovieScheduleHandler;
import spring.mvc.uuplex.movie.handler.ReviewListHandler;

@Controller
@RequestMapping("/c-box")
public class MFrontController {

	@RequestMapping("")
	public String list() {
		System.out.println("c-box main");

		String viewPage = "c-box/Movie_main";

		return viewPage;
	}

	// 유영원 : 영화 등록
	@RequestMapping("/manage/movie/inputForm")
	public String movieInputForm() {
		System.out.println("movie_input");
		String viewPage = "/c-box/manage/movie_input";

		return viewPage;
	}

	// 유영원 : 영화 등록
	@Autowired
	AddMovieInfoHandler addMovieInfoHandler;

	@RequestMapping("/manage/movie/add")
	public String AddMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("movie_input");
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

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
		
		System.out.println("detail");
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

	//유영원 : 리뷰 추가
	@Autowired
	AddReviewHandler addReviewHandler;

	@RequestMapping("/user/add_review")
	public String add_review(HttpServletRequest req, Model model) {
		
		model.addAttribute("req", req);
		String viewPage = addReviewHandler.process(model);

		return viewPage;
	}
	
	
	//유영원 : 관리자 영화 정보 수정
	@Autowired
	ModifyMovieHandler modifyMovieHandler;

	@RequestMapping("/manage/movie/modify")
	public String modifyMovie(HttpServletRequest req, Model model) {
		System.out.println("movie_modify");
				
		model.addAttribute("req", req);
		String viewPage = modifyMovieHandler.process(model);
				
		return viewPage;
	}
	
	//유영원 : 리뷰 삭제
	@Autowired
	DeleteReviewHandler deleteReviewHandler;

	@RequestMapping("/user/review/delete")
	public String deleteReview(HttpServletRequest req, Model model) {
		System.out.println("review_delete");	
		model.addAttribute("req", req);
		String viewPage = deleteReviewHandler.process(model);

		return viewPage;
	}

	// 박주은 : 상영관 관리
	@Autowired
	ManageTheaterHandler manageTheaterHandler;

	@RequestMapping("/manage_theater")
	public String manage_theater(HttpServletRequest req, Model model) {
		System.out.println("manage_theater");

		model.addAttribute("req", req);
		String viewPage = manageTheaterHandler.process(model);
		return viewPage;
	}

	// 박주은 : 상영관 등록==============================
	@Autowired
	GetTheaterHandler getTheaterHandler;

	@RequestMapping("/manage/theater/inputForm")
	public String theaterInputForm(HttpServletRequest req, Model model) {
		System.out.println("theater_input");

		model.addAttribute("req", req);
		String viewPage = getTheaterHandler.process(model);

		return viewPage;
	}
	
	// 박주은 : 상영관 수정
	@Autowired
	ModifyTheaterHandler modifyTheaterHandler;

	@RequestMapping("/manage/theater/modify")
	public String modifytheater(HttpServletRequest req, Model model) {
		System.out.println("theater_modify");

		model.addAttribute("req", req);
		String viewPage = modifyTheaterHandler.process(model);

		return viewPage;
	}
	

	// 박주은 : 상영스케줄 관리
	@Autowired
	ManageScheduleHandler manageScheduleHandler;

	@RequestMapping("/manage_schedule")
	public String manage_schedule(HttpServletRequest req, Model model) {
		System.out.println("manage_schedule");

		model.addAttribute("req", req);
		String viewPage = manageScheduleHandler.process(model);
		return viewPage;
	}

	// 박주은 : 상영일정 등록폼
	@Autowired
	MovieScheduleHandler movieScheduleHandler;

	@RequestMapping("/manage/schedule/inputForm")
	public String scheduleInputForm(HttpServletRequest req, Model model) {
		System.out.println("schedule_input");
		model.addAttribute("req", req);
		String viewPage = movieScheduleHandler.process(model);
		return viewPage;
	}

	// 박주은 : 상영일정 등록
	@Autowired
	AddScheduleHandler addScheduleHandler;

	@RequestMapping("/manage/schedule/add")
	public String AddSchedule(HttpServletRequest req, Model model) {
		System.out.println("Schedule_input");
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		model.addAttribute("req", req);
		String viewPage = addScheduleHandler.process(model);
		return viewPage;
	}

	// 박주은 : 상영일정 삭제
	@Autowired
	DeleteScheduleHandler deleteScheduleHandler;

	@RequestMapping("/manage/schedule/delete")
	public String DeleteSchedule(HttpServletRequest req, Model model) {
		System.out.println("Schedule_delete");
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		model.addAttribute("req", req);
		String viewPage = deleteScheduleHandler.process(model);
		return viewPage;
	}
	
	//유영원 : 관리자 영화 정보 수정 처리
	@Autowired
	ModifyMovieProHandler modifyMovieProHandler;

	@RequestMapping("/manage/movie/modifyPro")
	public String modifyMoviePro(HttpServletRequest req, Model model) {
		System.out.println("movie_modifyPro");
					
		model.addAttribute("req", req);
		String viewPage = modifyMovieProHandler.process(model);
					
		return viewPage;
	}
	
	//유영원 : 관리자 영화 정보 수정 처리
	@Autowired
	DeleteMovieHandler deleteMovieHandler;

	@RequestMapping("/manage/movie/delete")
	public String deleteMovie(HttpServletRequest req, Model model) {
		System.out.println("movie_delete");
						
		model.addAttribute("req", req);
		String viewPage = deleteMovieHandler.process(model);
						
		return viewPage;
	}
	
	//유영원 : 리뷰 리스트
	@Autowired
	ReviewListHandler reviewListHandler;

	@RequestMapping("/user/review/list")
	public String reviewList(HttpServletRequest req, Model model) {
		System.out.println("review_list");
							
		model.addAttribute("req", req);
		String viewPage = reviewListHandler.process(model);
							
		return viewPage;
	}

}
