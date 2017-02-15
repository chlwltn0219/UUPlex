<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

{
    	"gender":"${gender}",
    	"total":"${total}"
    	
	<%-- [
	<c:forEach items="${daily}" var="day" varStatus="status">
		{ "date":"${day.DAY}", "sale":${day.SALE}}<c:if test="${not status.isLast()}">, </c:if>
	</c:forEach>
	
	<c:forEach items="${dtos}" var="age" varStatus="status">
		<c:if test="${age.num == null}"> 
		{"num":0}
		</c:if>
		<c:if test="${age.num != null}">
		{"num":"${age.num}"}
		</c:if>
	</c:forEach>
	] --%>
	
	
}