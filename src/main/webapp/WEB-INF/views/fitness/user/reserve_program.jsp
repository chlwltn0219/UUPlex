<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
	
	<c:if test="${fn:length(program) <= 0}">
		<h5>개설된 프로그램이 없습니다.</h5>
	</c:if>
	
	<c:if test="${fn:length(program) > 0}">
	<c:forEach items="${program}" var="p">
		<a class="list-group-item">	${p.pname} : ${p.tname} <input type="hidden" value="${p.pid}"></a>
	</c:forEach>
	</c:if>