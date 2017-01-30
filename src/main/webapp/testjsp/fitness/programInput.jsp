<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로그램 입력</title>
</head>
<body>
	<form class="form-horizontal">
		<div class="form-group">
			<label for="pname" class="col-sm-2 control-label">프로그램 이름</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="pname" 
					name="pname" placeholder="프로그램 이름">
			</div>
		</div>
		<div class="form-group">
			<label for="sid" class="col-sm-2 control-label">종목</label>
			<div class="col-sm-10">
				<select class="form-control" name="sid">
<%-- 					<c:forEach items="${sportsDtos}" var="sports"> --%>
<%-- 						<option value="${sports.sid}">${sports.sname}</option> --%>
<%-- 					</c:forEach> --%>
					<option>요가</option>
					<option>스피닝</option>
					<option>스쿼시</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="tid" class="col-sm-2 control-label">강사</label>
			<div class="col-sm-10">
				<select class="form-control" name="tid">
<%-- 					<c:forEach items="${teacherDtos}" var="teacher"> --%>
<%-- 						<option value="${teacher.tid}">${teacher.tname}</option> --%>
<%-- 					</c:forEach> --%>
					<option>유기민</option>
					<option>유영원</option>
					<option>박순남</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="price" class="col-sm-2 control-label">강의료</label>
			<div class="col-sm-10">
				<input type="number" class="form-control" id="price" 
					name="price" min="0" placeholder="강의료">
			</div>
		</div>
		<div class="form-group">
			<label for="pinfo" class="col-sm-2 control-label">프로그램 소개</label>
			<div class="col-sm-10">
				<textarea class="form-control" rows="5" id="pinfo" 
					name="pinfo" placeholder="프로그램 소개"></textarea>
			</div>
		</div>
		<hr>
		<div class="form-group">
			<label for="preparation" class="col-sm-2 control-label">개인 준비물</label>
			<div class="col-sm-10">
				<textarea class="form-control" rows="5" id="preparation" 
					name="preparation" placeholder="개인 준비물"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label for="preparationCost" class="col-sm-2 control-label">재료비</label>
			<div class="col-sm-10">
				<input type="number" class="form-control" id="preparationCost" 
					name="preparationCost" min="0" placeholder="재료비">
			</div>
		</div>
		<div class="form-group">
			<div class="pull-right">
				<input class="btn btn-primary" type="submit" value="등록">
				<input class="btn btn-danger" type="button" value="취소" onclick="">
			</div>
		</div>
	</form>
</body>
</html>