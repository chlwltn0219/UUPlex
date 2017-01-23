<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="modal fade" id="teacherInput" role="dialog">
    	<div class="modal-dialog">
    		<div class="modal-content">
		    	<div class="modal-header">
		    		<button type="button" class="close" data-dismiss="modal">&times;</button>
		    		<h4 class="modal-title">강사 입력</h4>
		    	</div>
		    	
	    		<form action="input" name="tInputForm" method="post" onsubmit="">
			    	<div class="modal-body">
						<div class="form-group">
							<label>강사명</label>
							<input type="text" class="form-control" name="tname" 
							placeholder="강사 이름" required>
						</div>
						<div class="form-group">
							<label>강사 정보</label>
							<textarea class="form-control" rows="10" name="tinfo"></textarea>
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

<!-- 	<form action = "" name="" onsubmit="">
	  <div class="form-group">
	    <label for="exampleInputEmail1">이메일 주소</label>
	    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="이메일을 입력하세요">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">암호</label>
	    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="암호">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputFile">파일 업로드</label>
	    <input type="file" id="exampleInputFile">
	    <p class="help-block">여기에 블록레벨 도움말 예제</p>
	  </div>
	  <div class="checkbox">
	    <label>
	      <input type="checkbox"> 입력을 기억합니다
	    </label>
	  </div>
	  <button type="submit" class="btn btn-default">제출</button>	
	</form>
	
	 -->
	
