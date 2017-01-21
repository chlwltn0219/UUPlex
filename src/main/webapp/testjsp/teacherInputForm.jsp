<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강사 입력</title>
</head>
<body>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>강사 정보 입력</h4>
		</div>			
		<div class="panel-body">
			<form action = "" name="" onsubmit="">
				  <div class="form-group">
				    <label for="tname">강사명</label>
				    <input type="text" class="form-control" id="tname" name="tname" placeholder="강사명을 입력하세요">
				  </div>
				  <div class="form-group">
				    <label for="tinfo">강사 소개</label>
				    <textarea class="form-control" rows="10" id="tinfo" name="tinfo" placeholder="내용을 입력하세요"></textarea>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputFile">강사 사진 업로드</label>
				    <input type="file" id="tpicuture">
				  <div class="pull-right">
				  <button type="submit" class="btn btn-primary">입력</button>	
				  <button type="reset" class="btn btn-warning">입력 취소</button>
				  <button type="button" class="btn btn-danger">취소</button>		
				  </div>
			</form>
		</div>
  </div>

	
	
	

</body>
</html>