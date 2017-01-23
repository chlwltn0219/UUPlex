
var httpRequest = null;

function getXMLHttpRequest() {
	if(window.ActiveXObject) {
		try {
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				return new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				return null;
			}
		}	
	} else if(window.XMLHttpRequest) {
		try {
			return new XMLHttpRequest();
		} catch (e) {
			return null;
		}		
	} else {
		return null;
	}
}

// 화면의 javaScript에서 발생시킨 요청이벤트를 서버로 보낸다.
// callback, url만 던져도 됨
function sendRequest(callback, url, method, params) {
	
	// 비동기 통신을 관리하는 XMLHttpRequest 생성
	httpRequest = getXMLHttpRequest();
	
	// onreadystatechange : 오브젝트 상태가 변한 시점에 불러오는 이벤트핸들러.. 즉 대기상태가 바뀌면 실행할 이벤트
	// callback 함수 : 서버로부터 응답이 오면 동작할 콜백함수(시스템이 자동호출)
	httpRequest.onreadystatechange = callback;
	
	var httpMethod = method ? method : "GET";
	if(httpMethod != "GET" && httpMethod != "POST") {
		httpMethod = "GET";
	}

	// params
	var httpParams = (params == null || params == "") ? null : params;
	
	// url
	var httpUrl = (httpMethod == "GET") ? (url + "?" + httpParams) : url;
	
	// 요청 전송 - HTTP 통신을 시작한다.
	// open(방식, 응답페이지, 비동기)
	httpRequest.open(httpMethod , httpUrl, true);
	httpRequest.setRequestHeader("content-type", "application/x-www-form-urlencoded;charset=utf-8");
	
	httpRequest.send(httpMethod == "POST" ? httpParams : null);
}



function loginView() {
	
		sendRequest(loginViewCall, "loginView", "POST");
	}

function loginViewCall() {
		var result = document.getElementById("result");
		
		if(httpRequest.readyState == 4) {
			if(httpRequest.status == 200) { // 200:정상종료
				// 응답결과가 HTML이면 responseText로 받고, XML이면 responseXML로 받는다. 
				result.innerHTML = httpRequest.responseText;
			} else {
				result.innerHTML = "에러발생";
			}
		} else {
			result.innerHTML = "상태 : " + httpRequest.readyState;
		}
	
}