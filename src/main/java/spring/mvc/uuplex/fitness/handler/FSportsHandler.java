package spring.mvc.uuplex.fitness.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;

@Service
public class FSportsHandler implements FCommandHandler{
	
	@Autowired
	FSportsDAO dao;
	
	@Override
	public String execute() {
		
		String viewPage = "fitness/manage/sports_list";
		
		return viewPage;
	}

}
