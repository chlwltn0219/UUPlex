<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String date = request.getParameter("date");
		String curdate = request.getParameter("curdate");
	%>
	<input class="btn btn-default" name="date" type="date" value="<%=date%>" style="height:30px"> -
  	<input class="btn btn-default" name="curdate" type="date" value="<%=curdate%>" style="height:30px">

</body>
</html>