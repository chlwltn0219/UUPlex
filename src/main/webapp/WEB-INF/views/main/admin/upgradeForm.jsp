<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">

function upgradev(memId) {
	
	var grade = document.getElementById("gradeValue").value;
	
	window.location="upgradePro?grade=" + grade + "&memId=" + memId;
	
}

</script>
</head>
<body>

<form name="gradeform">

	<div class="container">
	
	<table class="table table-condensed" style="width:250px">
		<h1>등업</h1>
	
		<tr>
			<th>| ${memId} | 님 회원등급변경</th>
		</tr>
		
		<tr>
			<th>
			<select id="gradeValue" class="grade">
				<option value="일반회원">일반회원</option>
				<option value="Green회원">GREEN회원</option>
				<option value="Gold회원">GOLD회원</option>
				<option value="Vip회원">VIP회원</option>
			</select>
			</th>
		</tr>	
	
		<tr>
			<th>
			<input type="button" value="등업" class="btn btn-default" onclick="upgradev('${memId}')">	
			<input type="button" value="닫기" class="btn btn-default" onclick="window.location.reload()">	
			</th>
		</tr>
	</table>
	
	</div>
</form>	
</body>
</html>