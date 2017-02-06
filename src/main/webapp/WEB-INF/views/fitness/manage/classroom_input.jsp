<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="modal-content">
	   	<div class="modal-header">
	   		<button type="button" class="close" data-dismiss="modal">&times;</button>
	   		<h4 class="modal-title">강의실 입력</h4>
	   	</div>		    	
	
  		<form action="/uuplex/fitness/manage/classroom/input" method="post" name="classroomInputForm" onsubmit="">
	    	<div class="modal-body">
				<div class="form-group">
					<label>강의실명</label>
					<input type="text" class="form-control" name="crname" 
							placeholder="강의실 명" required>
				</div>
	    	</div>
	    	<div class="modal-footer">
				<input type="submit" class="btn btn-primary" value="입력">
				<input type="reset" class="btn btn-warning" value="초기화">
				<input type="button" class="btn btn-danger" data-dismiss="modal" value="취소">
	    	</div>
		</form>
		
	</div>
    