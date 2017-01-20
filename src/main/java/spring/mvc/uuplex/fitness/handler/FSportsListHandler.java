package spring.mvc.uuplex.fitness.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.util.Pager;

@Service
public class FSportsListHandler implements FCommandHandler{
	
	@Autowired
	FSportsDAO dao;
	
	Pager pager = Pager.getInstance();
	
	@Override
	public String process(Model model) {
		String viewPage = "fitness/manage/sports_list";
		int nowPage = 1;
		int total = dao.sportsCount();
		pager.calcPage(total, nowPage);
		
		return viewPage;
	}

}
