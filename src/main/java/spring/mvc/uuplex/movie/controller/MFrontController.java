package spring.mvc.uuplex.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.movie.handler.AddMovieInfoHandler;
import spring.mvc.uuplex.movie.handler.GetMovieInfoHandler;

@Controller
@RequestMapping("/c-box")
public class MFrontController {

	@RequestMapping("")
	public String list() {
		System.out.println("c-box main");

		String viewPage = "c-box/Movie_main";

		return viewPage;
	}

	// ������ >����>>��ȭ��������
	@RequestMapping("/ManageMovieInfo")
	public String ManageMovieInfo() {
		System.out.println("ManageMovieInfo");

		String viewPage = "c-box/ManageMovieInfo";

		return viewPage;
	}

	// ������ >��ȭ��������>>��ȭ�����߰�
	@Autowired
	AddMovieInfoHandler addMovieInfoHandler;
	
	@RequestMapping("/AddMovieInfo")
	public String AddMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("AddMovieInfo");

		// �𵨿� ��û ���
		model.addAttribute("req", req);

		// �ڵ鷯�� �� ������
		String viewPage = addMovieInfoHandler.process(model);

		return viewPage;
	}

	// ������>��ȭ��������>>��ȭ�����߰�ó��
	@RequestMapping("/addMoviePro")
	public String addMovieInfoPro() {
		System.out.println("addMoviePro");

		String viewPage = "c-box/addMoviePro";

		return viewPage;
	}

	// ������>��ȭ������������
	@Autowired
	GetMovieInfoHandler getMovieInfoHandler;
	@RequestMapping("/getMovieInfo")
	public String getMovieInfo(HttpServletRequest req, Model model) {
		System.out.println("getMovieInfo");

		model.addAttribute("req", req);

		// �ڵ鷯�� �� ������
		String viewPage = getMovieInfoHandler.process(model);

		return viewPage;
	}

}
