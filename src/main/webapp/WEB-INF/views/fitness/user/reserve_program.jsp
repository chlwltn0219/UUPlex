<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>

	<c:forEach items="${program}" var="p">
		<a class="list-group-item">	${p.pname} : ${p.tname} <input type="hidden" value="${p.pid}"></a>
	</c:forEach>