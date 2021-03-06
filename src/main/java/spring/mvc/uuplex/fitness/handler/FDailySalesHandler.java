package spring.mvc.uuplex.fitness.handler;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FStatementDAO;

@Service
public class FDailySalesHandler implements FCommandHandler{
	
	@Autowired
	FStatementDAO  dao;
	
	@Override
	public String process(Model model) {
		
		List<Map<String, Object>> list = null;
		
		String viewPage = "/fitness/manage/dailysales_json";
		
		list = dao.dailySales();
		model.addAttribute("daily", list);
		
		return viewPage;
	}

}
