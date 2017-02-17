<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

{
    	"gender":"${gender}",
    	"total":"${total}",
	
	 "age": [
	<c:forEach items="${dtos}" var="age" varStatus="status">
		{"rng":"${age.rng}","num":${age.num}}
		<c:if test="${not status.isLast()}">, </c:if>
	</c:forEach>
	 ]
	
	
}

<%-- {"gender":"${gender}","total":"${total}",

"key3":[{"a":"a","b":"b"},{"a":"a","b":"b"},{"a":"a","b":"b"},{"a":"a","b":"b"}]}  --%>