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
public class FClassModifyHandler implements FCommandHandler{
	
	@Autowired
	FClassDAO dao;
	
	@Override
	public String process(Model model) {
		String viewPage = null;
		FClassDTO dto = new FClassDTO();
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");

		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		DateFormat timeFormat = new SimpleDateFormat("HH:mm");
		
		try {
			int cid = Integer.parseInt(req.getParameter("cid"));
			int pid = Integer.parseInt(req.getParameter("pid"));
			String subname = req.getParameter("subname");
			int limit = Integer.parseInt(req.getParameter("limit"));
			
			Timestamp register_start = new Timestamp(dateFormat.parse(req.getParameter("register_start")).getTime());
			Timestamp register_end = new Timestamp(dateFormat.parse(req.getParameter("register_end")).getTime());
			Timestamp start_date = new Timestamp(dateFormat.parse(req.getParameter("start_date")).getTime());
			Timestamp end_date = new Timestamp(dateFormat.parse(req.getParameter("end_date")).getTime());
			Timestamp start_time = new Timestamp(timeFormat.parse(req.getParameter("start_time")).getTime());
			Timestamp end_time = new Timestamp(timeFormat.parse(req.getParameter("end_time")).getTime());

			dto.setCid(cid);
			dto.setPid(pid);
			dto.setSubname(subname);
			dto.setLimit(limit);
			dto.setRegister_start(register_start);
			dto.setRegister_end(register_end);
			dto.setStart_date(start_date);
			dto.setEnd_date(end_date);
			dto.setStart_time(start_time);
			dto.setEnd_time(end_time);
			
			dao.modifyClass(dto);
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}