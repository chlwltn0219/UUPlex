<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ include file="../setting.jsp"%>
<html>
<head>
<style>
.moviedetail, .reviewList ,.pageNum{
   width: 850px;
   padding: 40px;
}

.moviedetail td {
   text-align: left;
   padding-left: 10px;
}

#poster {
   width: 250px;
}

.moviedetail th {
   text-align: left;
   padding-left: 10px;
   font-size: 30px;
}

.tit {
   font-size: 20px;
   padding-top: 40px;
}

.con {
   padding: 10px 0;
}

</style>

<link type="text/css" rel="stylesheet"
   href="/uuplex/resources/c-box/css/rating.css">
<link type="text/css" rel="stylesheet"
   href="/uuplex/resources/c-box/css/reviewList.css">
<script type="text/javascript" src="${resources}/c-box/js/movieinfo.js"></script>

<script src="${js}jquery-1.11.3.min.js"></script>

</head>

<body>

   <div class="modal-content">
      <div class="modal-header">
         <button class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">상세정보</h4>
      </div>
      <div class="modal-body">
         <div class="moviedetail">
            <table>
               <tr>
                  <td class="col-md-2" rowspan="10"><img id="poster"
                     src="/uuplexImg/c-box/${dto.poster}"></td>
                  <th><img class="rate" width="30px" height="30px"
                     src="${img}mpaa_rating/${dto.MPAARating}.png">${dto.title1}



                     <div class="form-group pull-right">

                        <input type="button" class="btn btn-primary" value="수정하기"
                           onclick="movieModify(${dto.movie_num});">
                     </div></th>
               </tr>
               <tr>
                  <td>${dto.title2}</td>
               </tr>
               <tr>
                  <td><b>타입 </b>:디지털</td>
               </tr>
               <tr>
                  <td><b>개봉일</b> : ${dto.releaseDate}</td>
               </tr>
               <tr>
                  <td><b>감독</b> : ${dto.director}</td>
               </tr>
               <tr>
                  <td><b>출연진</b> : ${dto.starring}</td>
               </tr>
               <tr>
                  <td><b>장르</b> : ${dto.genre}</td>
               </tr>
               <tr>
                  <td><b>러닝타임</b> : ${dto.runTime}분</td>
               </tr>
				<tr>
                  <td><b>국가</b> : ${dto.country}</td>
               </tr>
               <tr>
                  <td>
                  <div style="width:200px; float:left; margin-top:7px">
                  <c:if test="${total == null}">0</c:if>
                     <c:if test="${total != null}">${total}</c:if>
                     	명의 관객이 평가해주셨습니다
                    	
                  <b>평점</b> :
                  <c:choose>
                        <c:when test="${avg <= 1.5}">
                           <img title="괜히봤어요" src="${img}/etc/star_01.png">
                        </c:when>
                        <c:when test="${avg <= 2.5}">
                           <img title="기대하진 말아요" src="${img}/etc/star_02.png">
                        </c:when>
                        <c:when test="${avg <= 3.5}">
                           <img title="무난했어요" src="${img}/etc/star_03.png">
                        </c:when>
                        <c:when test="${avg <= 4.5}">
                           <img title="기대해도 좋아요!" src="${img}/etc/star_04.png">
                        </c:when>
                        <c:otherwise>
                           <img title="정말 멋진 영화였어요!" src="${img}/etc/star_05.png">
                        </c:otherwise>
                     </c:choose>
                     </div>
                     &nbsp;
                     <div style="float:left">
                      <font size=25px;>${avg}</font>
                     </div>
                     </td>
                </tr>

               <tr>
                  <td>&nbsp;</td>
               </tr>

               <tr>
                  <td colspan="2" class="tit">줄거리</td>
               </tr>

               <tr>
                  <td colspan="2" class="con">${dto.synopsis}</td>
               </tr>
               <tr>
                  <td colspan="2" class="tit"><a>스틸컷 0</a> | <a
                     style="font-weight: bold;">동영상 0</a></td>
               </tr>
               <tr>
                  <td colspan="2" class="con"></td>
               </tr>
               <tr>
                  <td colspan="2" class="tit">한줄평(<c:if test="${total == null}">0</c:if>
                     <c:if test="${total != null}">${total}</c:if>)
                  </td>
               </tr>
               <tr>
                  <td colspan="2" class="con">
               </tr>
            </table>

            <form action="/uuplex/c-box/user/add_review" onsubmit=""
               method="post" name="reviewform">


               <input type="hidden" name="movie_num" value="${dto.movie_num}">
               <input type="hidden" name="memId" value="memId">

               <table class="table">
                  <tr>
                     <th>memId</th>
                     <td class="star-input"><span class="input"> <!-- <input type="radio" name="rating" value=1 id="p1"> -->
                           <input type="radio" name="rating" value=1 id="p1"> <label
                           for="p1">괜히봤어요</label> <input type="radio" name="rating"
                           value=2 id="p2"> <label for="p2">기대하진 말아요</label> <input
                           type="radio" name="rating" value=3 id="p3"> <label
                           for="p3">무난했어요</label> <input type="radio" name="rating"
                           value=4 id="p4"> <label for="p4">기대해도 좋아요!</label> <input
                           type="radio" name="rating" value=5 id="p5"> <label
                           for="p5">정말 멋진 영화였어요!</label>
                     </span><br> <output for="rating" id="outText">
                           <!--                               <output for="rating"> -->
                           평점을 입력해주세요
                        </output></td>
                     <td><textarea placeholder="로그인 후 이용가능한 서비스입니다."
                           style="width: 250px; height: 80px" name="review_content"
                           required></textarea></td>
                     <td><input class="btn" type="submit" value="등록"></td>
                  </tr>

               </table>
            </form>


         </div>

         <!--  리뷰 리스트  -->
         <div class="reviewList">
            <div class="option">
      
               <a onclick="dateOrder(${dto.movie_num})">최신순</a> | <a>추천순</a> | <a onclick="ratingOrder(${dto.movie_num})">평점순</a>
            </div>

            <div id="review">
               <table class="table">
                  <tbody>

                     <c:if test="${dtos==null}">
                        <tr>
                           <h3>
                              <center>등록된 리뷰가 없습니다.</center>
                           </h3>
                        </tr>
                     </c:if>

                     <c:if test="${dtos!=null}">
                        <c:forEach items="${dtos}" var="dto">
                           <tr style="border-bottom: none">
                              <c:set var="id" value="${dto.memId}"></c:set>
                              <td>
                                 <div class="reviewId" style="font-size: 18px">
                                    ${fn:substring(id, 0, fn:length(id)-2)}**</div>
                                 <div class="reviewContents">
                                    <c:set var="date1" value="${dto.reg_date}" />
                                    <c:set var="date2" value="${fn:substring(date1, 0, 10)}" />
                                    ${date2}
                                 </div>
                                 <div class="reviewContents">
                                    <c:if test="${dto.rating == 1}">
                                       <img title="괜히봤어요" src="${img}/etc/star_01.png">
                                    </c:if>
                                    <c:if test="${dto.rating == 2}">
                                       <img title="기대하진 말아요" src="${img}/etc/star_02.png">
                                    </c:if>
                                    <c:if test="${dto.rating == 3}">
                                       <img title="무난했어요" src="${img}/etc/star_03.png">
                                    </c:if>
                                    <c:if test="${dto.rating == 4}">
                                       <img title="기대해도 좋아요!" src="${img}/etc/star_04.png">
                                    </c:if>
                                    <c:if test="${dto.rating == 5}">
                                       <img title="정말 멋진 영화였어요!" src="${img}/etc/star_05.png">
                                    </c:if>
                                 </div>
                                 <div class="form-group pull-right">

                                    <!-- 본인이 작성한 글일 경우에만 삭제가능 -->
                                    <%-- <c:if test="${id == sessionScope.memId}"> --%>
                                    <input type="button" class="btn btn-primary" value="글삭제"
                                       onclick="window.location='/uuplex/c-box/user/review/delete?review_num=${dto.review_num}'">
                                    <%-- </c:if> --%>

                                 </div>
                              </td>
                              <td style="width: 100px" rowspan="2">
                                 <div class="like" style="font-size: 30px;">
                                    <div id="chucheonCnt" style="margin-top: 20px; margin-bottom: 0">0</div>
                                    <div class="chucheon"><a onclick="chucheon(${dto.review_num});">추천</a></div>
                                 </div>

                              </td>

                           </tr>
                           <tr>
                              <td style="font-size: 20px; background-color: #E8D9FF">
                                 ${dto.review_content}<br>
                              </td>

                           </tr>

                        </c:forEach>
                     </c:if>
                  </tbody>
               </table>
            </div>

         </div>
         <!--  리뷰 끝 -->

         <!--  페이지   시작 -->
         <div>
            <table class="table pageNum">
               <tfoot>
                  <tr>
                     <td align="center"><c:if test="${prev == true}">
                           <ul class="pager">
                              <li><a onclick="reopen(${dto.movie_num},${startPage-1})">&lt;
                                    prev</a></li>
                           </ul>
                        </c:if>

                        <ul class="pagination">
                           <c:forEach begin="${startPage}" end="${endPage}" var="page"
                              varStatus="status">
                              <c:if test="${status.current == nowPage}">
                                 <li class="active">
                                 <a onclick="pageChange(${dto.movie_num},${page}); changeclass(${page}); ">${page}</a></li>
                              </c:if>
                              <c:if test="${status.current != nowPage}">
                                 <%-- <li><a href="/uuplex/c-box/movie_detail?page=${page}">${page}</a></li> --%>
                                 <li><a
                                    onclick="pageChange(${dto.movie_num},${page}); changeclass(${page});">${page}</a></li>
                              </c:if>
                           </c:forEach>
                        </ul> <c:if test="${next == true}">
                           <ul class="pager">
                              <%-- <li><a href="/uuplex/c-box/movie_detail?page=${endPage+1}">next --%>
                              <li><a onclick="reopen(${dto.movie_num},${endPage+1})">next
                                    &gt;</a></li>
                           </ul>
                        </c:if>
                     </td>
                  </tr>
               </tfoot>
            </table>
         </div>
         <!--  페이지   끝 -->

      </div>
   </div>

</body>
</html>
<script src="${js}jquery-1.11.3.min.js"></script>
<script src="${js}star.js"></script>