package spring.mvc.uuplex.fitness.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.fitness.handler.FSportsListHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherListHandler;

@Controller
@RequestMapping("/fitness")
public class FFrontController{

	@Autowired
	FSportsListHandler sportsHandler;
	
	@Autowired
	FTeacherListHandler tListHandler;
	FSportsListHandler sportsListHandler;

	// ������: ��Ʈ�Ͻ� ����
	@RequestMapping("")
	public String list(Model model){
		String viewPage = "fitness/user/fit_main";
		return viewPage;
	}
	
	// ������: ���� ����Ʈ
	@RequestMapping("/manage/sports/list")
	public String manageSportsList(HttpServletRequest req, Model model){
		model.addAttribute("req", req);
		String viewPage = sportsListHandler.process(model);
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
	
}
