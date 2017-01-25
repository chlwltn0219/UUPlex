<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<div class="modal-content">
	   	<div class="modal-header">
	   		<button type="button" class="close" data-dismiss="modal">&times;</button>
	   		<h4 class="modal-title">종목 입력</h4>
	   	</div>		    	
	
  		<form action="/uuplex/fitness/manage/sports/add" method="post" name="sportInputForm" onsubmit="">
	    	<div class="modal-body">
				<div class="form-group">
					<label>종목명</label>
					<input type="text" class="form-control" name="sname" 
							placeholder="종목명" required>
				</div>
				<div class="form-group">
					<label>종목 정보</label>
					<textarea class="form-control" rows="10" name="sinfo" 
							placeholder="강사 정보 입력"></textarea>
				</div>
	    	</div>
	    	<div class="modal-footer">
				<input type="submit" class="btn btn-primary" value="입력">
				<input type="reset" class="btn btn-warning" value="초기화">
				<input type="button" class="btn btn-danger" data-dismiss="modal" value="취소">
	    	</div>
		</form>
		
	</div>


