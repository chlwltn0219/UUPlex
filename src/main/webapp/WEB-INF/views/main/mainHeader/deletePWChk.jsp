<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<style>
		.con {
			margin : 30px;
		}
	
	</style>
	
	<script type="text/javascript">
		function deleteChk() {
			if(!document.deletePWC.passwd.value){
				alert("비밀번호를 입력하세요");
				return false;
			}
			
			var passwd = document.deletePWC.passwd.value;
			
			window.location="deletePro?passwd=" + passwd;
		}
	
	</script>

</head>
<body>

<form name="deletePWC">

	<div class="con">

	<div class="container">
	
		<h1>회원탈퇴</h1> <br>
	
	<table style="width:500px" border=0;>
		
		<tr>
			<th colspan="8">탈퇴하시려면 비밀번호를 입력하세요</th>
		</tr>
		<tr>
			
		</tr>
		
		<tr style="height:100px">
			<th>
			
	      	  <input type="password" name="passwd" class="form-control" maxlength="16" placeholder="비밀번호를 입력하세요" style="font-family:'함초롱바탕'">
	    		
	  		<th>
		</tr>	
	
		<tr>
			<th colspan="8">
			<input type="button" value="회원탈퇴" class="btn btn-default" onclick="deleteChk()">	
			<input type="button" value="닫기" class="btn btn-default" onclick="window.location.reload()">	
			</th>
		</tr>
	</table>
	
	</div>
	</div>
</form>	
</body>
</html>