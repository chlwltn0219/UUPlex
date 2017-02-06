<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="UTF-8"/>

<%
	int totCharge = 0;
	totCharge = Integer.parseInt(request.getParameter("charge"));
%>

총 결제금액 : &nbsp;&nbsp;&nbsp; <font size="5em"> <%=totCharge%>원 </font>

