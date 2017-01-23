<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade" id="sportInfo" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
		
			<div class="modal-header">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">종목 내용</h4>
			</div>
			<div class="modal-body">
				<table class="table">
					<tr>
						<th>종목 코드</th>
						<td>
							<div id="sid"></div>
						</td>
					</tr>
					<tr>
						<th>종목 이름</th>
						<td>
							<div id="sname"></div>
						</td>
					</tr>
					<tr>
						<th>종목 정보</th>
						<td>
							<div id="sinfo"></div>
						</td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<button class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
			
		</div>
	</div>
</div>

