<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
@charset "utf-8";

#content {
   width: 1700px;
   margin-top: 100px;
   margin-bottom: 200px;
}

.a2 {
	text-decoration: none;
	color: #5c5c5c;
}

.list_over {
	background-color: #F3F7FD;
}

.list_out {
	background-color: #FFFFFF;
}

.list_over2 {
	background-color: #e5e5e5;
}

a {
	text-decoration: none;
	color: #5c5c5c;
}

#today {
	background-color: #CCCCCC;
	color: #000000;
}

.base {
	border: 1px solid #8e8e8e;
}

.sun {
	border: 1px solid #8e8e8e;
	color: #FF0000;
}

tr {
	height: 11%;
}

a:hover {
	text-decoration: underline;
	color: #5c5c5c;
}

.dot {style;
	border-top-style: dashed;
	border-bottom-style: dashed;
	border-left-style: dashed;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-color: rgb(71, 71, 71);
	border-right-color: rgb(71, 71, 71);
	border-bottom-color: rgb(71, 71, 71);
	border-left-color: rgb(71, 71, 71);
	background-color: rgb(232, 232, 232);
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}

table {
	border-collapse: collapse;
	border-cellpadding: cellpadding;
	height: 500px;
	width: 500px;
	align: center;
	border: 0;
}
</style>
<title>달력</title>
<script type="text/javascript">
	function selectCheck(form) {
		form.submit();
	}
	function monthDown(form) {
		if (form.month.value > 1) {
			form.month.value--;
		} else {
			form.month.value = 12;
			form.year.value--;
		}
		form.submit();
	}
	function monthUp(form) {
		if (form.month.value < 12) {
			form.month.value++;
		} else {
			form.month.value = 1;
			form.year.value++;
		}
		form.submit();
	}
</script>
</head>
<body>
	<%
		//현재 날짜 정보 
		Calendar cr = Calendar.getInstance();
		int year = cr.get(Calendar.YEAR);
		int month = cr.get(Calendar.MONTH);
		int date = cr.get(Calendar.DATE);

		//오늘 날짜
		String today = year + ":" + (month + 1) + ":" + date;

		//선택한 연도 / 월
		String input_year = request.getParameter("year");
		String input_month = request.getParameter("month");

		if (input_month != null) {
			month = Integer.parseInt(input_month) - 1;
		}
		if (input_year != null) {
			year = Integer.parseInt(input_year);
		}
		// 1일부터 시작하는 달력을 만들기 위해 오늘의 연도,월을 셋팅하고 일부분은 1을 셋팅한다.
		cr.set(year, month, 1);

		// 셋팅한 날짜로 부터 아래 내용을 구함

		// 해당 월의 첫날를 구함
		int startDate = cr.getMinimum(Calendar.DATE);

		// 해당 월의 마지막 날을 구함
		int endDate = cr.getActualMaximum(Calendar.DATE);

		// 1일의 요일을 구함
		int startDay = cr.get(Calendar.DAY_OF_WEEK);

		int count = 0;
	%>

	<div id="content">
		<div class="container">
			<form method="post" action="adminCalendar" name="change">
				<h3>예약내역 확인</h3>
				<br><br>
				<table id="" cellpadding="2" cellspacing="0" border="1" align="center">
					<tr>
						<td colspan="2" align="center"><input type="button" value="◁"
							onClick="monthDown(this.form)"></td>
						<td colspan="3" align="center"><select name="year"
							onchange="selectCheck(this.form)">
								<%
									for (int i = year; i < year + 1; i++) {
										String selected = (i == year) ? "selected" : "";
										String color = (i == year) ? "#CCCCCC" : "#FFFFFF";
										out.print("<option value=" + i + " " + selected + " style=background:" + color + ">" + i + "</option>");
									}
								%>
						</select> <select name="month" onchange="selectCheck(this.form)">
								<%
									for (int i = month; i <= month + 3; i++) {
										String selected = (i == month + 1) ? "selected" : "";
										String color = (i == month + 1) ? "#CCCCCC" : "#FFFFFF";
										out.print("<option value=" + i + " " + selected + " style=background:" + color + ">" + i + "</option>");
									}
								%>
						</select></td>
						<td colspan="2" align="center"><input type="button" value="▷"
							onClick="monthUp(this.form)"></td>
					</tr>
					<tr>
						<td align="center" colspan="7"><a href="adminCalendar">오늘
								: <%=today%></a></td>
					</tr>
					<!-- </table> -->

					<tr height="30">
						<td align="center" width="30">일</td>
						<td align="center" width="30">월</td>
						<td align="center" width="30">화</td>
						<td align="center" width="30">수</td>
						<td align="center" width="30">목</td>
						<td align="center" width="30">금</td>
						<td align="center" width="30">토</td>
					</tr>
					<tr height="30">
						<%
							for (int i = 1; i < startDay; i++) {
								count++;
						%>
						<td align="center" >&nbsp;</td>
						<%
							}
							for (int i = startDate; i <= endDate; i++) {
								String bgcolor = (today.equals(year + ":" + (month + 1) + ":" + i)) ? "#CCCCCC" : "#FFFFFF";
								String color = (count % 7 == 0 || count % 7 == 6) ? "red" : "black";
								count++;
						%>
						<td align="center" bgcolor="<%=bgcolor%>"><font color=<%=color%>><a
								href="/uuplex/hotel/calendarList"><%=i%></a></font></td>
						<%
							if (count % 7 == 0 && i < endDate) {
						%>
					</tr>
					<tr height="30">
						<%
  }
}
while(count%7 != 0){
%>
						<td>&nbsp;</td>
						<% 
count++;
 }
%>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
