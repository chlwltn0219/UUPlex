<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	[
	<c:forEach items="${daily}" var="day" varStatus="status">
		{ "date":"${day.DAY}", "sale":${day.SALE}}<c:if test="${not status.isLast()}">, </c:if>
	</c:forEach>
	]
