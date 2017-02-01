<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


		<label>강사</label>
		<select class="form-control" name="tid">
			<c:forEach items="${teacher}" var="t">
			<option value="${t.tid}">${t.tname}</option>
			</c:forEach>
		</select>