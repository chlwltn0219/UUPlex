<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
    

      <!-- Modal content-->
      <div class="modal-content">
      
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="tdetail">상세 정보 수정</h4>
        </div>
        
        <form action="" method="post" name="tModifyForm" onsubmit="return default">
        <div class="modal-body">
          <table class="table">
          	<tr>
<%--           	<tr>
          		<td rowspan="6">${dto.timg}</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr>   --%>
          		<th>강사 코드</th>
          		<td>
          			<input type="text" class="form-control"
          				name="tid" value="${dto.tid}" readonly>
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 
          	<tr>
          		<th>강사명</th>
          		<td>
          			<input type="text" class="form-control"
          				name="tname" value="${dto.tname}">
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr>  
          	<tr>
          	<th>입사일</th>          		
          		<td>
          		   <input type="text" class="form-control"
          				name="reg_date" value="${fn:substring(dto.reg_date, 0, 10)}" readonly>          			
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 
          	<tr>
          		<th>재직 여부</th>
          		<td>
          			<label class="radio-inline">
	          			<c:if test="${dto.activated=='Y'}">
	         			<input type="radio" name="activated" value="Y" checked>
	          			</c:if>
	          			<c:if test="${dto.activated!='Y'}">
	         			<input type="radio" name="activated" value="Y">
	          			</c:if>
          				재직중
          			</label>
          			<label class="radio-inline">
	          			<c:if test="${dto.activated=='N'}">
	         			<input type="radio" name="activated" value="N" checked>
	          			</c:if>
	          			<c:if test="${dto.activated!='N'}">
	         			<input type="radio" name="activated" value="N">
	          			</c:if>
          				퇴사
          			</label>
          		</td>
          	</tr> 
            <tr>
            
          		<th>강사 정보</th>
          		<td>
          			<textarea class="form-control" rows="5"
          				name="tinfo" placeholder="강사정보">${dto.tinfo}</textarea>
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 

          </table>
        <div class="modal-footer">
			<input type="button" class="btn btn-primary" 
							value="수정" onclick="teacherModifyPro()">
			<input type="reset" class="btn btn-warning" 
							value="초기화">
        	<input type="button" class="btn btn-primary" 
							value="취소" onclick="teacherDetail(${dto.tid})">
        </div>
      </div>
      </form>
    </div>