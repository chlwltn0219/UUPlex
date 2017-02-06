<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<script type="text/javascript">
	function showhide() {
			$("#img").hide();
			if('.carousel')
			$('.carousel').carousel('pause');
		}
	}
  </script>

<!-- 슬라이드 쇼 : 캐러셀 -->
<div class="contain">
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			
			<div class="item active" style="background-image: url('${img}/etc/allied.jpg');">
				<a id="img" onclick="showhide();"><img class="center-block" src="${img}/etc/play.png" aria-hidden="true"></a>
				<embed class="center-block" src="https://www.youtube.com/embed/Jlp94-C31cY"></embed>
				
			</div>
			<div class="item" style="background-image: url('${img}/etc/lalaland.jpg');">
				<a id="img"><img class="center-block" src="${img}/etc/play.png" aria-hidden="true"></a>
				<embed class="center-block" src="https://www.youtube.com/embed/0pdqf4P9MB8"></embed>
			</div>

			<div class="item" style="background-image: url('${img}/etc/Ghostbusters.jpg');">
				<a id="img"><img class="center-block" src="${img}/etc/play.png" aria-hidden="true"></a>
				<embed class="center-block" src="https://www.youtube.com/embed/w3ugHP-yZXw"></embed>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a>

		<a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>

<!-- 캐러셀 끝 -->

<div class="content center-block">
	<table>
		<tr>
			<td>
				<table style="border: 1px solid #EAEAEA;">
					<tr>
						<td colspan="2"><img src="${img}movie_poster/너의 권력은.jpg"></td>
					</tr>
					<tr class="sub">
						<th><img id="rate" src="${img}mpaa_rating/12세 관람가.png"></th>
						<td>너의 권력은</td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="상세정보"
							data-toggle="modal" data-target="#movieDetail">
							
							<!--  로그인 상태로 가정 -->
							<c:set var = "memId" value= "101" scope = "session"/>
							
							<c:if test="${sessionScope.memId == '100' || sessionScope.memId == '101'}">
							 <input type="button" value="수정하기" >
							
							</c:if>
							<c:if test="${sessionScope.memId != '100' && sessionScope.memId != '101'}">
							 <input type="button" value="예매하기">
							
							</c:if>
							</td>
					</tr>
				</table>
			</td>
			<td>
				<table style="border: 1px solid #EAEAEA;">
					<tr>
						<td colspan="2"><img src="${img}movie_poster/모아나.jpg"></td>
					</tr>
					<tr class="sub">
						<th><img id="rate" src="${img}mpaa_rating/전체관람가.png"></th>
						<td>모아나</td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="상세정보"
							data-toggle="modal" data-target="#myModal"> 
							
							<!--  로그인 상태로 가정 -->
							<c:set var = "memId" value= "101" scope = "session"/>
							
							<c:if test="${sessionScope.memId == '100' || sessionScope.memId == '101'}">
							 <input type="button" value="수정하기">
							
							</c:if>
							<c:if test="${sessionScope.memId != '100' && sessionScope.memId != '101'}">
							 <input type="button" value="예매하기">
							
							</c:if>
							
							</td>
					</tr>
				</table>
			</td>
			<td>
				<table style="border: 1px solid #EAEAEA;">
					<tr>
						<td colspan="2"><img src="${img}movie_poster/얼라이드.jpg"></td>
					</tr>
					<tr class="sub">
						<th><img id="rate" src="${img}mpaa_rating/15세 관람가.png"></th>
						<td>얼라이드</td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="상세정보"
							data-toggle="modal" data-target="#myModal"> 
							
							<!--  로그인 상태로 가정 -->
							<c:set var = "memId" value= "101" scope = "session"/>
							
							<c:if test="${sessionScope.memId == '100' || sessionScope.memId == '101'}">
							 <input type="button" value="수정하기">
							
							</c:if>
							<c:if test="${sessionScope.memId != '100' && sessionScope.memId != '101'}">
							 <input type="button" value="예매하기">
							
							</c:if>
							
							</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>

<script src="${js}jquery-1.11.3.min.js"></script>

<script>
	$(function() {
		$("embed").hide();
		
		$("#img img").click(function() {
			$(this).hide();
			$(this).parent().next().show();
			$(this).parent().hide();
		});
		
		$( "embed" ).mouseout(function() {
		    $( this ).hide();
		  });
		
	});
	
</script>

<!-- 슬라이드 쇼 : 캐러셀 -->
<div class="contain">
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			
			<div class="item active" style="background-image: url('${img}/etc/allied.jpg');">
				<a id="img"><img class="center-block" src="${img}/etc/play.png" aria-hidden="true"></a>
				<embed class="center-block" src="https://www.youtube.com/embed/Jlp94-C31cY"></embed>
				
			</div>
			<div class="item" style="background-image: url('${img}/etc/lalaland.jpg');">
				<a id="img"><img class="center-block" src="${img}/etc/play.png" aria-hidden="true"></a>
				<embed class="center-block" src="https://www.youtube.com/embed/0pdqf4P9MB8"></embed>
			</div>

			<div class="item" style="background-image: url('${img}/etc/Ghostbusters.jpg');">
				<a id="img"><img class="center-block" src="${img}/etc/play.png" aria-hidden="true"></a>
				<embed class="center-block" src="https://www.youtube.com/embed/w3ugHP-yZXw"></embed>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a>

		<a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>

<!-- 캐러셀 끝 -->

<div class="content center-block">
	<table>
		<tr>
			<td>
				<table style="border: 1px solid #EAEAEA;">
					<tr>
						<td colspan="2"><img src="${img}movie_poster/너의 권력은.jpg"></td>
					</tr>
					<tr class="sub">
						<th><img id="rate" src="${img}mpaa_rating/12세 관람가.png"></th>
						<td>너의 권력은</td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="상세정보"
							data-toggle="modal" data-target="#movieDetail">
							
							<!--  로그인 상태로 가정 -->
							<c:set var = "memId" value= "101" scope = "session"/>
							
							<c:if test="${sessionScope.memId == '100' || sessionScope.memId == '101'}">
							 <input type="button" value="수정하기" >
							
							</c:if>
							<c:if test="${sessionScope.memId != '100' && sessionScope.memId != '101'}">
							 <input type="button" value="예매하기">
							
							</c:if>
							</td>
					</tr>
				</table>
			</td>
			<td>
				<table style="border: 1px solid #EAEAEA;">
					<tr>
						<td colspan="2"><img src="${img}movie_poster/모아나.jpg"></td>
					</tr>
					<tr class="sub">
						<th><img id="rate" src="${img}mpaa_rating/전체관람가.png"></th>
						<td>모아나</td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="상세정보"
							data-toggle="modal" data-target="#myModal"> 
							
							<!--  로그인 상태로 가정 -->
							<c:set var = "memId" value= "101" scope = "session"/>
							
							<c:if test="${sessionScope.memId == '100' || sessionScope.memId == '101'}">
							 <input type="button" value="수정하기">
							
							</c:if>
							<c:if test="${sessionScope.memId != '100' && sessionScope.memId != '101'}">
							 <input type="button" value="예매하기">
							
							</c:if>
							
							</td>
					</tr>
				</table>
			</td>
			<td>
				<table style="border: 1px solid #EAEAEA;">
					<tr>
						<td colspan="2"><img src="${img}movie_poster/얼라이드.jpg"></td>
					</tr>
					<tr class="sub">
						<th><img id="rate" src="${img}mpaa_rating/15세 관람가.png"></th>
						<td>얼라이드</td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="상세정보"
							data-toggle="modal" data-target="#myModal"> 
							
							<!--  로그인 상태로 가정 -->
							<c:set var = "memId" value= "101" scope = "session"/>
							
							<c:if test="${sessionScope.memId == '100' || sessionScope.memId == '101'}">
							 <input type="button" value="수정하기">
							
							</c:if>
							<c:if test="${sessionScope.memId != '100' && sessionScope.memId != '101'}">
							 <input type="button" value="예매하기">
							
							</c:if>
							
							</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

>>>>>>> origin/master
</div>
