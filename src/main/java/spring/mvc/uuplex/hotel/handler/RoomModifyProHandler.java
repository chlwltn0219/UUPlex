package spring.mvc.uuplex.hotel.handler;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import spring.mvc.uuplex.hotel.dao.HotelDAO;
import spring.mvc.uuplex.hotel.dto.HotelDTO;

@Service("roomModifyProHandler")
public class RoomModifyProHandler implements HCommandHandler {

	@Autowired
	HotelDAO dao;
	
	@Autowired
	ServletContext content;
	
	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		System.out.println(req.getParameter("roomNum"));
		//int roomNum = Integer.parseInt(req.getParameter("roomNum"));
		//String path = content.getRealPath("resources/hotelImages");
		String path = "C:\\Dev\\uuplexImg\\";

		int size = 1024 * 1024 * 10; // 10MB

		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(req, path, size, "UTF-8", new DefaultFileRenamePolicy());

			Enumeration file = multi.getFileNames();
			
			String[] str = new String[6];
			String[] fileName = new String[6];
			
			if (file.hasMoreElements()) {
				for (int i = 0; i <6; i++) {
					str[i] = (String) file.nextElement();
					fileName[i] = multi.getFilesystemName(str[i]);
				}
			}

		HotelDTO dto = new HotelDTO();
		
		dto.setRoomNum(Integer.parseInt(multi.getParameter("roomNum")));
		dto.setRoomName(multi.getParameter("roomName"));
		dto.setMainImg(fileName[0]);
		dto.setDetail_1(fileName[1]);
		dto.setDetail_2(fileName[2]);
		dto.setDetail_3(fileName[3]);
		dto.setDetail_4(fileName[4]);
		dto.setDetail_5(fileName[5]);
		dto.setIntro(multi.getParameter("intro"));
		dto.setRoomType(multi.getParameter("roomType"));
		dto.setBed(multi.getParameter("bed"));
		dto.setHotelView(multi.getParameter("hotelView"));
		/*dto.setCapacity(multi.getParameter("capacity"));*/
		dto.setCharge(Integer.parseInt(multi.getParameter("charge")));
		
		int cnt = dao.update(dto);
		model.addAttribute("cnt", cnt);
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "/hotel/roomModifyPro";
	}

}
