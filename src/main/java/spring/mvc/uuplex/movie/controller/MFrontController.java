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
import spring.mvc.uuplex.movie.handler.AddTheaterHandler;
import spring.mvc.uuplex.movie.handler.ChucheonCntHandler;
import spring.mvc.uuplex.movie.handler.DateScheduleHandler;
import spring.mvc.uuplex.movie.handler.DeleteMovieHandler;
import spring.mvc.uuplex.movie.handler.DeleteReviewHandler;
import spring.mvc.uuplex.movie.handler.DeleteScheduleHandler;
import spring.mvc.uuplex.movie.handler.DeleteTheaterHandler;
import spring.mvc.uuplex.movie.handler.GenderAgeRateHandler;
import spring.mvc.uuplex.movie.handler.GetRankingHandler;
import spring.mvc.uuplex.movie.handler.GetTheaterHandler;
import spring.mvc.uuplex.movie.handler.MReservationHandler;
import spring.mvc.uuplex.movie.handler.MReserveDeleteHandler;
import spring.mvc.uuplex.movie.handler.MReserveListHandler;
import spring.mvc.uuplex.movie.handler.MainRankingHandler;
import spring.mvc.uuplex.movie.handler.ManageMovieHandler;
import spring.mvc.uuplex.movie.handler.ManageScheduleHandler;
import spring.mvc.uuplex.movie.handler.ManageTheaterHandler;
import spring.mvc.uuplex.movie.handler.ModifyMovieHandler;
import spring.mvc.uuplex.movie.handler.ModifyMovieProHandler;
import spring.mvc.uuplex.movie.handler.ModifyTheaterHandler;
import spring.mvc.uuplex.movie.handler.MovieDetailHandler;
import spring.mvc.uuplex.movie.handler.MovieListHandler;
import spring.mvc.uuplex.movie.handler.MovieScheduleHandler;
import spring.mvc.uuplex.movie.handler.OrderByDateHandler;
import spring.mvc.uuplex.movie.handler.RatingOrderHandler;
import spring.mvc.uuplex.movie.handler.ReserveMainHandler;
import spring.mvc.uuplex.movie.handler.ReviewListHandler;
import spring.mvc.uuplex.movie.handler.ScheduleHandler;
import spring.mvc.uuplex.movie.handler.ScreenQuaterHandler;
import spring.mvc.uuplex.movie.handler.SearchOptionHandler;
import spring.mvc.uuplex.movie.handler.TicketHandler;

@Controller
@RequestMapping("/c-box")
public class MFrontController {

	@Autowired
	MainRankingHandler mainRankingHandler;

	@RequestMapping("")
	public String list(HttpServletRequest req, Model model) {
		System.out.println("c-box main");

		model.addAttribute("req", req);
		String viewPage = mainRankingHandler.process(model);

		return viewPage;
	}

	// 영화정보 추가폼
	@RequestMapping("/manage/movie/inputForm")
	public String movieInputForm() {
		System.out.println("movie_input");
		String viewPage = "/c-box/manage/movie_input";

		return viewPage;
	}

	// 영화정보 추가
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

	// 영화정보 추가 처리
	@RequestMapping("/addMoviePro")
	public String addMovieInfoPro() {
		System.out.println("addMoviePro");

		String viewPage = "c-box/manage/addMoviePro";

		return viewPage;
	}

	// 怨좉컼 : �쁺�솕 紐⑸줉
	@Autowired
	MovieListHandler movieListHandler;

	@RequestMapping("/user/movie_list")
	public String movieList(Model model) {
		System.out.println("movie_list");

		model.addAttribute("contentPage", "user/movie_list.jsp");
		String viewPage = movieListHandler.process(model);

		return viewPage;
	}

	// 諛뺤＜�� : �쁺�솕 �긽�꽭�젙蹂�
	@Autowired
	MovieDetailHandler movieDetailHandler;

	@RequestMapping("/movie_detail")
	public String sportsDetail(HttpServletRequest req, Model model) {

		System.out.println("detail");
		model.addAttribute("req", req);
		String viewPage = movieDetailHandler.process(model);
		return viewPage;
	}

	// 諛뺤＜�� : 愿�由ъ옄 �쁺�솕 紐⑸줉
	@Autowired
	ManageMovieHandler manageMovieHandler;

	@RequestMapping("/manage_movie")
	public String manage_movie(HttpServletRequest req, Model model) {
		System.out.println("manage_movie");

		model.addAttribute("req", req);
		String viewPage = manageMovieHandler.process(model);
		return viewPage;
	}

	// �쑀�쁺�썝 : 由щ럭 異붽�
	@Autowired
	AddReviewHandler addReviewHandler;

	@RequestMapping("/user/add_review")
	public String add_review(HttpServletRequest req, Model model) {

		model.addAttribute("req", req);
		String viewPage = addReviewHandler.process(model);

		return viewPage;
	}

	// �쑀�쁺�썝 : 愿�由ъ옄 �쁺�솕 �젙蹂� �닔�젙
	@Autowired
	ModifyMovieHandler modifyMovieHandler;

	@RequestMapping("/manage/movie/modify")
	public String modifyMovie(HttpServletRequest req, Model model) {
		System.out.println("movie_modify");

		model.addAttribute("req", req);
		String viewPage = modifyMovieHandler.process(model);

		return viewPage;
	}

	// �쑀�쁺�썝 : 由щ럭 �궘�젣
	@Autowired
	DeleteReviewHandler deleteReviewHandler;

	@RequestMapping("/user/review/delete")
	public String deleteReview(HttpServletRequest req, Model model) {
		System.out.println("review_delete");
		model.addAttribute("req", req);
		String viewPage = deleteReviewHandler.process(model);

		return viewPage;
	}

	// 諛뺤＜�� : �긽�쁺愿� 愿�由�
	@Autowired
	ManageTheaterHandler manageTheaterHandler;

	@RequestMapping("/manage_theater")
	public String manage_theater(HttpServletRequest req, Model model) {
		System.out.println("manage_theater");

		model.addAttribute("req", req);
		String viewPage = manageTheaterHandler.process(model);
		return viewPage;
	}

	// 諛뺤＜�� : �긽�쁺愿� �벑濡�==============================
	@Autowired
	GetTheaterHandler getTheaterHandler;

	@RequestMapping("/manage/theater/inputForm")
	public String theaterInputForm(HttpServletRequest req, Model model) {
		System.out.println("theater_input");

		model.addAttribute("req", req);
		String viewPage = getTheaterHandler.process(model);

		return viewPage;
	}

	// 諛뺤＜�� : �긽�쁺愿� �닔�젙
	@Autowired
	ModifyTheaterHandler modifyTheaterHandler;

	@RequestMapping("/manage/theater/modify")
	public String modifytheater(HttpServletRequest req, Model model) {
		System.out.println("theater_modify");

		model.addAttribute("req", req);
		String viewPage = modifyTheaterHandler.process(model);

		return viewPage;
	}

	// 諛뺤＜�� : �긽�쁺�뒪耳�以� 愿�由�
	@Autowired
	ManageScheduleHandler manageScheduleHandler;

	@RequestMapping("/manage_schedule")
	public String manage_schedule(HttpServletRequest req, Model model) {
		System.out.println("manage_schedule");

		model.addAttribute("req", req);
		String viewPage = manageScheduleHandler.process(model);
		return viewPage;
	}

	// 諛뺤＜�� : �긽�쁺�씪�젙 �벑濡앺뤌
	@Autowired
	MovieScheduleHandler movieScheduleHandler;

	@RequestMapping("/manage/schedule/inputForm")
	public String scheduleInputForm(HttpServletRequest req, Model model) {
		System.out.println("schedule_input");
		model.addAttribute("req", req);
		String viewPage = movieScheduleHandler.process(model);
		return viewPage;
	}

	// 諛뺤＜�� : �긽�쁺�씪�젙 �벑濡�
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

	// 諛뺤＜�� : �긽�쁺�씪�젙 �궘�젣
	@Autowired
	DeleteScheduleHandler deleteScheduleHandler;

	@RequestMapping("/manage/schedule/delete")
	public String deleteSchedule(HttpServletRequest req, Model model) {
		System.out.println("Schedule_delete");

		model.addAttribute("req", req);
		String viewPage = deleteScheduleHandler.process(model);
		return viewPage;
	}

	// 박주은 : 상영시간표
	@Autowired
	ScheduleHandler scheduleHandler;

	@RequestMapping(value = { "/", "schedule", "schedulechange" })
	public String getschedule(HttpServletRequest req, Model model) {
		System.out.println("Schedule");

		model.addAttribute("req", req);

		String viewPage = scheduleHandler.process(model);
		return viewPage;
	}

	// 박주은 : 영화, 날짜별 상영일정
	@Autowired
	DateScheduleHandler datescheduleHandler;

	@RequestMapping("/dateschedule")
	public String getDateschedule(HttpServletRequest req, Model model) {
		System.out.println("Schedule");

		model.addAttribute("req", req);

		String viewPage = datescheduleHandler.process(model);
		return viewPage;
	}

	// 유영원 : 관리자 영화 정보 수정
	@Autowired
	ModifyMovieProHandler modifyMovieProHandler;

	@RequestMapping("/manage/movie/modifyPro")
	public String modifyMoviePro(HttpServletRequest req, Model model) {
		System.out.println("movie_modifyPro");

		model.addAttribute("req", req);
		String viewPage = modifyMovieProHandler.process(model);

		return viewPage;
	}

	// �쑀�쁺�썝 : 愿�由ъ옄 �쁺�솕 �젙蹂� �닔�젙 泥섎━
	@Autowired
	DeleteMovieHandler deleteMovieHandler;

	@RequestMapping("/manage/movie/delete")
	public String deleteMovie(HttpServletRequest req, Model model) {
		System.out.println("movie_delete");

		model.addAttribute("req", req);
		String viewPage = deleteMovieHandler.process(model);

		return viewPage;
	}

	// �쑀�쁺�썝 : 由щ럭 由ъ뒪�듃
	@Autowired
	ReviewListHandler reviewListHandler;

	@RequestMapping("/user/review/list")
	public String reviewList(HttpServletRequest req, Model model) {
		System.out.println("review_list");

		model.addAttribute("req", req);
		String viewPage = reviewListHandler.process(model);

		return viewPage;
	}

	// �쑀�쁺�썝 : 鍮좊Ⅸ �삁留� �럹�씠吏�
	@Autowired
	ReserveMainHandler reserveMainHandler;

	@RequestMapping("/user/reserve/main")
	public String reserve(Model model) {
		System.out.println("reserve_main");

		model.addAttribute("contentPage", "user/reserve_main.jsp");
		String viewPage = reserveMainHandler.process(model);

		return viewPage;
	}

	// 박주은 : 상영관 등록==============================
	@Autowired
	AddTheaterHandler addTheaterHandler;

	@RequestMapping("/manage/theater/input")
	public String add_theater(HttpServletRequest req, Model model) {
		System.out.println("theater_input");

		model.addAttribute("req", req);
		String viewPage = addTheaterHandler.process(model);
		System.out.println(viewPage);

		return viewPage;
	}

	// 諛뺤＜�� : �긽�쁺愿� �궘�젣
	@Autowired
	DeleteTheaterHandler deleteTheaterHandler;

	@RequestMapping("/manage/theater/delete")
	public String deleteTheater(HttpServletRequest req, Model model) {
		System.out.println("Theater_delete");

		model.addAttribute("req", req);
		String viewPage = deleteTheaterHandler.process(model);
		return viewPage;
	}

	// �쑀�쁺�썝 : 由щ럭 異붿쿇�븯湲�
	@Autowired
	ChucheonCntHandler chucheonCntHandler;

	@RequestMapping("/user/review/chucheonCnt")
	public String chucheonCnt(HttpServletRequest req, Model model) {
		System.out.println("chucheonCnt");

		model.addAttribute("req", req);
		String viewPage = chucheonCntHandler.process(model);

		return viewPage;
	}

	// �쑀�쁺�썝 : �룊�젏 �닚�쑝濡� 由щ럭 由ъ뒪�듃
	@Autowired
	RatingOrderHandler ratingOrderHandler;

	@RequestMapping("/user/review/ratingOrder")
	public String ratingOrder(HttpServletRequest req, Model model) {
		System.out.println("ratingOrder");

		model.addAttribute("req", req);
		String viewPage = ratingOrderHandler.process(model);

		return viewPage;
	}

	// �쑀�쁺�썝 : �삁留� 愿�由� �럹�씠吏�
	@Autowired
	GetRankingHandler getRankingHandler;

	@RequestMapping("/manage_reserve")
	public String reservationRate(Model model) {
		System.out.println("manage_reservation");

		model.addAttribute("contentPage", "manage/manage_reserve.jsp");
		String viewPage = getRankingHandler.process(model);

		return viewPage;

	}

	// 유영원 : 스크린 쿼터
	@Autowired
	ScreenQuaterHandler screenQuaterHandler;

	@RequestMapping("/manage/reserve/screenQuater")
	public String screenquater(HttpServletRequest req, Model model) {
		System.out.println("screenquater");

		model.addAttribute("req", req);
		String viewPage = screenQuaterHandler.process(model);

		return viewPage;
	}

	// 유영원 : 사용자 - 예매 결제 페이지

	@RequestMapping("/reserve_payment")
	public String payment(HttpServletRequest req, Model model) {
		System.out.println("payment");

		model.addAttribute("req", req);
		model.addAttribute("contentPage", "user/reserve_payment.jsp");

		return "c-box/Movie_main";
	}

	// 유영원 : 최신 개봉작 영화 리스트
	@Autowired
	OrderByDateHandler orderByDateHandler;

	@RequestMapping("/orderByDate")
	public String orderByDate(HttpServletRequest req, Model model) {
		System.out.println("orderByDate");

		model.addAttribute("req", req);
		String viewPage = orderByDateHandler.process(model);

		return viewPage;
	}

	// 유영원 : 영화별 상세 예매분포 페이지

	@RequestMapping("/genderAgeRate")
	public String genderAgeRate(HttpServletRequest req, Model model) {
		System.out.println("orderByDate");

		model.addAttribute("req", req);
		String viewPage = "/c-box/manage/genderAgeRate";

		return viewPage;
	}

	// 유영원 : 영화별 상세 분포 차트 데이터 json
	@Autowired
	GenderAgeRateHandler genderAgeRateHandler;

	@RequestMapping("/genderAgeRate_json")
	public String genderAgeRate_json(HttpServletRequest req, Model model) {
		System.out.println("orderByDate");

		model.addAttribute("req", req);
		String viewPage = genderAgeRateHandler.process(model);

		return viewPage;
	}

	// 박주은 : 고객 예매 페이지
	@Autowired
	TicketHandler ticketHandler;

	@RequestMapping("/ticket")
	public String ticket(HttpServletRequest req, Model model) {
		System.out.println("ticket");

		model.addAttribute("req", req);
		model.addAttribute("contentPage", "user/ticket.jsp");
		String viewPage = ticketHandler.process(model);

		return viewPage;
	}

	// 박주은 : 예약페이지
	@Autowired
	MReservationHandler reservationHandler;

	@RequestMapping("/reservationchk")
	public String reservation(HttpServletRequest req, Model model) {
		System.out.println("reservation");

		model.addAttribute("req", req);
		model.addAttribute("contentPage", "user/reservationchk.jsp");
		String viewPage = reservationHandler.process(model);

		return viewPage;
	}

	@Autowired
	MReserveListHandler reserveListHandler;

	@RequestMapping("/user/reservation")
	public String reserveList(HttpServletRequest req, Model model) {
		System.out.println("reserveList");

		model.addAttribute("req", req);
		model.addAttribute("contentPage", "user/reservation.jsp");
		String viewPage = reserveListHandler.process(model);

		return viewPage;
	}

	@Autowired
	MReserveDeleteHandler reserveDeleteHandler;

	@RequestMapping("/user/reservation/delete")
	public String reserveDelete(HttpServletRequest req, Model model) {
		System.out.println("reserveList");

		model.addAttribute("req", req);
		model.addAttribute("contentPage", "user/reservation.jsp");
		String viewPage = reserveDeleteHandler.process(model);

		return viewPage;
	}

	// 유영원 기간별 예약/매출 검색 >기간 지정
	@RequestMapping("/manage/dateCnt")
	public String dateCnt(Model model) {

		System.out.println("dateCnt");

		return "/c-box/manage/dateCnt";
	}

	// 유영원 기간별 예약/매출 검색 >카테고리별 검색
	@Autowired
	SearchOptionHandler searchOptionHandler;

	@RequestMapping("/manage/searchOption")
	public String SearchOption(HttpServletRequest req, Model model) {

		System.out.println("SearchOption");

		model.addAttribute("req", req);
		String viewPage = searchOptionHandler.process(model);

		return viewPage;
	}

}
