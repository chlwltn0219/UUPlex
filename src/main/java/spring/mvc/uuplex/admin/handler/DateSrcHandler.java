package spring.mvc.uuplex.admin.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.admin.dao.AdminDAO;
import spring.mvc.uuplex.admin.dto.HtestDTO;
import spring.mvc.uuplex.admin.dto.MtestDTO;

@Service("dateSrcHandler")
public class DateSrcHandler implements CommandHandler{

	@Autowired
	AdminDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String date = req.getParameter("date");
		String curdate = req.getParameter("curdate");
		String log = req.getParameter("log");
		
		if(req.getParameter("memId").equals("")){
			
			if(log.equals("영화")) {
				
				Map<String, Object> daoMap = new HashMap<String, Object>();
				daoMap.put("date", date);
				daoMap.put("curdate", curdate);
				
				ArrayList<MtestDTO> mdtos = dao.reservlist_m_date(daoMap);
				
				model.addAttribute("mdtos", mdtos);
				model.addAttribute("log", log);
				
			} else if(log.equals("호텔")) {
				
				Map<String, Object> daoMap = new HashMap<String, Object>();
				daoMap.put("date", date);
				daoMap.put("curdate", curdate);
				
				ArrayList<HtestDTO> hdtos = dao.reservlist_h_date(daoMap);
				
				model.addAttribute("hdtos", hdtos);
				model.addAttribute("log", log);
				
			} else if(log.equals("휘트니스")) {
				
				
			} else {
				
				Map<String, Object> daoMap = new HashMap<String, Object>();
				daoMap.put("date", date);
				daoMap.put("curdate", curdate);
				
				ArrayList<MtestDTO> mdtos = dao.reservlist_m_date(daoMap);
				ArrayList<HtestDTO> hdtos = dao.reservlist_h_date(daoMap);
				
				model.addAttribute("mdtos", mdtos);
				model.addAttribute("hdtos", hdtos);
				model.addAttribute("log", log);
				
			}
			
		} else {

			String memId = req.getParameter("memId");
			
			if(log.equals("영화")) {
				
				Map<String, Object> daoMap = new HashMap<String, Object>();
				daoMap.put("date", date);
				daoMap.put("curdate", curdate);
				daoMap.put("memId", memId);
				
				ArrayList<MtestDTO> mdtos = dao.reservlist_m_id_date(daoMap);
				
				model.addAttribute("mdtos", mdtos);
				model.addAttribute("log", log);
				
			} else if(log.equals("호텔")) {
				
				Map<String, Object> daoMap = new HashMap<String, Object>();
				daoMap.put("date", date);
				daoMap.put("curdate", curdate);
				daoMap.put("memId", memId);
				
				ArrayList<HtestDTO> hdtos = dao.reservlist_h_id_date(daoMap);
				
				model.addAttribute("hdtos", hdtos);
				model.addAttribute("log", log);
				
			} else if(log.equals("휘트니스")) {
				
				
			} else {
				
				Map<String, Object> daoMap = new HashMap<String, Object>();
				daoMap.put("date", date);
				daoMap.put("curdate", curdate);
				daoMap.put("memId", memId);
				
				ArrayList<MtestDTO> mdtos = dao.reservlist_m_id_date(daoMap);
				ArrayList<HtestDTO> hdtos = dao.reservlist_h_id_date(daoMap);
				
				model.addAttribute("mdtos", mdtos);
				model.addAttribute("hdtos", hdtos);
				model.addAttribute("log", log);
				
			}
			
		}
		
		
		
		
		
		return "/main/reserve/reservlistdate";
		
	}

}
