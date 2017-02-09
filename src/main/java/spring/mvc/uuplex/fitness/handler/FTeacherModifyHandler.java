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

import spring.mvc.uuplex.fitness.dao.FTeacherDAO;
import spring.mvc.uuplex.fitness.dto.FTeacherDTO;

@Service
public class FTeacherModifyHandler implements FCommandHandler{

	@Autowired
	FTeacherDAO dao;
		
	@Autowired
	ServletContext content;
	
	@Override
	public String process(Model model) {
		
		String viewPage = "fitness/manage/teacher_modifyPro";
		FTeacherDTO dto = new FTeacherDTO();
		
		String path = "C:\\Dev\\teacherImg\\";
		int size = 1024 * 1024 * 10; // 10MB
		MultipartRequest multi = null;
		
		HttpServletRequest req = (HttpServletRequest)model.asMap().get("req");
		
		try {
			
			multi = new MultipartRequest(req, path, size, "UTF-8", new DefaultFileRenamePolicy());
			
			Enumeration file = multi.getFileNames();
			
			String str = (String) file.nextElement();
			String fileName = multi.getFilesystemName(str);
			
			int tid = Integer.parseInt(multi.getParameter("tid"));
			String tname = multi.getParameter("tname"); 
			String tinfo = multi.getParameter("tinfo").replace("\r\n","<br>");	
			String activated = multi.getParameter("activated");
			String tpicture = null;
			int sid = Integer.parseInt(multi.getParameter("sid"));
			
			if(fileName != null) {
				tpicture = fileName;
			} else {
				tpicture = multi.getParameter("initPic");
			}
				
			System.out.println(tname + tinfo + tpicture + activated + "dgawgw");
			
			dto.setTid(tid);
			System.out.println(tid);
			dto.setTname(tname);
			dto.setTinfo(tinfo);	
			dto.setTpicture(tpicture);
			dto.setActivated(activated);
			dto.setSid(sid);
			
			System.out.println(tpicture);
			
			int cnt = dao.teacherModify(dto);	
				
			model.addAttribute("tid", tid);

			System.out.println(cnt + "dga");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return viewPage;
	}

}
