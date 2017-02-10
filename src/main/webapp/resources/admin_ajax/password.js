
function pwdChk(){
	
	var params = "pwd=" + document.inputform.passwd.value + "&pwdchk=" + document.inputform.passwdChk.value;
	sendRequest(pwdChkCall, "noneSM/pwdChk", "GET", params);
}
	
function pwdChkCall() {
	
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) { // 200:정상종료
		
			result.innerHTML = httpRequest.responseText;
			
		} else {
			result.innerHTML = "에러발생";
		}
	} else {
		result.innerHTML = "상태 : " + httpRequest.readyState;
	}

}