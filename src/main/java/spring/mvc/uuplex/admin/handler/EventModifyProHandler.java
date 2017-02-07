package spring.mvc.uuplex.admin.handler;


import java.io.IOException;
import java.util.Enumeration;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import spring.mvc.uuplex.admin.dao.BoardEventDAO;
import spring.mvc.uuplex.admin.dto.BoardEventDTO;

@Service("eventModifyProHandler")
public class EventModifyProHandler implements CommandHandler {

	@Autowired
	BoardEventDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		String path = "C:\\Dev\\images\\";
		
		if(!new java.io.File(path).exists())new java.io.File(path).mkdirs();

		int size = 1024 * 1024 * 10;

		MultipartRequest multi = null;
		
		try {
			
			multi = new MultipartRequest(req, path, size, "UTF-8", new DefaultFileRenamePolicy());

			Enumeration file = multi.getFileNames();
			
			String str = "";
			String fileName = "";
			
			if (file.hasMoreElements()) {
				str = (String) file.nextElement();
				fileName = multi.getFilesystemName(str);
			}
			
			if (fileName == null) {
				fileName = multi.getParameter("old_img");
			}
		
		int shopCode = 100;
		String code = multi.getParameter("shopCode");
		if(code.equals("영화")) {
			shopCode = 101;
		} else if (code.equals("호텔")) {
			shopCode = 102;
		} else if (code.equals("휘트니스")) {
			shopCode = 103;
		}
		
		BoardEventDTO dto = new BoardEventDTO();
		
		dto.setShopCode(shopCode);
		dto.setEventPasswd(multi.getParameter("passwd"));
		dto.setSubject(multi.getParameter("subject"));
		dto.setEventImg(fileName);
		dto.setContent(multi.getParameter("content"));
		dto.setEventNum(Integer.parseInt(multi.getParameter("num")));
		
		
		int cnt = 0;
		cnt = dao.eventModify(dto);
			
		model.addAttribute("cnt", cnt);
		model.addAttribute("shopCode", shopCode);
	

	} catch (IOException e) {
		e.printStackTrace();
	}
		
		return "/main/board/eventModifyPro";
		
	}	

}
