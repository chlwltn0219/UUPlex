<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <!-- Modal -->
  <div class="modal fade" id="tdeail" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
      
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="tdetail">강사 상세</h4>
        </div>
        <div class="modal-body">
          <table class="table">
          	<tr>
          	<tr>
          		<td rowspan="6">${dto.timg}</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr>  
          		<th>강사 코드</th>
          		<td>
          			<input type="text" name="" class="input-form" readonly>
          			<div name="tid"></div>
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 
          	<tr>
          		<th>강사명</th>
          		<td>
          			<div id="tname"></div>
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr>  
          	<tr>
          	<th>입사일</th>          		
          		<td>
          			<div id="reg_date"></div>
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 
          	<tr>
          		<th>재직 여부</th>
          		<td>
          			<div id="activated"></div>
          		</td>
          	</tr> 
            <tr>
            
          		<th>강사 정보</th>
          		<td>
          			<div id="tinfo"></div>
          		</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 

          </table>
        <div class="modal-footer">
							<input type="button" class="btn btn-primary" value="등록하기"
								data-toggle="modal" data-target="#teacherInput">
          <button type="submit" class="btn btn-default btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 닫기</button>
        </div>
      </div>
    </div>
  </div> 
</div>