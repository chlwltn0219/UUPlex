package spring.mvc.uuplex.fitness.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.fitness.handler.FSportsAddHandler;
import spring.mvc.uuplex.fitness.handler.FSportsDetailHandler;
import spring.mvc.uuplex.fitness.handler.FSportsListHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherDetailHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherInputHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherListHandler;

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
	FTeacherListHandler tListHandler;
	@Autowired
	FTeacherInputHandler tInputHandler;
	@Autowired
	FTeacherDetailHandler tDetailHandler;


	// ������: ��Ʈ�Ͻ� ����
	@RequestMapping("")
	public String list(Model model){
		String viewPage = "fitness/user/fit_main";
		return viewPage;
	}
	
	// ������: ���� ����Ʈ
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
	
	//최지수 : 피트니스 - 종목추가
	@RequestMapping("/manage/sports/add")
	public String sportsAdd(HttpServletRequest req, Model model){
		String viewPage = null;
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		model.addAttribute("req", req);
		viewPage = sportsAddHandler.process(model);
		return viewPage;
	}
	
	//최지수 : 피트니스 - 종목상세정보
	@RequestMapping("/sports/detail")
	public String sportsDetail(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = sportsDetailHandler.process(model);
		return viewPage;
	}
	
	// ������ : ���� ����Ʈ
	@RequestMapping("/manage/teacher/list")
	   public String list(HttpServletRequest req, Model model) {
	      System.out.println("list()");
	      
	      model.addAttribute("req", req);
	      String viewPage = tListHandler.process(model);
	      
	      return viewPage;	  
	}
	
	// ������ : ���� ���� �߰�
	@RequestMapping("/manage/teacher/input")
	   public String input(HttpServletRequest req, Model model) {
	      System.out.println("input()");
	      
	      model.addAttribute("req", req);
	      String viewPage = tInputHandler.process(model);
	      
	      return viewPage;	  

	}
	
	//������ : ���� ������
	@RequestMapping("/teacher/detail")
	public String teacherDetail(HttpServletRequest req, Model model){
		
		model.addAttribute("req", req);
		String viewPage = tDetailHandler.process(model);
		return viewPage;
	}
	
}
