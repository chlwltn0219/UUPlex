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

@Service("RoomAddProHandler")
public class RoomAddProHandler implements HCommandHandler {

	@Autowired
	HotelDAO dao;

	@Autowired
	ServletContext content;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest req = (HttpServletRequest) map.get("req");
		//String path = content.getRealPath("resources/hotelImages");
		String path = "C:\\Dev\\uuplexImg\\";
		System.out.println("p " + path );

		int size = 1024 * 1024 * 10; // 10MB

		MultipartRequest multi = null;
		try {
			multi = new MultipartRequest(req, path, size, "UTF-8", new DefaultFileRenamePolicy());

			Enumeration file = multi.getFileNames();
			String str = (String) file.nextElement();
			String fileName = multi.getFilesystemName(str);

			int charge = Integer.parseInt(multi.getParameter("charge"));

			// 1단계. dto 바구니 생성
			HotelDTO dto = new HotelDTO();

			System.out.println(multi.getParameter("roomName") + "=========방번호");

			// 2단계. dto 바구니에 담는다.
			dto.setRoomName(multi.getParameter("roomName"));
			dto.setMainImg(fileName);
			dto.setDetail_1(fileName);
			dto.setDetail_2(fileName);
			dto.setDetail_3(fileName);
			dto.setDetail_4(fileName);
			dto.setDetail_5(fileName);
			dto.setIntro(multi.getParameter("intro"));
			dto.setRoomType(multi.getParameter("roomType"));
			dto.setBed(multi.getParameter("bed"));
			dto.setHotelView(multi.getParameter("hotelView"));
			dto.setCapacity(multi.getParameter("capacity"));
			dto.setCharge(charge);

			int cnt = dao.insert(dto);

			model.addAttribute("cnt", cnt);

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "/hotel/roomAddPro";
	}

}
