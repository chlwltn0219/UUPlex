<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	String pwd = request.getParameter("pwd");
	String pwdchk = request.getParameter("pwdchk");
	String msg = "";
%>

<% if(pwd.equals("") || pwdchk.equals("")) {
	
		msg = "";
	
%> 

	<%= msg %>

<%	} else if(pwd.equals(pwdchk)) {
	
		msg = "비밀번호 일치";
		
%> 

	<a style="color:blue"><%= msg %></a>
	
<%	} else if(!pwd.equals(pwdchk)) {
		
		msg = "비밀번호 불일치";
%> 

	<a style="color:red"><%= msg %></a>

<%	}

%>


	

