package spring.mvc.uuplex.movie.handler;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import spring.mvc.uuplex.movie.dao.MovieDAO;
import spring.mvc.uuplex.movie.dto.MovieInfoDTO;

@Service
public class AddMovieInfoHandler implements MCommandHandler {

	@Autowired
	MovieDAO dao;

	@Override
	public String process(Model model) {
		Map<String, Object> map = model.asMap();

		HttpServletRequest req = (HttpServletRequest) map.get("req");

		// String path = req.getServletContext().getRealPath("saveImage");
		String path = "C:\\Dev\\uploadImages\\uuplex\\c-box";

		java.io.File f = new java.io.File(path);

		if (!f.exists()) {
			f.mkdirs();
		}

		System.out.println("path : " + path);
		int size = 1024 * 1024 * 10; // 10MB

		try {
			MultipartRequest multi = new MultipartRequest(req, path, size, "UTF-8", new DefaultFileRenamePolicy());

			Enumeration file = multi.getFileNames();
			
			String[] str = new String[3];
			String[] fileName = new String[3];
			
			if (file.hasMoreElements()) {
				for (int i = 0; i <3; i++) {
					str[i] = (String) file.nextElement();
					fileName[i] = multi.getFilesystemName(str[i]);
				}
			}
			

			/* <%=request.getServletContext().getContextPath()%>${dto.image} */

			MovieInfoDTO dto = new MovieInfoDTO();
			String title1 = multi.getParameter("title1");
			String title2 = multi.getParameter("title2");
			String director = multi.getParameter("director");
			String starring = multi.getParameter("starring");
			String synopsis = multi.getParameter("synopsis");
			String[] genres = multi.getParameterValues("genre");

			String genre = "";

			for (int i = 0; i < genres.length; i++) {

				genre = genre + (i == 0 ? genres[i] : ", " + genres[i]);
			}

			String MPAARating = multi.getParameter("MPAARating");
			int productionYear = Integer.parseInt(multi.getParameter("productionYear"));
			int runTime = Integer.parseInt(multi.getParameter("runTime"));
			String trailer = multi.getParameter("trailer");
			String status = multi.getParameter("status");

			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

			try {
				java.util.Date utilDate = format.parse(multi.getParameter("releaseDate"));
				java.sql.Date releaseDate = new Date(utilDate.getTime());
				dto.setReleaseDate(releaseDate);

			} catch (ParseException e) {
				e.printStackTrace();

			}

			dto.setTitle1(title1);
			dto.setTitle2(title2);
			dto.setDirector(director);
			dto.setStarring(starring);
			dto.setGenre(genre);
			dto.setMPAARating(MPAARating);
			dto.setProductionYear(productionYear);
			dto.setRunTime(runTime);
			dto.setPoster(fileName[0]);
			dto.setMovie_img1(fileName[1]);
			dto.setMovie_img2(fileName[2]);
			dto.setTrailer(trailer);
			dto.setStatus(status);
			dto.setSynopsis(synopsis);
			
			int cnt = dao.addMovieInfo(dto);

			model.addAttribute("cnt", cnt);

			System.out.println("cnt:" + cnt);

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "c-box/manage/movie_inputPro";

	}
}