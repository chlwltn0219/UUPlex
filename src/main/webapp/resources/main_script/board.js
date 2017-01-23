
function boardCheck() {
	
	if(!document.boardQnA.subject.value) {
		alert("제목을 입력하세요");
		document.boardQnA.subject.focus();
		return false;
		
	} else if(!document.boardQnA.passwd.value){
		alert("비밀번호를 입력하세요");
		document.boardQnA.passwd.focus();
		return false;
		
	} 
	
}