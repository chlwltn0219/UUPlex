package spring.mvc.uuplex.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.admin.handler.ContentFormHandler;
import spring.mvc.uuplex.admin.handler.ContentNotiFormHandler;
import spring.mvc.uuplex.admin.handler.NoticeWriteFormHandler;
import spring.mvc.uuplex.admin.handler.NoticeWriteProHandler;
import spring.mvc.uuplex.admin.handler.NoticelistHandler;
import spring.mvc.uuplex.admin.handler.QnAWriteFormHandler;
import spring.mvc.uuplex.admin.handler.QnAWriteProHandler;
import spring.mvc.uuplex.admin.handler.QnAlistHandler;


@Controller
public class ABoardController {

	// Q&A
	
	@Autowired
	QnAlistHandler qnAlistHandler;
	@RequestMapping("/qna")
	public String qnAlist(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A 게시판 페이지");
		
		model.addAttribute("req", req);
		
		String viewPage = qnAlistHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	QnAWriteFormHandler qnAWriteFormHandler;
	@RequestMapping("/qnAWriteForm")
	public String qnAWrite(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A글쓰기");

		model.addAttribute("req", req);
		
		String viewPage = qnAWriteFormHandler.process(model);
		
		return viewPage;
	}
	
	@Autowired
	QnAWriteProHandler qnAWriteProHandler;
	@RequestMapping("/qnAWritePro")
	public String qnAWritePro(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A글쓰기 처리");
		
		model.addAttribute("req", req);
		
		String viewPage = qnAWriteProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	ContentFormHandler contentFormHandler;
	@RequestMapping("/contentForm")
	public String contentForm(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A 글보기");
		
		model.addAttribute("req", req);
		
		String viewPage = contentFormHandler.process(model);

		return viewPage;
	}
	
	
	// 공지사항
	
	@Autowired
	NoticelistHandler noticelistHandler;
	@RequestMapping("/notice")
	public String noticelist(HttpServletRequest req, Model model) {
		
		System.out.println("공지사항 게시판 페이지");
		
		model.addAttribute("req", req);
		
		String viewPage = noticelistHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	NoticeWriteFormHandler noticeWriteFormHandler;
	@RequestMapping("/noticeWriteForm")
	public String noticeWrite(HttpServletRequest req, Model model) {
		
		System.out.println("공지사항 글쓰기");

		model.addAttribute("req", req);
		
		String viewPage = noticeWriteFormHandler.process(model);
		
		return viewPage;
	}
	
	@Autowired
	NoticeWriteProHandler noticeWriteProHandler;
	@RequestMapping("/noticeWritePro")
	public String noticeWritePro(HttpServletRequest req, Model model) {
		
		System.out.println("공지사항 글쓰기 처리");
		
		model.addAttribute("req", req);
		
		String viewPage = noticeWriteProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	ContentNotiFormHandler contentNotiFormHandler;
	@RequestMapping("/contentNotiForm")
	public String contentNotiForm(HttpServletRequest req, Model model) {
		
		System.out.println("공지사항 글보기");
		
		model.addAttribute("req", req);
		
		String viewPage = contentNotiFormHandler.process(model);

		return viewPage;
	}
	
	
}
