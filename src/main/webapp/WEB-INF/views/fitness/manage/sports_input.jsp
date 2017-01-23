<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div class="modal fade" id="sportInput" role="dialog">
    	<div class="modal-dialog">
    		<div class="modal-content">
		    	<div class="modal-header">
		    		<button type="button" class="close" data-dismiss="modal">&times;</button>
		    		<h4 class="modal-title">종목 입력</h4>
		    	</div>
		    	
	    		<form action="inputPro" name="" onsubmit="">
			    	<div class="modal-body">
						<div class="form-group">
							<label>종목명</label>
							<input type="text" class="form-control" name="sname" placeholder="종목명">
						</div>
						<div class="form-group">
							<label>종목 정보</label>
							<textarea class="form-control" rows="10" name="sinfo"></textarea>
						</div>
			    	</div>
			    	<div class="modal-footer">
						<input type="submit" class="btn btn-primary" value="입력">
						<input type="reset" class="btn btn-warning" value="초기화">
						<input type="button" class="btn btn-danger" data-dismiss="modal" value="취소">
			    	</div>
				</form>
				
    		</div>
    	</div>
    </div>

<!-- 	<div class="panel panel-default"> -->
<!-- 		<div class="panel-heading"> -->
<!-- 			<h4>종목 입력</h4> -->
<!-- 		</div> -->
<!-- 		<div class="panel-body"> -->
<!-- 			<form action="" name="" onsubmit=""> -->
<!-- 				<div class="form-group"> -->
<!-- 					<label>종목명</label> -->
<!-- 					<input type="text" class="form-control" name="sname" placeholder="종목명"> -->
<!-- 				</div> -->
<!-- 				<div class="form-group"> -->
<!-- 					<label>종목 정보</label> -->
<!-- 					<textarea class="form-control" rows="10" name="sinfo"></textarea> -->
<!-- 				</div> -->
<!-- 				<div class="pull-right"> -->
<!-- 					<input type="submit" class="btn btn-primary" value="입력"> -->
<!-- 					<input type="reset" class="btn btn-warning" value="초기화"> -->
<!-- 					<input type="button" class="btn btn-danger" value="취소"> -->
<!-- 				</div> -->
<!-- 			</form> -->
<!-- 		</div> -->
<!-- 	</div> -->

