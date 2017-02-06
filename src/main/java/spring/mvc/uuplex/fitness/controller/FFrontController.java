package spring.mvc.uuplex.fitness.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.fitness.handler.FClassDetailHandler;
import spring.mvc.uuplex.fitness.handler.FClassInputFormHandler;
import spring.mvc.uuplex.fitness.handler.FClassInputHandler;
import spring.mvc.uuplex.fitness.handler.FClassListHandler;
import spring.mvc.uuplex.fitness.handler.FClassModifyHandler;
import spring.mvc.uuplex.fitness.handler.FClassroomDetailHandler;
import spring.mvc.uuplex.fitness.handler.FClassroomInputHandler;
import spring.mvc.uuplex.fitness.handler.FClassroomListHandler;
import spring.mvc.uuplex.fitness.handler.FClassroomModifyHandler;
import spring.mvc.uuplex.fitness.handler.FProgramDetailHandler;
import spring.mvc.uuplex.fitness.handler.FProgramInputFormHandler;
import spring.mvc.uuplex.fitness.handler.FProgramInputProHandler;
import spring.mvc.uuplex.fitness.handler.FProgramListHandler;
import spring.mvc.uuplex.fitness.handler.FProgramModifyHandler;
import spring.mvc.uuplex.fitness.handler.FSportsAddHandler;
import spring.mvc.uuplex.fitness.handler.FSportsDetailHandler;
import spring.mvc.uuplex.fitness.handler.FSportsListHandler;
import spring.mvc.uuplex.fitness.handler.FSportsModifyHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherDetailHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherInfoListHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherInputHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherInputProHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherListHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherModifyHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherSuitableListHandler;

@Controller
@RequestMapping("/fitness")
public class FFrontController{
	
	@Autowired
	FSportsListHandler sportsListHandler;
	@Autowired
	FSportsAddHandler sportsAddHandler;
	@Autowired
	FSportsDetailHandler sportsDetailHandler;
	@Autowired
	FSportsModifyHandler sportsModifyHandler;
	
	@Autowired
	FTeacherListHandler tListHandler;
	@Autowired
	FTeacherInputHandler tInputHandler;
	@Autowired
	FTeacherInputProHandler tInputProHandler;
	@Autowired
	FTeacherDetailHandler tDetailHandler;
	@Autowired
	FTeacherModifyHandler tmodifyHandler;
	@Autowired
	FTeacherSuitableListHandler tSuitableListHandler;
	
	@Autowired
	FClassroomListHandler cListHandler;
	@Autowired
	FClassroomInputHandler cinputHandler;
	@Autowired
	FClassroomDetailHandler cDetailHandler;
	@Autowired
	FClassroomModifyHandler cModifyHandler;
	
	@Autowired
	FProgramListHandler programListHandler;
	@Autowired
	FProgramInputFormHandler programInputFromHandler;
	@Autowired
	FProgramInputProHandler programInputProHandler;
	@Autowired
	FProgramDetailHandler programDetailHandler;
	@Autowired
	FProgramModifyHandler programModifyHandler;
	
	@Autowired
	FClassListHandler classListHandler;
	@Autowired
	FClassDetailHandler classDetailHandler;
	@Autowired
	FClassInputFormHandler classInputFormHandler;
	@Autowired
	FClassInputHandler classInputHandler; 
	@Autowired
	FClassroomModifyHandler classModifyHandler; 
	@Autowired
	FTeacherInfoListHandler teacherInfoHandler;

	// 占쏙옙占쏙옙占쏙옙: 占쏙옙트占싹쏙옙 占쏙옙占쏙옙
	@RequestMapping("")
	public String list(Model model){
		String viewPage = "fitness/user/fit_main";
		return viewPage;
	}
	
	// 占쏙옙占쏙옙占쏙옙: 占쏙옙占쏙옙 占쏙옙占쏙옙트
	@RequestMapping("/manage/sports/list")
	public String manageSportsList(HttpServletRequest req, Model model){
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("req", req);
		String viewPage = sportsListHandler.process(model);
		return viewPage;
	}
	
	@RequestMapping("/manage/sports/inputForm")
	public String sportInputForm() {
		String viewPage = "/fitness/manage/sports_input";
		return viewPage;
	}
	
	@RequestMapping("/manage/sports/inputPro")
	public String sportsAdd(HttpServletRequest req, Model model){
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("req", req);
		String viewPage = sportsAddHandler.process(model);
		return viewPage;
	}
	
	//理쒖��닔 : �뵾�듃�땲�뒪 - 醫낅ぉ�긽�꽭�젙蹂�
	@RequestMapping("/sports/detail")
	public String sportsDetail(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = sportsDetailHandler.process(model);
		return viewPage;
	}
	
	// 최지수 : 피트니스 - 종목 정보 폼
	@RequestMapping("/manage/sports/modify")
	public String sportsModify(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = "/fitness/manage/sports_modify";
		sportsDetailHandler.process(model);
		return viewPage;
	}
	
	// 최지수 : 피트니스 - 종목 정보 수정
	@RequestMapping("/manage/sports/modifyPro")
	public String sportsModifyPro(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		sportsModifyHandler.process(model);
		String viewPage = sportsDetail(req, model); 
		return viewPage;
	}
	
	
	
	// 占쏙옙占쏙옙占쏙옙 : 占쏙옙占쏙옙 占쏙옙占쏙옙트
	@RequestMapping("/manage/teacher/list")
	   public String list(HttpServletRequest req, Model model) {
	      System.out.println("list()");
	      
	      model.addAttribute("req", req);
	      String viewPage = tListHandler.process(model);
	      
	      return viewPage;	  
	}
	
	// 占쏙옙占쏙옙占쏙옙 : 占쏙옙占쏙옙 占쏙옙占쏙옙 占쌩곤옙
	@RequestMapping("/manage/teacher/input")
	 public String input(HttpServletRequest req, Model model) {
	      System.out.println("input()");
	      
	      model.addAttribute("req", req);
	      String viewPage = tInputProHandler.process(model);
	      
	      return viewPage;	  

	}
	
	@RequestMapping("/manage/teacher/inputForm")
	public String inputFrom(HttpServletRequest req, Model model) {
	      String viewPage = tInputHandler.process(model);
	      return viewPage;	  
	}
	
	//김진우 : 강사 디테일
	@RequestMapping("/teacher/detail")
	public String teacherDetail(HttpServletRequest req, Model model){
		
		model.addAttribute("req", req);
		String viewPage = tDetailHandler.process(model);
		return viewPage;
	}
	
	//김진우 : 강사 상세 정보 수정 폼
	@RequestMapping("/manage/teacher/modify")
	public String teacherModify(HttpServletRequest req, Model model){
		
		model.addAttribute("req", req);
		String viewPage = "/fitness/manage/teacher_modify";
		tDetailHandler.process(model);
		return viewPage;
	}
	
	//김진우 : 강사 상세 정보 수정
	@RequestMapping("/manage/teacher/modifyPro")
	public String teacherModifyPro(HttpServletRequest req, Model model){
		
		model.addAttribute("req", req);
		String viewPage = tmodifyHandler.process(model);
		
		return viewPage;
	}
	
	@RequestMapping("/teacher/suitable")
	public String suitableTeacher(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = tSuitableListHandler.process(model);
		return viewPage;
	}
	
	//김진우 : 강의실 리스트
	@RequestMapping("/manage/classroom/list")
	   public String clist(HttpServletRequest req, Model model) {
	      System.out.println("clist()");
	      
	      model.addAttribute("req", req);
	      String viewPage = cListHandler.process(model);
	      
	      return viewPage;	  
	}
	
	//김진우 : 강의실 등록
	@RequestMapping("/manage/classroom/inputForm")
	 public String cinputForm(HttpServletRequest req, Model model) {
	      String viewPage = "/fitness/manage/classroom_input";  

	      return viewPage;	  

	}
	
	//강의실 추가
	@RequestMapping("/manage/classroom/input")
	 public String cinput(HttpServletRequest req, Model model) {
	      System.out.println("cinput()");
	      
	      model.addAttribute("req", req);
	      String viewPage = cinputHandler.process(model);
	      
	      return viewPage;	 
	}
	
	//김진우 : 강의실 디테일
	@RequestMapping("/classroom/detail")
	public String classroomDetail(HttpServletRequest req, Model model){
		
		model.addAttribute("req", req);
		String viewPage = cDetailHandler.process(model);
		return viewPage;
	}
	
	//김진우 : 강의실 상세 정보 수정 폼
	@RequestMapping("/manage/classroom/modify")
	public String classroomModify(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = "/fitness/manage/classroom_modify";
		cDetailHandler.process(model);
		return viewPage;
	}
	
	// 김진우 : 강의실 - 종목 정보 수정
	@RequestMapping("/manage/classroom/modifyPro")
	public String classroomModifyPro(HttpServletRequest req, Model model){

		model.addAttribute("req", req);
		String viewPage = cModifyHandler.process(model);
		
		return viewPage;
	}
	
	// 占쏙옙占쏙옙占쏙옙: 占쏙옙占쏙옙 占쏙옙占쏙옙트
	@RequestMapping("/manage/class/list")
	public String manageClassList(HttpServletRequest req, Model model){
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("req", req);
		String viewPage = classListHandler.process(model);
		return viewPage;
	}
	
	@RequestMapping("/manage/class/inputForm")
	public String classInputForm(HttpServletRequest req, Model model) {
		String viewPage = null;
		viewPage = classInputFormHandler.process(model);
		return viewPage;
	}
	
	@RequestMapping("/manage/class/inputPro")
	public String classInputPro(HttpServletRequest req, Model model){
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("req", req);
		String viewPage = classInputHandler.process(model);
		return viewPage;
	}
	
	//理쒖��닔 : �뵾�듃�땲�뒪 - 醫낅ぉ�긽�꽭�젙蹂�
	@RequestMapping("/class/detail")
	public String classDetail(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = classDetailHandler.process(model);
		return viewPage;
	}
	
	// 최지수 : 피트니스 - 종목 정보 폼
	@RequestMapping("/manage/class/modify")
	public String classModify(HttpServletRequest req, Model model){
		String viewPage = "/fitness/manage/class_modify";
		model.addAttribute("req", req);
		classDetailHandler.process(model);
		classInputFormHandler.process(model);
		return viewPage;
	}
	
	// 최지수 : 피트니스 - 종목 정보 수정
	@RequestMapping("/manage/class/modifyPro")
	public String classModifyPro(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		classModifyHandler.process(model);
		String viewPage = classDetailHandler.process(model); 
		return viewPage;
	}
	
	// 占쏙옙占쏙옙占쏙옙: 占쏙옙占쏙옙 占쏙옙占쏙옙트
	@RequestMapping("/manage/program/list")
	public String manageProgramList(HttpServletRequest req, Model model){
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("req", req);
		String viewPage = programListHandler.process(model);
		return viewPage;
	}
	
	@RequestMapping("/manage/program/inputForm")
	public String programInputForm(HttpServletRequest req, Model model) {
		String viewPage = programInputFromHandler.process(model);
		return viewPage;
	}
	
	@RequestMapping("/manage/program/inputPro")
	public String programInputPro(HttpServletRequest req, Model model){
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("req", req);
		String viewPage = programInputProHandler.process(model);
		return viewPage;
	}
	
	//理쒖��닔 : �뵾�듃�땲�뒪 - 醫낅ぉ�긽�꽭�젙蹂�
	@RequestMapping("/program/detail")
	public String programDetail(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = programDetailHandler.process(model);
		return viewPage;
	}
	
	// 최지수 : 피트니스 - 종목 정보 폼
	@RequestMapping("/manage/program/modify")
	public String programModify(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = "/fitness/manage/program_modify";
		programDetailHandler.process(model);
		return viewPage;
	}
	
	// 최지수 : 피트니스 - 종목 정보 수정
	@RequestMapping("/manage/program/modifyPro")
	public String programModifyPro(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		programModifyHandler.process(model);
		String viewPage = programDetail(req, model); 
		return viewPage;
	}

	// 김진우 : 피트니스 - 종목 정보 수정
	@RequestMapping("/user/teacher/list")
	public String uTeacherList(HttpServletRequest req, Model model){
		model.addAttribute("req", req);

		String viewPage = teacherInfoHandler.process(model); 
		return viewPage;
	}
	
	
}
