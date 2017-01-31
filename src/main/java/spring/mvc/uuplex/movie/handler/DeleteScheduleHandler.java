package spring.mvc.uuplex.movie.handler;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.uuplex.movie.dao.ScheduleDAO;


@Service
public class DeleteScheduleHandler implements MCommandHandler {

	@Autowired
	ScheduleDAO dao;
	
	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		String viewPage = "c-box/manage/schedule_deletePro";
		int schedule_num = Integer.parseInt(req.getParameter("num"));
		
		int cnt =0;
		
		cnt = dao.deleteSchedule(schedule_num);
		model.addAttribute("cnt", cnt);
		
		return viewPage;
	}

}
