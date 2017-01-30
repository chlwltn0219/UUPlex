package spring.mvc.uuplex.fitness.handler;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import spring.mvc.uuplex.fitness.dao.FClassroomDAO;
import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FClassroomDTO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

@Service
public class FClassroomInputHandler implements FCommandHandler{

	
	@Autowired
	FClassroomDAO dao;
	
	@Override
	public String process(Model model) {
		
		FClassroomDTO dto = new FClassroomDTO();
		
		int cnt = 0;
		
		String viewPage = "/fitness/manage/classroom_inputPro";
		
		HttpServletRequest req = (HttpServletRequest) model.asMap().get("req");
		
		dto.setCrname(req.getParameter("crname"));
		
		cnt = dao.insertClass(dto);
		
		model.addAttribute("cnt", cnt);
		
		return viewPage;

	}

}
