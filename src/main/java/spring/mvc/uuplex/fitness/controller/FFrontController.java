package spring.mvc.uuplex.fitness.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.uuplex.fitness.handler.FClassDetailHandler;
import spring.mvc.uuplex.fitness.handler.FClassInputFormHandler;
import spring.mvc.uuplex.fitness.handler.FClassInputProHandler;
import spring.mvc.uuplex.fitness.handler.FClassListHandler;
import spring.mvc.uuplex.fitness.handler.FClassModifyHandler;
import spring.mvc.uuplex.fitness.handler.FClassroomDetailHandler;
import spring.mvc.uuplex.fitness.handler.FClassroomInputProHandler;
import spring.mvc.uuplex.fitness.handler.FClassroomListHandler;
import spring.mvc.uuplex.fitness.handler.FClassroomModifyHandler;
import spring.mvc.uuplex.fitness.handler.FDailySalesHandler;
import spring.mvc.uuplex.fitness.handler.FManagerStatementListHandler;
import spring.mvc.uuplex.fitness.handler.FMonthlySalesHandler;
import spring.mvc.uuplex.fitness.handler.FProgramDetailHandler;
import spring.mvc.uuplex.fitness.handler.FProgramInfoListHandler;
import spring.mvc.uuplex.fitness.handler.FProgramInputFormHandler;
import spring.mvc.uuplex.fitness.handler.FProgramInputProHandler;
import spring.mvc.uuplex.fitness.handler.FProgramListHandler;
import spring.mvc.uuplex.fitness.handler.FProgramModifyHandler;
import spring.mvc.uuplex.fitness.handler.FRefundFormHandler;
import spring.mvc.uuplex.fitness.handler.FRefundProHandler;
import spring.mvc.uuplex.fitness.handler.FReservableClassListHandler;
import spring.mvc.uuplex.fitness.handler.FReservableProgramListHandler;
import spring.mvc.uuplex.fitness.handler.FReserveDetailHandler;
import spring.mvc.uuplex.fitness.handler.FReserveFormHandler;
import spring.mvc.uuplex.fitness.handler.FReserveProHandler;
import spring.mvc.uuplex.fitness.handler.FSportsDetailHandler;
import spring.mvc.uuplex.fitness.handler.FSportsInputProHandler;
import spring.mvc.uuplex.fitness.handler.FSportsListHandler;
import spring.mvc.uuplex.fitness.handler.FSportsModifyHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherDetailHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherInfoListHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherInputHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherInputProHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherListHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherModifyHandler;
import spring.mvc.uuplex.fitness.handler.FTeacherSuitableListHandler;
import spring.mvc.uuplex.fitness.handler.FUserStatementListHandler;

@Controller
@RequestMapping("/fitness")
public class FFrontController{

   
   @Autowired
   FSportsListHandler sportsListHandler;
   @Autowired
   FSportsInputProHandler sportsAddHandler;
   @Autowired
   FSportsDetailHandler sportsDetailHandler;
   @Autowired
   FSportsModifyHandler sportsModifyHandler;
   
   @Autowired
   FTeacherListHandler tListHandler;
   @Autowired
   FTeacherInputHandler tInputHandler;
   @Autowired
   FTeacherInputProHandler tInputProHandler;
   @Autowired
   FTeacherDetailHandler tDetailHandler;
   @Autowired
   FTeacherModifyHandler tmodifyHandler;
   @Autowired
   FTeacherSuitableListHandler tSuitableListHandler;
   
   @Autowired
   FClassroomListHandler cListHandler;
   @Autowired
   FClassroomInputProHandler cinputHandler;
   @Autowired
   FClassroomDetailHandler cDetailHandler;
   @Autowired
   FClassroomModifyHandler cModifyHandler;
   
   @Autowired
   FProgramListHandler programListHandler;
   @Autowired
   FProgramInputFormHandler programInputFromHandler;
   @Autowired
   FProgramInputProHandler programInputProHandler;
   @Autowired
   FProgramDetailHandler programDetailHandler;
   @Autowired
   FProgramModifyHandler programModifyHandler;
   
   @Autowired
   FClassListHandler classListHandler;
   @Autowired
   FClassDetailHandler classDetailHandler;
   @Autowired
   FClassInputFormHandler classInputFormHandler;
   @Autowired
   FClassInputProHandler classInputHandler; 
   @Autowired
   FClassModifyHandler classModifyHandler; 
   
   @Autowired
   FManagerStatementListHandler managerStatementListHandler;
   
   @Autowired
   FReserveFormHandler reserveFormHandler;
   @Autowired
   FReservableProgramListHandler reservableProgramListHandler;
   @Autowired
   FReservableClassListHandler reservableClassListHandler;
   @Autowired
   FReserveProHandler reserveProHandler;
   @Autowired
   FReserveDetailHandler reserveDetailHandler;
   
   @Autowired
   FRefundFormHandler refundFormHandler;
   @Autowired
   FRefundProHandler refundProHandler; 
   
   @Autowired
   FUserStatementListHandler userStatementListHandler;
   @Autowired
   FTeacherInfoListHandler teacherInfoListHandler;
   @Autowired
   FProgramInfoListHandler programInfoListHandler;
   
   @Autowired
   FDailySalesHandler dailySalesHandler;
   @Autowired
   FMonthlySalesHandler monthlySalesHandler;

   // �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕: �뜝�룞�삕�듃�뜝�떦�룞�삕 �뜝�룞�삕�뜝�룞�삕
   @RequestMapping("")
   public String list(Model model){
      String viewPage = "fitness/user/fit_main";
      return viewPage;
   }
   
   // �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕: �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�듃
   @RequestMapping("/manage/sports/list")
   public String manageSportsList(HttpServletRequest req, Model model){
      
      try {
         req.setCharacterEncoding("UTF-8");
      } catch (UnsupportedEncodingException e) {
         e.printStackTrace();
      }
      
      model.addAttribute("req", req);
      String viewPage = sportsListHandler.process(model);
      return viewPage;
   }
   
   @RequestMapping("/manage/sports/inputForm")
   public String sportInputForm() {
      String viewPage = "/fitness/manage/sports_input";
      return viewPage;
   }
   
   @RequestMapping("/manage/sports/inputPro")
   public String sportsAdd(HttpServletRequest req, Model model){
      
      try {
         req.setCharacterEncoding("UTF-8");
      } catch (UnsupportedEncodingException e) {
         e.printStackTrace();
      }
      
      model.addAttribute("req", req);
      String viewPage = sportsAddHandler.process(model);
      return viewPage;
   }
   
   //筌ㅼ뮇占쏙옙�땾 : 占쎈돗占쎈뱜占쎈빍占쎈뮞 - �넫�굝�걠占쎄맒占쎄쉭占쎌젟癰귨옙
   @RequestMapping("/sports/detail")
   public String sportsDetail(HttpServletRequest req, Model model){
      model.addAttribute("req", req);
      String viewPage = sportsDetailHandler.process(model);
      return viewPage;
   }
   
   // 理쒖��닔 : �뵾�듃�땲�뒪 - 醫낅ぉ �젙蹂� �뤌
   @RequestMapping("/manage/sports/modify")
   public String sportsModify(HttpServletRequest req, Model model){
      model.addAttribute("req", req);
      String viewPage = "/fitness/manage/sports_modify";
      sportsDetailHandler.process(model);
      return viewPage;
   }
   
   // 理쒖��닔 : �뵾�듃�땲�뒪 - 醫낅ぉ �젙蹂� �닔�젙
   @RequestMapping("/manage/sports/modifyPro")
   public String sportsModifyPro(HttpServletRequest req, Model model){
      model.addAttribute("req", req);

      String viewPage = sportsModifyHandler.process(model);
      return viewPage;
   }
   
   
   
   // �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 : �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�듃
   @RequestMapping("/manage/teacher/list")
      public String list(HttpServletRequest req, Model model) {
         System.out.println("list()");
         
         model.addAttribute("req", req);
         String viewPage = tListHandler.process(model);
         
         return viewPage;     
   }
   
   // �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 : �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�뙥怨ㅼ삕
   @RequestMapping("/manage/teacher/input")
    public String input(HttpServletRequest req, Model model) {
         System.out.println("input()");
         
         model.addAttribute("req", req);
         String viewPage = tInputProHandler.process(model);
         
         return viewPage;     

   }
   
   @RequestMapping("/manage/teacher/inputForm")
   public String inputFrom(HttpServletRequest req, Model model) {
         String viewPage = tInputHandler.process(model);
         return viewPage;     
   }
   
   //源�吏꾩슦 : 媛뺤궗 �뵒�뀒�씪
   @RequestMapping("/teacher/detail")
   public String teacherDetail(HttpServletRequest req, Model model){
      
      model.addAttribute("req", req);
      String viewPage = tDetailHandler.process(model);
      return viewPage;
   }
   
   //源�吏꾩슦 : 媛뺤궗 �긽�꽭 �젙蹂� �닔�젙 �뤌
   @RequestMapping("/manage/teacher/modify")
   public String teacherModify(HttpServletRequest req, Model model){
      
      model.addAttribute("req", req);
      String viewPage = "/fitness/manage/teacher_modify";
      tDetailHandler.process(model);
      return viewPage;
   }
   
   //源�吏꾩슦 : 媛뺤궗 �긽�꽭 �젙蹂� �닔�젙
   @RequestMapping("/manage/teacher/modifyPro")
   public String teacherModifyPro(HttpServletRequest req, Model model){
      
      model.addAttribute("req", req);
      String viewPage = tmodifyHandler.process(model);
      
      return viewPage;
   }
   
   @RequestMapping("/teacher/suitable")
   public String suitableTeacher(HttpServletRequest req, Model model){
      model.addAttribute("req", req);
      String viewPage = tSuitableListHandler.process(model);
      return viewPage;
   }
   
   //源�吏꾩슦 : 媛뺤쓽�떎 由ъ뒪�듃
   @RequestMapping("/manage/classroom/list")
      public String clist(HttpServletRequest req, Model model) {
         System.out.println("clist()");
         
         model.addAttribute("req", req);
         String viewPage = cListHandler.process(model);
         
         return viewPage;     
   }
   
   //源�吏꾩슦 : 媛뺤쓽�떎 �벑濡�
   @RequestMapping("/manage/classroom/inputForm")
    public String cinputForm(HttpServletRequest req, Model model) {
         String viewPage = "/fitness/manage/classroom_input";  

         return viewPage;     

   }
   
   //媛뺤쓽�떎 異붽�
   @RequestMapping("/manage/classroom/input")
    public String cinput(HttpServletRequest req, Model model) {
         System.out.println("cinput()");
         
         model.addAttribute("req", req);
         String viewPage = cinputHandler.process(model);
         
         return viewPage;    
   }
   
   //源�吏꾩슦 : 媛뺤쓽�떎 �뵒�뀒�씪
   @RequestMapping("/classroom/detail")
   public String classroomDetail(HttpServletRequest req, Model model){
      
      model.addAttribute("req", req);
      String viewPage = cDetailHandler.process(model);
      return viewPage;
   }
   
   //源�吏꾩슦 : 媛뺤쓽�떎 �긽�꽭 �젙蹂� �닔�젙 �뤌
   @RequestMapping("/manage/classroom/modify")
   public String classroomModify(HttpServletRequest req, Model model){
      model.addAttribute("req", req);
      String viewPage = "/fitness/manage/classroom_modify";
      cDetailHandler.process(model);
      return viewPage;
   }
   
   // 源�吏꾩슦 : 媛뺤쓽�떎 - 醫낅ぉ �젙蹂� �닔�젙
   @RequestMapping("/manage/classroom/modifyPro")
   public String classroomModifyPro(HttpServletRequest req, Model model){

      model.addAttribute("req", req);
      String viewPage = cModifyHandler.process(model);
      
      return viewPage;
   }
   
   // �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕: �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�듃
   @RequestMapping("/manage/class/list")
   public String manageClassList(HttpServletRequest req, Model model){
      
      try {
         req.setCharacterEncoding("UTF-8");
      } catch (UnsupportedEncodingException e) {
         e.printStackTrace();
      }
      
      model.addAttribute("req", req);
      String viewPage = classListHandler.process(model);
      return viewPage;
   }
   
   @RequestMapping("/manage/class/inputForm")
   public String classInputForm(HttpServletRequest req, Model model) {
      String viewPage = null;
      viewPage = classInputFormHandler.process(model);
      return viewPage;
   }
   
   @RequestMapping("/manage/class/inputPro")
   public String classInputPro(HttpServletRequest req, Model model){
      
      try {
         req.setCharacterEncoding("UTF-8");
      } catch (UnsupportedEncodingException e) {
         e.printStackTrace();
      }
      
      model.addAttribute("req", req);
      String viewPage = classInputHandler.process(model);
      return viewPage;
   }
   
   //筌ㅼ뮇占쏙옙�땾 : 占쎈돗占쎈뱜占쎈빍占쎈뮞 - �넫�굝�걠占쎄맒占쎄쉭占쎌젟癰귨옙
   @RequestMapping("/class/detail")
   public String classDetail(HttpServletRequest req, Model model){
      model.addAttribute("req", req);
      String viewPage = classDetailHandler.process(model);
      return viewPage;
   }
   
   // 理쒖��닔 : �뵾�듃�땲�뒪 - 醫낅ぉ �젙蹂� �뤌
   @RequestMapping("/manage/class/modify")
   public String classModify(HttpServletRequest req, Model model){
      String viewPage = "/fitness/manage/class_modify";
      model.addAttribute("req", req);
      classDetailHandler.process(model);
      classInputFormHandler.process(model);
      return viewPage;
   }
   
   // 理쒖��닔 : �뵾�듃�땲�뒪 - 醫낅ぉ �젙蹂� �닔�젙
   @RequestMapping("/manage/class/modifyPro")
   public String classModifyPro(HttpServletRequest req, Model model){
      model.addAttribute("req", req);
      
      String viewPage = classModifyHandler.process(model); 
      return viewPage;
   }
   
   // �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕: �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�듃
   @RequestMapping("/manage/program/list")
   public String manageProgramList(HttpServletRequest req, Model model){
      
      try {
         req.setCharacterEncoding("UTF-8");
      } catch (UnsupportedEncodingException e) {
         e.printStackTrace();
      }
      
      model.addAttribute("req", req);
      String viewPage = programListHandler.process(model);
      return viewPage;
   }
   
   @RequestMapping("/manage/program/inputForm")
   public String programInputForm(HttpServletRequest req, Model model) {
      String viewPage = programInputFromHandler.process(model);
      return viewPage;
   }
   
   @RequestMapping("/manage/program/inputPro")
   public String programInputPro(HttpServletRequest req, Model model){
      
      try {
         req.setCharacterEncoding("UTF-8");
      } catch (UnsupportedEncodingException e) {
         e.printStackTrace();
      }
      
      model.addAttribute("req", req);
      String viewPage = programInputProHandler.process(model);
      return viewPage;
   }
   
   //筌ㅼ뮇占쏙옙�땾 : 占쎈돗占쎈뱜占쎈빍占쎈뮞 - �넫�굝�걠占쎄맒占쎄쉭占쎌젟癰귨옙
   @RequestMapping("/program/detail")
   public String programDetail(HttpServletRequest req, Model model){
      model.addAttribute("req", req);
      String viewPage = programDetailHandler.process(model);
      return viewPage;
   }
   
   // 理쒖��닔 : �뵾�듃�땲�뒪 - 醫낅ぉ �젙蹂� �뤌
   @RequestMapping("/manage/program/modify")
   public String programModify(HttpServletRequest req, Model model){
      model.addAttribute("req", req);
      String viewPage = "/fitness/manage/program_modify";
      programDetailHandler.process(model);
      return viewPage;
   }
   
   // 理쒖��닔 : �뵾�듃�땲�뒪 - 醫낅ぉ �젙蹂� �닔�젙
   @RequestMapping("/manage/program/modifyPro")
   public String programModifyPro(HttpServletRequest req, Model model){
      model.addAttribute("req", req);
      
      String viewPage = programModifyHandler.process(model);
      return viewPage;
   }
   
   @RequestMapping("/manage/statement/list")
   public String managerStatementList(HttpServletRequest req, Model model){
	   String viewPage = null; 
      model.addAttribute("req", req);
      viewPage = managerStatementListHandler.process(model);
      return viewPage;
   }
   
   @RequestMapping("/manage/statement/dailySales")
   public String dailySales(HttpServletRequest req, Model model){
      String viewPage = null;
      model.addAttribute("req", req);
      viewPage = dailySalesHandler.process(model);
      return viewPage;
   }
   
   @RequestMapping("/manage/statement/monthlySales")
   public String monthSales(HttpServletRequest req, Model model){
      String viewPage = null;
      model.addAttribute("req", req);
      viewPage = monthlySalesHandler.process(model);
      return viewPage;
   }

   // 源�吏꾩슦 : �뵾�듃�땲�뒪 - 醫낅ぉ �젙蹂� �닔�젙
   @RequestMapping("/user/teacher")
   public String uTeacherList(HttpServletRequest req, Model model){
      model.addAttribute("req", req);

      String viewPage = teacherInfoListHandler.process(model); 
      return viewPage;
   }
   
   
   // 예약 화면 호출
   @RequestMapping("/user/reserve")
   public String reservePage(HttpServletRequest req, Model model){
      String viewPage = null;
      
      model.addAttribute("req", req);
      viewPage = reserveFormHandler.process(model);

      return viewPage;
   }
   
   @RequestMapping("/user/reserve/program")
   public String reservableProgram(HttpServletRequest req, Model model){
      String viewPage = null;
      
      model.addAttribute("req", req);
      viewPage = reservableProgramListHandler.process(model);

      return viewPage;
   }
   
   @RequestMapping("/user/reserve/class")
   public String reservableClass(HttpServletRequest req, Model model){
      String viewPage = null;
      
      model.addAttribute("req", req);
      viewPage = reservableClassListHandler.process(model);

      return viewPage;
   }
   
   @RequestMapping("/user/reserve/detail")
   public String reservableDetail(HttpServletRequest req, Model model){
      String viewPage = null;
      
      model.addAttribute("req", req);
      viewPage = reserveDetailHandler.process(model);

      return viewPage;
   }
   
   @RequestMapping("/user/reservePro")
   public String reservePro(HttpServletRequest req, Model model){
      String viewPage = null;
      
      model.addAttribute("req", req);
      viewPage = reserveProHandler.process(model);

      return viewPage;
   }
   
   @RequestMapping("/user/program")
   public String uProgramList(HttpServletRequest req, Model model){
      String viewPage = null;
      
      model.addAttribute("req", req);
      viewPage = programInfoListHandler.process(model);

      return viewPage;
   }
   
   @RequestMapping("/user/statement")
   public String userStatementList(HttpServletRequest req, Model model){
      String viewPage = null;
      
      model.addAttribute("req", req);
      viewPage = userStatementListHandler.process(model);

      return viewPage;
   }
   
   @RequestMapping("/user/statement/refund")
   public String refundCheck(HttpServletRequest req, Model model){
      String viewPage = null;
      model.addAttribute("req", req);
      viewPage = refundFormHandler.process(model);
      return viewPage;
   }
   
   @RequestMapping("/user/statement/refundPro")
   public String refundPro(HttpServletRequest req, Model model){
      String viewPage = null;
      model.addAttribute("req", req);
      viewPage = refundProHandler.process(model);
      return viewPage;
   }
   
}