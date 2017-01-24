<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    

      <!-- Modal content-->
      <div class="modal-content">
      
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="tdetail">강사 상세</h4>
        </div>
        <div class="modal-body">
          <table class="table">
          	<tr>
<%--           	<tr>
          		<td rowspan="6">${dto.timg}</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr>   --%>
          		<th>강사 코드</th>
          		<td>
          			${dto.tid}
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 
          	<tr>
          		<th>강사명</th>
          		<td>
          			${dto.tname}
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr>  
          	<tr>
          	<th>입사일</th>          		
          		<td>
          			${fn:substring(dto.reg_date, 0, 10)}
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 
          	<tr>
          		<th>재직 여부</th>
          		<td>
          			${dto.activated}
          		</td>
          	</tr> 
            <tr>
            
          		<th>강사 정보</th>
          		<td>
          			<pre>${dto.tinfo}</pre>
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 

          </table>
        <div class="modal-footer">
			<input type="button" class="btn btn-primary" value="수정" onclick="teacherModify(${dto.tid})">
        	<button type="submit" class="btn btn-default btn-default" data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
