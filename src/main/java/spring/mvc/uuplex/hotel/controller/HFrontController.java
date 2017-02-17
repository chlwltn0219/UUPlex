package spring.mvc.uuplex.hotel.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.hotel.handler.AdminCalDetailHandler;
import spring.mvc.uuplex.hotel.handler.AdminCalendarViewHandler;
import spring.mvc.uuplex.hotel.handler.AdminCancelHandler;
import spring.mvc.uuplex.hotel.handler.ChargeCountHandler;
import spring.mvc.uuplex.hotel.handler.HCommandHandler;
import spring.mvc.uuplex.hotel.handler.ReservCancelHandler;
import spring.mvc.uuplex.hotel.handler.ReservConfirmHandler;
import spring.mvc.uuplex.hotel.handler.ReservDetailHandler;
import spring.mvc.uuplex.hotel.handler.ReservFormCalHandler;
import spring.mvc.uuplex.hotel.handler.ReservFormHandler;
import spring.mvc.uuplex.hotel.handler.ReservManageHandler;
import spring.mvc.uuplex.hotel.handler.ReservProHandler;
import spring.mvc.uuplex.hotel.handler.ReservationHandler;
import spring.mvc.uuplex.hotel.handler.RoomAddProHandler;
import spring.mvc.uuplex.hotel.handler.RoomDeleteProHandler;
import spring.mvc.uuplex.hotel.handler.RoomListHandler;
import spring.mvc.uuplex.hotel.handler.RoomModifyFormHandler;
import spring.mvc.uuplex.hotel.handler.RoomModifyProHandler;

@Controller
@RequestMapping("/hotel")                                 
public class HFrontController {

	HCommandHandler command;
	
	//메인
	@RequestMapping("")
	public String list(){
		
		System.out.println("hotel main");
		
		String viewPage = "hotel/hotelMain";
		
		return viewPage;
	}
	
	/*@Autowired
	HotelMainHandler hotelMainHandler;
	@RequestMapping("")
	public String hotelMain(HttpServletRequest req, Model model) {
		System.out.println("hotelMain()");
		String viewPage = hotelMainHandler.process(model);
		
		return viewPage;
	}*/
	
	//객실목록
	@Autowired
	RoomListHandler roomListHandler;
	@RequestMapping("/roomList")
	public String roomList(HttpServletRequest req, Model model) {
		System.out.println("roomList()");
		
		/*model.addAttribute("req", req);*/
		String viewPage = roomListHandler.process(model);
		
		return viewPage;
	}
	
	@Autowired
	ReservationHandler reservationHandler;
	@RequestMapping("/reservation")
	public String reservation(HttpServletRequest req, Model model) {
		System.out.println("reservation()");
		
		model.addAttribute("req", req);
		String viewPage = reservationHandler.process(model);
		
		return viewPage;
	}
	
	//객실정보
	@RequestMapping("/hotelInfo")
	public String roomInfo(Model model) {
		System.out.println("hotelInfo()");
		return "/hotel/hotelInfo";
	}
	
	//객실등록
	@RequestMapping("/roomAddForm")
	public String roomAddForm(Model model) {
		System.out.println("roomAddForm()");
		return "/hotel/roomAddForm";
	}

	
	@Autowired
	RoomAddProHandler roomAddProHandler;
	@RequestMapping("/roomAddPro")
	public String roomAddPro(HttpServletRequest req, Model model) {
		System.out.println("roomAddPro()");
		
		model.addAttribute("req", req);
		String viewPage = roomAddProHandler.process(model);
		
		return viewPage;
	}
	
	//객실수정
	@Autowired
	RoomModifyFormHandler roomModifyFormHandler;
	@RequestMapping("/roomModifyForm")
	public String roomModifyForm(HttpServletRequest req, Model model) {
		System.out.println("roomModifyForm()");
		
		model.addAttribute("req", req);
		String viewPage = roomModifyFormHandler.process(model);
				
		return viewPage;
	}
	
	@Autowired
	RoomModifyProHandler roomModifyProHandler;
	@RequestMapping("/roomModifyPro")
	public String roomModifyPro(HttpServletRequest req, Model model){
		System.out.println("roomModifyPro()");
		
		model.addAttribute("req", req);
		String viewPage = roomModifyProHandler.process(model);
		
		return viewPage;
	}
	
	//객실삭제
	@Autowired
	RoomDeleteProHandler roomDeleteProHandler;
	@RequestMapping("/roomDeletePro")
	public String roomDeletePro(HttpServletRequest req, Model model) {
		System.out.println("roomDeletePro()");
		
		model.addAttribute("req", req);
		String viewPage = roomDeleteProHandler.process(model);
		
		return viewPage;
	}
	
	//객실예약
	@Autowired
	ReservFormHandler reservFormHandler;
	@RequestMapping("/reservForm")
	public String test(HttpServletRequest req, Model model) {
		System.out.println("reservForm");
		
		model.addAttribute("req", req);
		String viewPage = reservFormHandler.process(model);
		
		return viewPage;
	}
	
	@RequestMapping("/calculation")
	public String calculation(Model model) {
		System.out.println("calculation()");
		return "/hotel/calculation";
	}
	
	@RequestMapping("/optionSelect")
	public String optionSelect(Model model) {
		System.out.println("optionSelect()");
		return "/hotel/optionSelect";
	}
	
	//예약전확인
	@Autowired
	ReservConfirmHandler reservConfirmHandler;
	@RequestMapping("/reservConfirm")
	public String confirm(HttpServletRequest req, Model model) {
		System.out.println("reservConfirm");
		
		model.addAttribute("req", req);
		String viewPage = reservConfirmHandler.process(model);
		
		return viewPage;
	}
	
	//예약완료
	@Autowired
	ReservProHandler reservProHandler;
	@RequestMapping("/reservPro")
	public String reservPro(HttpServletRequest req, Model model) {
		System.out.println("reservPro()");
		
		model.addAttribute("req", req);
		String viewPage = reservProHandler.process(model);
		
		return viewPage;
	}
	
	//예약내역
	@Autowired
	ReservManageHandler reservManageHandler;
	@RequestMapping("/reservManage")
	public String reservManage(HttpServletRequest req, Model model) {
		System.out.println("reservManage()");
		
		model.addAttribute("req", req);
		String viewPage = reservManageHandler.process(model);
		
		return viewPage;
	}
	
	//예약상세내역
	@Autowired
	ReservDetailHandler reservDetailHandler;
	@RequestMapping("/reservDetail")
	public String reservDetail(HttpServletRequest req, Model model) {
		System.out.println("reservDetail()");
		
		model.addAttribute("req", req);
		String viewPage = reservDetailHandler.process(model);
		
		return viewPage;
	}
	
	//예약취소
	@Autowired
	ReservCancelHandler reservCancelHandler;
	@RequestMapping("/reservCancel")
	public String reservCancel(HttpServletRequest req, Model model) {
		System.out.println("reservCancel()");
		
		model.addAttribute("req", req);
		String viewPage = reservCancelHandler.process(model);
		
		return viewPage;
	}
	
	//(관리자)달력
	@RequestMapping("/adminCalendar")
	public String calendar(Model model) {
		System.out.println("adminCalendar()");
		return "/hotel/adminCalendar";
	}
	
	//(관리자)달력 예약내역조회
	@Autowired
	AdminCalendarViewHandler adminCalendarViewHandler;
	@RequestMapping("/adminCalendarView")
	public String adminCalendarView(HttpServletRequest req, Model model) {
		System.out.println("adminCalendarView()");
		
		model.addAttribute("req", req);
		String viewPage = adminCalendarViewHandler.process(model);
		
		return viewPage;
	}
	
	//(관리자)예약상세내역
	@Autowired
	AdminCalDetailHandler adminCalDetailHandler;
	@RequestMapping("/adminCalDetail")
	public String adminCalDetail(HttpServletRequest req, Model model) {
		System.out.println("adminCalDetail()");
		
		model.addAttribute("req", req);
		String viewPage = adminCalDetailHandler.process(model);
		
		return viewPage;
	}
	
	//(관리자)예약취소
	@Autowired
	AdminCancelHandler adminCancelHandler;
	@RequestMapping("/adminCancel")
	public String adminCancel(HttpServletRequest req, Model model) {
		System.out.println("adminCancel()");
		
		model.addAttribute("req", req);
		String viewPage = adminCancelHandler.process(model);
		
		return viewPage;
	}
	
	//(이용자)달력 예약내역조회
	@Autowired
	ReservFormCalHandler reservFormCalHandler;
	@RequestMapping("/reservFormCal")
	public String reservFormCal(HttpServletRequest req, Model model) {
		System.out.println("reservFormCal()");
		
		model.addAttribute("req", req);
		String viewPage = reservFormCalHandler.process(model);
		
		return viewPage;
	}
	
	
	//(이용자)일수별 가격 체크
		@Autowired
		ChargeCountHandler chargeCountHandler;
		@RequestMapping("/chargeCount")
		public String chargeCount(HttpServletRequest req, Model model) {
			System.out.println("chargeCount()");
			
			model.addAttribute("req", req);
			String viewPage = chargeCountHandler.process(model);
			
			return viewPage;
		}
}
