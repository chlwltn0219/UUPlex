<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="UTF-8"/>

<%
	int option = 0;
	option = Integer.parseInt(request.getParameter("option"));
%>

추가금액 : &nbsp;&nbsp;&nbsp; <font size="4em"> <input type="hidden" value="<%=option%>" name="option"><fmt:formatNumber value="<%=option%>" pattern="#,###.##" /> 원 </font>

