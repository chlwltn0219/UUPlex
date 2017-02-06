package spring.mvc.uuplex.fitness.handler;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import spring.mvc.uuplex.fitness.dao.FSportsDAO;
import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FSportsDTO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

@Service
public class FTeacherInputProHandler implements FCommandHandler{

	@Autowired
	FTeacherDAO dao;
	
	@Autowired
	ServletContext content;	
	
	@Autowired
	FSportsDAO sdao;
	
	@Override
	public String process(Model model) {
		
		FTeacherDTO dto = new FTeacherDTO();
		int cnt = 0;
	
				
		String viewPage = "fitness/manage/teacher_inputPro";
		String path = "C:\\Dev\\teacherImg\\";
		System.out.println("p " + path );
		
		int size = 1024 * 1024 * 10; // 10MB
		MultipartRequest multi = null;
		
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		try {
			multi = new MultipartRequest(req, path, size, "UTF-8", new DefaultFileRenamePolicy());

			Enumeration file = multi.getFileNames();
			String str = (String) file.nextElement();
			String fileName = multi.getFilesystemName(str);
			
			int sid = Integer.parseInt(multi.getParameter("sid"));			
			String tname =  multi.getParameter("tname");
			String tinfo = multi.getParameter("tinfo").replace("\r\n","<br>");

			System.out.println("wgew : " + tname + tinfo);
				
			// 1단계. dto 바구니 생성			

			// 2단계. dto 바구니에 담는다.
			dto.setTname(tname);
			dto.setTinfo(tinfo);
			dto.setSid(sid);
			
			System.out.println("sid =" + sid);
			
			if(fileName == null){
				dto.setTpicture("no_picture.jpg");
			} else {
				dto.setTpicture(fileName);
			}

			cnt = dao.tInsert(dto);
			
			model.addAttribute("cnt", cnt);
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return viewPage;
		
	}

}
