<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<script>
	$(function() {

		var seatclass = [ '', 'btn-default', 'btn-success' ];//클래스 이름 지정

		for (var j = 0; j < $(".seatarrange").length; j++) {
			for (var i = 0; i < 240; i++) {
				$(".seatarrange").eq(j).find(".seat").eq(i).addClass(
						seatclass[$(".seatarrange").eq(j).find(".seat").eq(i)
								.val()]);
			}
		}

		$(".type .cnt:nth-child(1)").addClass('cntactive');
		
		
		
		var cnt =0;
		$(".cnt").click(function() {
			$(this).addClass('cntactive');
			$(this).nextAll(".cntactive").removeClass('cntactive');
			$(this).prevAll(".cntactive").removeClass('cntactive');
			
			cnt = $("td .cntactive").prevAll().length;
			
			$(".rad").attr('disabled', true);
			
			if(cnt>=1){
				$(".rad").eq(0).attr('disabled', false);
				
			} 
			if(cnt>=2){
				$(".rad").eq(1).attr('disabled', false);
			}
			if(cnt>=3){
				$(".rad").eq(2).attr('disabled', false);
			}
			if(cnt>=4){
				$(".rad").attr('disabled', false);
			}
			
			if(cnt>8){
				alert("8명까지 선택가능합니다.");
				$(".cntactive").removeClass('cntactive');
				$(".type .cnt:nth-child(1)").addClass('cntactive');
				$(".rad").attr('disabled', true);
			}
			
			var rad =0;
			var cur = 0;
			
			$(".rad").click(function() {
				$("button").attr('disabled', false);
				rad = $(this).val()-1;
				
				
				$("button").hover( function () {
				
					cur = $("button").index(this);
				
					$("button:gt("+cur+"):lt("+rad+")").addClass("btnhover");
				}, 
				function () { 
					$("button").removeClass("btnhover"); 
				});
				
				
				$("button").click(function() {
					$(this).toggleClass('active');
					$("button:gt("+cur+"):lt("+rad+")").toggleClass('active');
					
					if($(".active").length>=cnt){
						$("button").not(".active").attr('disabled',true);
					}else{
						$("button").attr('disabled',false);
					}
					var seatnum = '';
					
					for(var i = 0; i<$(".active").length; i++){
						seatnum +=	(i==0) ? $(".active").eq(i).next().val() : ", "+$(".active").eq(i).next().val();	
					}
					
					$(".seatnum").text(seatnum);
					
				});		
			});			
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
	padding: 15px 100px;
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
			<br>${theater.theater_num}관 (총 ${theater.seatCnt}석)
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
					<td><c:if test="${seat!=0}">
							<button type="button" class="seat btn btn-sm" value="${seat}"
								style="width: 20px; height: 20px; margin: 1px; font-weight: bold; padding: 0;" disabled="disabled">
								${status.count}</button>
								<input type="hidden" value="${row}${status.count}">
						</c:if> <c:if test="${seat==0}">
							&nbsp;&nbsp;&nbsp;&nbsp;
						</c:if></td>
				</c:forEach>
				<c:set var="begin" value="${begin+20}" />
				<c:set var="end" value="${end+20}" />
			</tr>
		</c:forEach>
	</table>

	<div class="ticketinfo">
		<div style="padding-right: 20px; border-right: 2px solid #dddddd; width: 300px;">
			<img style="float:left;" src="${resources}/c-box/img/movie_poster/얼라이드.jpg" width="100px" height="150px">
                     <div style="float:left; padding:5px; margin:15px;">
                     	${movie.title1}<br>
                     	2D<br>
                     	${movie.mmaprating}
                     </div>
		</div>
		<div style="padding: 0 20px; border-right: 2px solid #dddddd; width: 300px;">
		<br>
			일시<br><br>
			상영관<br><br>
			인원<br><br>
		</div>
		<div style="padding: 0 20px; width: 210px;"><br><br>좌석명<br><br>좌석번호 <span class="seatnum"></span><br><br></div>
		<div style="background-color: #D30404; border-radius: 10%; width: 150px; padding: 10px; font-size: 20px; cursor: pointer; float: right; border: 2px solid #EB3232; text-align: center;">
			<span class="glyphicon glyphicon-arrow-right" style="font-size: 50px; width: 130px; padding-top: 15px;"></span>결제선택
		</div>
	</div>
</div>