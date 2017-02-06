package spring.mvc.uuplex.fitness.handler;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.fitness.dao.FClassDAO;
import spring.mvc.uuplex.fitness.dto.FClassDTO;

@Service
public class FClassInputHandler implements FCommandHandler{
	
	@Autowired
	FClassDAO dao;
	
	@Override
	public String process(Model model) {
		
		FClassDTO dto = new FClassDTO();
		int ccnt = 0;
		int wcnt = 0;
		
<<<<<<< HEAD
		DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
=======
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
>>>>>>> origin/master
		DateFormat timeFormat = new SimpleDateFormat("HH:mm");
		
		String viewPage = "/fitness/manage/class_inputPro";
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		int pid = Integer.parseInt(req.getParameter("pid"));
		int crid = Integer.parseInt(req.getParameter("crid"));
		int limit = Integer.parseInt(req.getParameter("limit"));
		String subname = req.getParameter("subname");
				
		Timestamp register_start = null;
		Timestamp register_end = null;
		Timestamp start_date = null;
		Timestamp end_date = null;
		Timestamp start_time = null;
		Timestamp end_time = null;
		
		String sun = null;
		String mon = null;
		String tue = null;
		String wed = null;
		String thu = null;
		String fri = null;
		String sat = null;
		
		try {
			pid = Integer.parseInt(req.getParameter("pid"));
			crid = Integer.parseInt(req.getParameter("crid"));
			limit = Integer.parseInt(req.getParameter("limit"));
			
<<<<<<< HEAD
=======

			System.out.println(req.getParameter("start_date"));
			System.out.println(req.getParameter("end_date"));
			
>>>>>>> origin/master
			subname = req.getParameter("subname");
			register_start = new Timestamp(dateFormat.parse(req.getParameter("register_start")).getTime());
			register_end = new Timestamp(dateFormat.parse(req.getParameter("register_end")).getTime());
			start_date = new Timestamp(dateFormat.parse(req.getParameter("start_date")).getTime());
			end_date = new Timestamp(dateFormat.parse(req.getParameter("end_date")).getTime());
			start_time = new Timestamp(timeFormat.parse(req.getParameter("start_time")).getTime());
			end_time = new Timestamp(timeFormat.parse(req.getParameter("end_time")).getTime());
			
<<<<<<< HEAD
=======
			System.out.println(start_date);
			System.out.println(end_date);
			
>>>>>>> origin/master
			sun = req.getParameter("sun") != null ? req.getParameter("sun"): "N";
			mon = req.getParameter("mon") != null ? req.getParameter("mon"): "N";
			tue = req.getParameter("tue") != null ? req.getParameter("tue"): "N";
			wed = req.getParameter("wed") != null ? req.getParameter("wed"): "N";
			thu = req.getParameter("thu") != null ? req.getParameter("thu"): "N";
			fri = req.getParameter("fri") != null ? req.getParameter("fri"): "N";
			sat = req.getParameter("sat") != null ? req.getParameter("sat"): "N";
			
			
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		dto.setPid(pid);
		dto.setSubname(subname);
		dto.setCrid(crid);
		dto.setLimit(limit);
		
		
		dto.setRegister_start(register_start);
		dto.setRegister_end(register_end);
		dto.setStart_date(start_date);
		dto.setEnd_date(end_date);
		dto.setStart_time(start_time);
		dto.setEnd_time(end_time);
		
		dto.setSun(sun);
		dto.setMon(mon);
		dto.setTue(tue);
		dto.setWed(wed);
		dto.setThu(thu);
		dto.setFri(fri);
		dto.setSat(sat);
<<<<<<< HEAD
	
=======
		
>>>>>>> origin/master
		ccnt = dao.addClass(dto);
		wcnt = dao.addClassWeek(dto);
		
		model.addAttribute("ccnt", ccnt);
		model.addAttribute("wcnt", wcnt);
		
		return viewPage;
	}

}
