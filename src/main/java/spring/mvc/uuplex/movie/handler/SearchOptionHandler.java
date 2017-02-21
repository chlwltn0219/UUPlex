package spring.mvc.uuplex.movie.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ManagerDAO;
import spring.mvc.uuplex.movie.dto.ReserveDTO;

@Service
public class SearchOptionHandler implements MCommandHandler{

		@Autowired
		ManagerDAO dao;
		
		@Override
		public String process(Model model) {
			
			Map<String, Object> map = model.asMap();
			HttpServletRequest req = (HttpServletRequest) map.get("req");
			
			String date = req.getParameter("date");
			String curdate = req.getParameter("curdate");
			String log = req.getParameter("log");
			
			
			
				
				if(log.equals("전체")) {
					
					Map<String, Object> daoMap = new HashMap<String, Object>();
					daoMap.put("date", date);
					daoMap.put("curdate", curdate);
					daoMap.put("log", log);
					
					List<ReserveDTO> dtos = dao.searchAll(daoMap);
					
					model.addAttribute("dtos", dtos);
					
				} else if(log.equals("영화제목")) {
					
					Map<String, Object> daoMap = new HashMap<String, Object>();
					daoMap.put("date", date);
					daoMap.put("curdate", curdate);
					String search = req.getParameter("search");
					daoMap.put("search", search);
					
					List<ReserveDTO> dtos = dao.searchTitle(daoMap);
					
					model.addAttribute("dtos", dtos);
					model.addAttribute("log", log);
					
				} else /*if(log.equals("감독")) */{
					Map<String, Object> daoMap = new HashMap<String, Object>();
					daoMap.put("date", date);
					daoMap.put("curdate", curdate);
					String search = req.getParameter("search");
					daoMap.put("search", search);
					
					List<ReserveDTO> dtos = dao.searchDirector(daoMap);
					
					model.addAttribute("dtos", dtos);
					model.addAttribute("log", log);
				
					
				}
				
			
		
			
		
				return "/c-box/manage/manage_searchOption";

	}
}
