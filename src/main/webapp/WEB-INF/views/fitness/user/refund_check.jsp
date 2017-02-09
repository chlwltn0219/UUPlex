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
          		<th colspan="2">
          			<h4 align="center"> ${dto.memid} 님, </h4>
          			<h3 align="center"> ${dto.pname} : <small>${dto.subname} - ${dto.tname}</small> </h3>
          			<h4 align="center">환불 하시겠습니까?</h4>
          		</th>
          	<tr>
          	<tr>
          		<td align="center">
					<button class="btn btn-primary" onclick="refundPro(${dto.stid})">확인</button>
          		</td>
          		<td align="center">
		        	<button class="btn btn-default" data-dismiss="modal">취소</button>
          		</td>
          	</tr> 

          </table>
        <div class="modal-footer">
        </div>
      </div>
    </div>
