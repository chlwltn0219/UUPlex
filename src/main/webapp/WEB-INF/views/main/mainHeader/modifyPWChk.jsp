<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>

<form name="ModifyPWC">

	<div class="container">
	
	<table class="table table-condensed" style="width:250px">
		<h1>등업</h1>
	
		<tr>
			<th>비밀번호를 입력하세요</th>
		</tr>
		
		<tr>
			<div class="form-group">
	    	<label for="inputPassword3" class="col-sm-2 control-label">비밀번호 확인</label>
	    		<div class="col-sm-6">
	      			<input type="password" name="passwdChk" class="form-control" id="inputPassword3" maxlength="16" placeholder="비밀번호를 확인하세요" style="font-family:'함초롱바탕'" onkeyup="pwdChk()">
	    		</div>
	  		</div>
		</tr>	
	
		<tr>
			<th>
			<input type="button" value="입력" class="btn btn-default" onclick="upgradev('${memId}')">	
			<input type="button" value="닫기" class="btn btn-default" onclick="window.location.reload()">	
			</th>
		</tr>
	</table>
	
	</div>
</form>	
</body>
</html>