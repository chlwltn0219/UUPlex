
function dateCnt(count) {
	
	// 현재
	var curdt = new Date();
	
	var curday = curdt.getDate() < 10 ? '0' + (curdt.getDate()) : (curdt.getDate()); // 일
	var curmonth = curdt.getMonth() + 1 < 10 ? '0'+ (curdt.getMonth() + 1) : (curdt.getMonth() + 1); // 월
	var curyear = curdt.getFullYear(); // 년

	var curdate = curyear + "-" + curmonth + "-" + curday; // 현재 날짜
	
	// 카운트
	var dt = new Date();
	
	var cntday;
	var day;
	
	if(count == 30) {
		day =  dt.getDate() < 10 ? '0'+(dt.getDate()) : (dt.getDate());
	} else {
		cntday = dt.getDate();
		dt.setDate(cntday - count);
		day = dt.getDate() < 10 ? '0'+(dt.getDate()) : (dt.getDate()); // 계산일
	}
		
	if(count == 30){
		var month = dt.getMonth() + 1 < 10 ? '0'+(dt.getMonth()) : (dt.getMonth())
	} else {
		var month = dt.getMonth() + 1 < 10 ? '0'+(dt.getMonth() + 1) : (dt.getMonth() + 1) ; // 계산월
	}
	
	var year = dt.getFullYear(); // 계산년
	
	var date = year + "-" + month + "-" + day; // 계산 날짜
	
	var params = "date=" + date + "&curdate=" + curdate;
	
	sendRequest(dateCntCall, "noneSM/dateCnt", "GET", params);
}

function dateCntCall(){
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) { // 200:정상종료
			
			var data = eval("httpRequest.responseText");
		
			result.innerHTML = data;
			
		} else {
			result.innerHTML = "에러발생";
		}
	} else {
		result.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}


function reservlist(log) {
	
	var params = "log=" + log;
	
	sendRequest(reservlistCall, "noneSM/reservAdmin", "GET", params);
}

function reservlistCall(){
	var list = document.getElementById("list");
	var listdate = document.getElementById("listdate");
	var listid = document.getElementById("listid");
	
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) { // 200:정상종료
		
			list.innerHTML = httpRequest.responseText;
			listdate.innerHTML = "";
			listid.innerHTML = "";
			
		} else {
			list.innerHTML = "에러발생";
		}
	} else {
		list.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}


function dateSrc() {
	
	var date = document.reserve.date.value;
	var curdate = document.reserve.curdate.value;
	var log = document.reserve.catal.value;
	var memId = document.reserve.memId.value;
	
	if(date > curdate) {
		alert("날짜 선택이 잘못되었습니다.");
		return false;
	}
	
	if(memId == ""){
		var params = "date=" + date + "&curdate=" + curdate + "&log=" + log + "&memId=" + memId;
	} else {
		var params = "date=" + date + "&curdate=" + curdate + "&log=" + log + "&memId=" + memId;
	}
	
	sendRequest(dateSrcCall, "noneSM/dateSrc", "GET", params);
}

function dateSrcCall(){
	var listdate = document.getElementById("listdate");
	var list = document.getElementById("list");
	var listid = document.getElementById("listid");
	
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) { // 200:정상종료
		
			listdate.innerHTML = httpRequest.responseText;
			list.innerHTML = "";
			listid.innerHTML = "";
			
		} else {
			listdate.innerHTML = "에러발생";
		}
	} else {
		listdate.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}


function idSrc() {
	
	var memId = document.reserve.memId.value;
	var log = document.reserve.catal.value;
	
	var params = "memId=" + memId + "&log=" + log;
	
	sendRequest(idSrcCall, "noneSM/idSrc", "GET", params);
}

function idSrcCall(){
	var listid = document.getElementById("listid");
	var list = document.getElementById("list");
	var listdate = document.getElementById("listdate");
	
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) { // 200:정상종료
		
			listid.innerHTML = httpRequest.responseText;
			list.innerHTML = "";
			listdate.innerHTML = "";
			
		} else {
			listid.innerHTML = "에러발생";
		}
	} else {
		listid.innerHTML = "상태 : " + httpRequest.readyState;
	}
	
}



// 검색 초기화
function callreset() {
	
	var list = document.getElementById("list");
	var listdate = document.getElementById("listdate");
	var listid = document.getElementById("listid");
	
	list.innerHTML = "";
	listdate.innerHTML = "";
	listid.innerHTML = "";
}