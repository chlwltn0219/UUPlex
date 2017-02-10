<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	[
	<c:forEach items="${monthly}" var="month" varStatus="status">
		{ "date":"${month.MONTH}", "sale":${month.SALE}}<c:if test="${not status.isLast()}">, </c:if>
	</c:forEach>
	]
