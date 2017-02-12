package spring.mvc.uuplex.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.admin.handler.ContentEventFormHandler;
import spring.mvc.uuplex.admin.handler.ContentFormHandler;
import spring.mvc.uuplex.admin.handler.ContentNotiFormHandler;
import spring.mvc.uuplex.admin.handler.EventDelFormHandler;
import spring.mvc.uuplex.admin.handler.EventDelProHandler;
import spring.mvc.uuplex.admin.handler.EventModifyFormHandler;
import spring.mvc.uuplex.admin.handler.EventModifyProHandler;
import spring.mvc.uuplex.admin.handler.EventModifyViewHandler;
import spring.mvc.uuplex.admin.handler.EventWriteFormHandler;
import spring.mvc.uuplex.admin.handler.EventWriteProHandler;
import spring.mvc.uuplex.admin.handler.EventlistHandler;
import spring.mvc.uuplex.admin.handler.NoticeDelFormHandler;
import spring.mvc.uuplex.admin.handler.NoticeDelProHandler;
import spring.mvc.uuplex.admin.handler.NoticeModifyFormHandler;
import spring.mvc.uuplex.admin.handler.NoticeModifyProHandler;
import spring.mvc.uuplex.admin.handler.NoticeModifyViewHandler;
import spring.mvc.uuplex.admin.handler.NoticeWriteFormHandler;
import spring.mvc.uuplex.admin.handler.NoticeWriteProHandler;
import spring.mvc.uuplex.admin.handler.NoticelistHandler;
import spring.mvc.uuplex.admin.handler.QnADelFormHandler;
import spring.mvc.uuplex.admin.handler.QnADelProHandler;
import spring.mvc.uuplex.admin.handler.QnAModifyFormHandler;
import spring.mvc.uuplex.admin.handler.QnAModifyProHandler;
import spring.mvc.uuplex.admin.handler.QnAModifyViewHandler;
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
		
		System.out.println("Q&A �Խ��� ������");
		
		model.addAttribute("req", req);
		
		String viewPage = qnAlistHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	QnAWriteFormHandler qnAWriteFormHandler;
	@RequestMapping("/qnAWriteForm")
	public String qnAWrite(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A�۾���");

		model.addAttribute("req", req);
		
		String viewPage = qnAWriteFormHandler.process(model);
		
		return viewPage;
	}
	
	@Autowired
	QnAWriteProHandler qnAWriteProHandler;
	@RequestMapping("/qnAWritePro")
	public String qnAWritePro(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A�۾��� ó��");
		
		model.addAttribute("req", req);
		
		String viewPage = qnAWriteProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	ContentFormHandler contentFormHandler;
	@RequestMapping("/contentForm")
	public String contentForm(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A �ۺ���");
		
		model.addAttribute("req", req);
		
		String viewPage = contentFormHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	QnAModifyFormHandler qnAModifyFormHandler;
	@RequestMapping("/noneSM/qnAModifyForm")
	public String qnAModifyForm(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A ���� ��й�ȣ Ȯ��");
		
		model.addAttribute("req", req);
		
		String viewPage = qnAModifyFormHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	QnAModifyViewHandler qnAModifyViewHandler;
	@RequestMapping("/qnAModifyView")
	public String qnAModifyView(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A ���� ������");
		
		model.addAttribute("req", req);
		
		String viewPage = qnAModifyViewHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	QnAModifyProHandler qnAModifyProHandler;
	@RequestMapping("/qnAModifyPro")
	public String qnAModifyPro(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A ���� ó��");
		
		model.addAttribute("req", req);
		
		String viewPage = qnAModifyProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	QnADelFormHandler qnADelFormHandler;
	@RequestMapping("/noneSM/qnADelForm")
	public String qnADelForm(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A ���� ��й�ȣ Ȯ��");
		
		model.addAttribute("req", req);
		
		String viewPage = qnADelFormHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	QnADelProHandler qnADelProHandler;
	@RequestMapping("/qnADelPro")
	public String qnADelPro(HttpServletRequest req, Model model) {
		
		System.out.println("Q&A ���� ó��");
		
		model.addAttribute("req", req);
		
		String viewPage = qnADelProHandler.process(model);

		return viewPage;
	}
	
	// ��������
	
	@Autowired
	NoticelistHandler noticelistHandler;
	@RequestMapping("/notice")
	public String noticelist(HttpServletRequest req, Model model) {
		
		System.out.println("�������� �Խ��� ������");
		
		model.addAttribute("req", req);
		
		String viewPage = noticelistHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	NoticeWriteFormHandler noticeWriteFormHandler;
	@RequestMapping("/noticeWriteForm")
	public String noticeWrite(HttpServletRequest req, Model model) {
		
		System.out.println("�������� �۾���");

		model.addAttribute("req", req);
		
		String viewPage = noticeWriteFormHandler.process(model);
		
		return viewPage;
	}
	
	@Autowired
	NoticeWriteProHandler noticeWriteProHandler;
	@RequestMapping("/noticeWritePro")
	public String noticeWritePro(HttpServletRequest req, Model model) {
		
		System.out.println("�������� �۾��� ó��");
		
		model.addAttribute("req", req);
		
		String viewPage = noticeWriteProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	ContentNotiFormHandler contentNotiFormHandler;
	@RequestMapping("/contentNotiForm")
	public String contentNotiForm(HttpServletRequest req, Model model) {
		
		System.out.println("�������� �ۺ���");
		
		model.addAttribute("req", req);
		
		String viewPage = contentNotiFormHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	NoticeModifyFormHandler noticeModifyFormHandler;
	@RequestMapping("/noneSM/noticeModify")
	public String noticeModify(HttpServletRequest req, Model model) {
		
		System.out.println("�������� ���� ��й�ȣ Ȯ��");
		
		model.addAttribute("req", req);
		
		String viewPage = noticeModifyFormHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	NoticeModifyViewHandler noticeModifyViewHandler;
	@RequestMapping("/noticeModifyView")
	public String noticeModifyView(HttpServletRequest req, Model model) {
		
		System.out.println("�������� ���� ������");
		
		model.addAttribute("req", req);
		
		String viewPage = noticeModifyViewHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	NoticeModifyProHandler noticeModifyProHandler;
	@RequestMapping("/noticeModifyPro")
	public String noticeModifyPro(HttpServletRequest req, Model model) {
		
		System.out.println("�������� ���� ó��");
		
		model.addAttribute("req", req);
		
		String viewPage = noticeModifyProHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	NoticeDelFormHandler noticeDelFormHandler;
	@RequestMapping("/noneSM/noticeDel")
	public String noticeDel(HttpServletRequest req, Model model) {
		
		System.out.println("�������� ����");
		
		model.addAttribute("req", req);
		
		String viewPage = noticeDelFormHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	NoticeDelProHandler noticeDelProHandler;
	@RequestMapping("/noticeDelPro")
	public String noticeDelPro(HttpServletRequest req, Model model) {
		
		System.out.println("�������� ���� ó��");
		
		model.addAttribute("req", req);
		
		String viewPage = noticeDelProHandler.process(model);

		return viewPage;
	}
	
	
	// �̺�Ʈ �Խ���
	
	@Autowired
	EventlistHandler eventlistHandler;
	@RequestMapping("/event")
	public String eventlist(HttpServletRequest req, Model model) {
		
		System.out.println("�̺�Ʈ �Խ��� ������");
		
		model.addAttribute("req", req);
		
		String viewPage = eventlistHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	ContentEventFormHandler contentEventFormHandler;
	@RequestMapping("/contentEventForm")
	public String contentEventForm(HttpServletRequest req, Model model) {
		
		System.out.println("�̺�Ʈ �ۺ���");
		
		model.addAttribute("req", req);
		
		String viewPage = contentEventFormHandler.process(model);

		return viewPage;
	}
	
	
	@Autowired
	EventWriteFormHandler eventWriteFormHandler;
	@RequestMapping("/eventWriteForm")
	public String eventWriteForm(HttpServletRequest req, Model model) {
		
		System.out.println("�̺�Ʈ �۾���");

		model.addAttribute("req", req);
		
		String viewPage = eventWriteFormHandler.process(model);
		
		return viewPage;
	}
	
	
	@Autowired
	EventWriteProHandler eventWriteProHandler;
	@RequestMapping("/eventWritePro")
	public String eventWritePro(HttpServletRequest req, Model model) {
		
		System.out.println("�̺�Ʈ �۾��� ó��");
		
		model.addAttribute("req", req);
		
		String viewPage = eventWriteProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	EventModifyFormHandler eventModifyFormHandler;
	@RequestMapping("/noneSM/eventModify")
	public String eventModifyForm(HttpServletRequest req, Model model) {
		
		System.out.println("�̺�Ʈ ���� ��й�ȣ Ȯ��");
		
		model.addAttribute("req", req);
		
		String viewPage = eventModifyFormHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	EventModifyViewHandler eventModifyViewHandler;
	@RequestMapping("/eventModifyView")
	public String eventModifyViewHandler(HttpServletRequest req, Model model) {
		
		System.out.println("�̺�Ʈ ���� ������");
		
		model.addAttribute("req", req);
		
		String viewPage = eventModifyViewHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	EventModifyProHandler eventModifyProHandler;
	@RequestMapping("/eventModifyPro")
	public String eventModifyProHandler(HttpServletRequest req, Model model) {
		
		System.out.println("�̺�Ʈ ���� ó��");
		
		model.addAttribute("req", req);
		
		String viewPage = eventModifyProHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	EventDelFormHandler eventDelFormHandler;
	@RequestMapping("/noneSM/eventDel")
	public String eventDel(HttpServletRequest req, Model model) {
		
		System.out.println("�̺�Ʈ ���� ��й�ȣ Ȯ��");
		
		model.addAttribute("req", req);
		
		String viewPage = eventDelFormHandler.process(model);

		return viewPage;
	}
	
	@Autowired
	EventDelProHandler eventDelProHandler;
	@RequestMapping("/eventDelPro")
	public String eventDelPro(HttpServletRequest req, Model model) {
		
		System.out.println("�̺�Ʈ ���� ��й�ȣ Ȯ��");
		
		model.addAttribute("req", req);
		
		String viewPage = eventDelProHandler.process(model);

		return viewPage;
	}
	
}
