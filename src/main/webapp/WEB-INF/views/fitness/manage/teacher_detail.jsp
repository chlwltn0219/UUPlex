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
          <table>
          	<tr>
          	<tr>
          		<td rowspan="5">${dto.timg}</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr>  
          		<th>강사 코드</th>
          		<td>${dto.tid}</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr> 
          	<tr>
          		<th>강사명</th>
          		<td>${dto.tname}</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr>  
            <tr>
          		<th>강사 상세</th>
          		<td>${dto.tid}</td>
     <!--      		<input type="hidden" name="sid" value="$dto.tid"> -->
          	</tr>  
          </table>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
    </div>
  </div> 
</div>