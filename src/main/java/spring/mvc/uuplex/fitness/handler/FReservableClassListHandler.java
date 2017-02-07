package spring.mvc.uuplex.fitness.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FClassDAO;
import spring.mvc.uuplex.fitness.dto.FClassDTO;
import spring.mvc.uuplex.util.Pager;

@Service
public class FReservableClassListHandler implements FCommandHandler{
	
	@Autowired
	FClassDAO dao;
	
	@Override
	public String process(Model model) {
		String viewPage = "/fitness/user/reserve_class";
		List<FClassDTO> list = null;
		
		Map<String,Object> paramMap = new HashMap<String, Object>();
		int pid = 0;
		int totalCount = 0;
		int nowPage = 0;
		
		Pager pager = Pager.getInstance();
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		pid = Integer.parseInt(req.getParameter("pid"));
		
		if(req.getParameter("page") != null) {
			nowPage = Integer.parseInt(req.getParameter("page"));
		} else {
			nowPage = 1;
		}
		
		totalCount = dao.reservableCount(pid);
		
		pager.setDisplayContentCnt(5);
		pager.setDisplayPageCnt(5);
		pager.calcPage(totalCount, nowPage);
		
		paramMap.put("pid", pid);
		paramMap.put("start", pager.getStartContent());
		paramMap.put("end", pager.getEndContent());
		
		list = dao.reservableList(paramMap);
		model.addAttribute("dtos", list);
		model.addAttribute("startPage", pager.getStartPage());
		model.addAttribute("endPage", pager.getEndPage());
		model.addAttribute("next", pager.getNext());
		model.addAttribute("prev", pager.getPrev());
		model.addAttribute("nowPage", pager.getNowPage());
		
		model.addAttribute("pid", pid);
		
		return viewPage;
	}

}
