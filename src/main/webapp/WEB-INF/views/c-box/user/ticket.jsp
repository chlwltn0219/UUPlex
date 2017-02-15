<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<script type="text/javascript" src="${resources}/js/Ajax.js"></script>
<script>
	$(function() {

		var seatclass = [ '', 'btn-default', 'btn-success' ];//클래스 이름 지정

		for (var j = 0; j < $(".seatarrange").length; j++) {
			for (var i = 0; i < 240; i++) {
				$(".seatarrange").eq(j).find(".seat").eq(i).addClass(seatclass[$(".seatarrange").eq(j).find(".seat").eq(i).val()]);
				if($(".seatarrange").eq(j).find(".seat").eq(i).val()==3){
					$(".seatarrange").eq(j).find(".seat").eq(i).removeClass('seat');
				}
			}
		}

		$(".type .cnt:nth-child(1)").addClass('cntactive');
		
		var cnt = 0;
		var rad = 0;
		var cur = 0;
		var holiday = 0;
		
		/* 공휴일 여부 알아내기 */
		
		var starttime='${scheduleInfo.showtime.getHours()}';
		
		$.ajax({
			type : 'GET',
			url : 'https://apis.sktelecom.com/v1/eventday/days?year=2017&month=${scheduleInfo.showtime.getMonth()+1}&day=${scheduleInfo.showtime.getDate()}&type=h' ,
			beforeSend : function(xhr){
			xhr.setRequestHeader('TDCProjectKey', '6443f874-738d-4ce8-bfd3-5e6258b2b57d');
			xhr.setRequestHeader('Accept', 'application/json');
			},
			    error: function(xhr, status, error){ 
			         
			    },
			success : function(data) {
			console.log(data);
			holiday = data.results.length;
			}
		});		

		var price = '';
		
		if (starttime<11 ||starttime>=23) {
			price = [6000, 6000, 5000 ];
		} else{
			if (holiday != 0 || '<fmt:formatDate value="${scheduleInfo.showtime}" pattern="E"/>' == '일' || '<fmt:formatDate value="${scheduleInfo.showtime}" pattern="E"/>' == '토') {
				price = [10000, 8000, 5000 ];
			}else{
				price = [9000, 7000, 5000 ];
			}
		}
		
		/* ===================================================== */

		$(".cnt").click(function() {
			$(this).addClass('cntactive');
			$(this).nextAll(".cntactive").removeClass('cntactive');
			$(this).prevAll(".cntactive").removeClass('cntactive');

			$(".rad").attr('checked', false);
			$(".seat").removeClass('active');
			$(".seat").attr('disabled', true);

			cnt = $("td .cntactive").prevAll().length;

			$(".rad").attr('disabled', true);

			if (cnt >= 1) {
				$(".rad").eq(0).attr('disabled', false);
			}
			if (cnt >= 2) {
				$(".rad").eq(1).attr('disabled', false);
			}
			if (cnt >= 3) {
				$(".rad").eq(2).attr('disabled', false);
			}
			if (cnt >= 4) {
				$(".rad").attr('disabled', false);
			}

			if (cnt > 8) {
				alert("8명까지 선택가능합니다.");
				$(".cntactive").removeClass('cntactive');
				$(".type .cnt:nth-child(1)").addClass('cntactive');
				$(".rad").attr('disabled', true);
			}
		});

		$(".rad").click(function() {
			$(".seat").attr('disabled', false);
			rad = $(this).val() - 1;
		});

		$(".seat").hover(function() {

			cur = $(".seat").index(this);

			$(".seat:gt(" + cur + "):lt(" + rad + ")").addClass("btnhover");
		}, function() {
			$(".seat").removeClass("btnhover");
		});

		$(".seat").click(
				function() {
					cur = $(".seat").index(this);
					$(this).toggleClass('active');
					$(".seat:gt(" + cur + "):lt(" + rad + ")").toggleClass(
							'active');

					if ($(".active").length >= cnt) {
						$(".seat").not(".active").attr('disabled', true);
					} else {
						$(".seat").attr('disabled', false);
					}

					$(".ticketcnt").val(cnt);

					var seatnum = '';

					for (var i = 0; i < $(".active").length; i++) {
						seatnum += (i == 0) ? $(".active").eq(i).next().val()
								: "/" + $(".active").eq(i).next().val();
					}

					$(".seatnum").val(seatnum);
					
					var total=0;
					
					for(var i=0; i<$(".cntactive").length; i++){
						
						if($(".cntactive").eq(i).text()!=0){
							$(".seattype").text($(".cntactive").eq(i).parent().prev().text());
							$(".price").text($(".cntactive").eq(i).text()+' X '+price[i]);
							
							total += $(".cntactive").eq(i).text()*price[i];
						}
					}
					
					$(".total").val(total);
				});
	});
</script>
<style>

.cntactive {
	background-color: #444444;
	color: #ffffff
}

.reserve {
	margin-top: 100px;
	border: 1px solid #aaaaaa;
	padding: 0px;
	text-align: center;
}

.reserve p {
	background-color: #333;
	color: #eeeeee;
	font-size: 20px;
	text-align: center;
	padding: 5px;
}

.ticketmenu {
	border-bottom: 2px solid #dddddd;
	padding-bottom: 10px;
	width: 100%
}

.ticketmenu>div, span{
	display: inline-block;
}

.seatarrange {
	width: 460px;
	margin: 0 auto;
}

.ticketinfo {
	margin-top: 20px;
	background-color: #191919;
	width: 100%;
	padding: 15px 70px;
	height: 180px;
}

.ticketinfo div {
	float : left;
	color: #ffffff;
	height: 150px;
	text-align: left;
}

.cnt {
	border: 1px solid #dddddd;
	padding: 2px;
	width: 25px;
	margin: 1px;
	cursor: pointer;
}

.atch {
	border: 1px solid #aaaaaa;
	width: 15px;
	margin: 1px;
	font-size: 10px;
}

.btnhover {
	background-color: #D5D5D5;
}
</style>
<script>
	
</script>
<div class="container reserve">
	<p>인원/좌석</p>
	<div class="ticketmenu">
		<div class="quan"
			style="padding-right: 20px; border-right: 2px solid #dddddd;">
			<table>
				<tr>
					<th>일반</th>
					<td class="type"><span class="cnt">0</span><span class="cnt">1</span><span
						class="cnt">2</span><span class="cnt">3</span><span class="cnt">4</span><span
						class="cnt">5</span><span class="cnt">6</span><span class="cnt">7</span><span
						class="cnt">8</span></td>
				</tr>
				<tr>
					<th>청소년</th>
					<td class="type"><span class="cnt">0</span><span class="cnt">1</span><span
						class="cnt">2</span><span class="cnt">3</span><span class="cnt">4</span><span
						class="cnt">5</span><span class="cnt">6</span><span class="cnt">7</span><span
						class="cnt">8</span></td>
				</tr>
				<tr>
					<th>우대</th>
					<td class="type"><span class="cnt">0</span><span class="cnt">1</span><span
						class="cnt">2</span><span class="cnt">3</span><span class="cnt">4</span><span
						class="cnt">5</span><span class="cnt">6</span><span class="cnt">7</span><span
						class="cnt">8</span></td>
				</tr>
			</table>
		</div>
		<div style="padding: 0 20px; border-right: 2px solid #dddddd;">
			좌석 붙임 설정<br>
			<input type="radio" name="atch" class="rad" disabled value="1">
			<span class="atch">&nbsp;</span> 
			
			<input type="radio" name="atch" class="rad" disabled value="2">
			<span class="atch">&nbsp;</span><span class="atch">&nbsp;</span>
			
			<input type="radio" name="atch" class="rad" disabled value="3">
			<span class="atch">&nbsp;</span><span class="atch">&nbsp;</span><span class="atch">&nbsp;</span>
			
			<input type="radio" name="atch" class="rad" disabled value="4">
			<span class="atch">&nbsp;</span><span class="atch">&nbsp;</span><span class="atch">&nbsp;</span><span class="atch">&nbsp;</span>
			<br><br>
		</div>
		<div style="padding: 0 20px;">
			선택하신 상영관/시간
			<br>1층 ${theater.theater_num}관 (총 ${theater.seatCnt}석) <fmt:formatDate value="${scheduleInfo.showtime}" pattern="HH:mm" />~<fmt:formatDate value="${scheduleInfo.endtime}" pattern="HH:mm" />
			<br><br>
		</div>
	</div>

	<div
		style="width: 500px; padding: 5px; margin: 10px auto; border: 1px solid #aaaaaa;">screen</div>
	<table class="seatarrange">
		<c:set var="begin" value="0" />
		<c:set var="end" value="19" />
		<c:forEach items="${row}" var="row">
			<tr>
				<th>${row}</th>
				<c:forEach items="${theater.seats}" var="seat" begin="${begin}"
					varStatus="status" end="${end}">
					<td><c:if test="${seat!=0 && seat!=3}">
							<button type="button" class="seat btn btn-sm" value="${seat}"
								style="width: 20px; height: 20px; margin: 1px; font-weight: bold; padding: 0;" disabled="disabled">
								${status.count}</button>
								<input type="hidden" value="${row}${status.count}">
						</c:if> <c:if test="${seat==0}">
							&nbsp;&nbsp;&nbsp;&nbsp;
						</c:if>
						<c:if test="${seat==3}">
							<button type="button" class="btn btn-sm" style="width: 20px; height: 20px; margin: 1px; font-weight: bold; padding: 0;" disabled="disabled">
								${status.count}</button>
								<input type="hidden" value="${row}${status.count}">
						</c:if>
					</td>
				</c:forEach>
				<c:set var="begin" value="${begin+20}" />
				<c:set var="end" value="${end+20}" />
			</tr>
		</c:forEach>
	</table>

	<form class="ticketinfo" action="/uuplex/c-box/reserve_payment" method="post">
		<div style="padding-right: 20px; border-right: 2px solid #dddddd; width: 260px;">
			<img style="float:left;" src="/uuplexImg/c-box/${scheduleInfo.poster}" width="100px" height="150px">
                     <div style="float:left; padding:5px; margin:15px;">
                     	${scheduleInfo.title1}<br>
                     	2D<br>
                     	${scheduleInfo.MPAARating}
                     </div>
		</div>
		<div style="padding: 0 20px; border-right: 2px solid #dddddd; width: 220px;">
		<br>
			일시 : <fmt:formatDate value="${scheduleInfo.showtime}" pattern="YYYY.MM.dd(E) HH:mm" /><br><br>
			상영관 : 1층 ${scheduleInfo.theater_num}관<br><br>
			인원 : <input type="text" style="background-color: rgba(0,0,0,0); color: #ffffff; border: none; width: 50px;" class="ticketcnt" name="ticketcnt"><br><br>
		</div>
		<div style="padding: 0 20px; width: 180px; border-right: 2px solid #dddddd;"><br><br>좌석명 Standard석<br><br>좌석번호
			<textarea class="seatnum" name="seatnum" style="color: #ffffff; background-color: rgba(0,0,0,0); border: none; width: 140px;" readonly="readonly"></textarea><br><br>
		</div>
		<div style="padding: 0 20px; width: 200px;"><br>
		<span class="seattype"></span><span class="price" style="width: 120px; text-align: right;"></span><br>
		총금액<input type="text" style="background-color: rgba(0,0,0,0); color: #ffffff; border: none; width: 120px; text-align: right;" name="total" class="total">
		</div>
		<div style="background-color: #D30404; border-radius: 10%; width: 150px; font-size: 20px; cursor: pointer; float: right; border: 2px solid #EB3232; text-align: center;">
			<button type="submit" style="background-color: rgba(0,0,0,0); color: #ffffff; border: none; width: 100%; height: 100%;">
				<span class="glyphicon glyphicon-arrow-right" style="font-size: 50px; width: 130px;"></span>결제선택
			</button>
		</div>
		<input type="hidden" name="schedule_num" value="${scheduleInfo.schedule_num}">
	</form>
</div>