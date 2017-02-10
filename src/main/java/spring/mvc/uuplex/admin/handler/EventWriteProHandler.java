package spring.mvc.uuplex.admin.handler;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import spring.mvc.uuplex.admin.dao.BoardEventDAO;
import spring.mvc.uuplex.admin.dto.BoardEventDTO;

@Service("eventWriteProHandler")
public class EventWriteProHandler implements CommandHandler {

	@Autowired
	BoardEventDAO dao;
	
	@Override
	public String process(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		
		// 이미지 추가
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
				fileName = "0";
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
		dto.setMemId(multi.getParameter("memId"));
		dto.setSubject(multi.getParameter("subject"));
		dto.setEventPasswd(multi.getParameter("passwd"));
		dto.setContent(multi.getParameter("content"));
		dto.setEventImg(fileName);
		
		dto.setEventNum(Integer.parseInt(multi.getParameter("num")));
		dto.setRef(Integer.parseInt(multi.getParameter("ref")));
		dto.setRef_step(Integer.parseInt(multi.getParameter("ref_step")));
		dto.setRef_level(Integer.parseInt(multi.getParameter("ref_level")));
		
		dto.setEvent_date(new Timestamp(System.currentTimeMillis()));
		dto.setIp(req.getRemoteAddr());
		
		int cnt = dao.EventInsert(dto);
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("shopCode", shopCode);
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "/main/board/eventWritePro";
	}

}
