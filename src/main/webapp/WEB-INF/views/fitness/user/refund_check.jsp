<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <!-- Modal content-->
      <div class="modal-content">
      
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="tdetail">환불 확인</h4>
        </div>
        <div class="modal-body">
          <table class="table">
          	<tr>
          		<th colspan="2"> <h2>환불 하시겠습니까?</h2> </th>
          	<tr>
          	<tr>
          		<td>
					<button class="btn btn-primary" onclick="teacherModify(${dto.tid})">확인</button>
          		</td>
          		<td>
		        	<button class="btn btn-default" data-dismiss="modal" onclick="location.reload();">취소</button>
          		</td>
          	</tr> 

          </table>
        <div class="modal-footer">
        </div>
      </div>
    </div>
