function addCheck() {
	if(!document.roomAddPro.roomName.value) {
		alert("객실이름을 입력하세요.");
		document.roomAddPro.roomName.focus();
		return false;
	} else if(!document.roomAddPro.mainImg.value) {
		alert("이미지를 선택하세요.");
		return false;
	} else if(!document.roomAddPro.roomType.value) {
		alert("객실규모를 선택하세요.");
		return false;
	} else if(!document.roomAddPro.bed.value) {
		alert("침대유형을 선택하세요.");
		return false;
	} else if(!document.roomAddPro.hotelView.value) {
		alert("전망형태를 선택하세요.");
		return false;
	} else if(!document.roomAddPro.charge.value) {
		alert("이용요금을 입력하세요.");
		return false;
	}
}

function modifyChk() {
	document.roomModifyPro.roomName.focus();
}
	
function reservChk() {
	if(!document.reservConfirm.checkIn.value) {
		alert("체크인 날짜를 선택하세요.")
		return false;
	} else if(!document.reservConfirm.checkOut.value) {
		alert("체크아웃 날짜를 선택하세요.")
		return false;
	} else if(!document.reservConfirm.capacity.value) {
		alert("입실인원을 입력하세요.")
		return false;
	}  else if(!document.reservConfirm.name.value) {
		alert("한글 성명을 작성하세요.")
		return false;
	}  else if(!document.reservConfirm.firstName.value) {
		alert("영문 이름(first name)을 작성하세요.")
		return false;
	}  else if(!document.reservConfirm.lastName.value) {
		alert("영문 성(last name)을 작성하세요.")
		return false;
	}  else if(!document.reservConfirm.country.value) {
		alert("출신 국가를 작성하세요.")
		return false;
	}  else if(!document.reservConfirm.phone.value) {
		alert("연락처를 작성하세요.")
		return false;
	} else if(!document.reservConfirm.email.value) {
		alert("이메일 주소를 작성하세요.");
		return false;
	}  else if(!document.reservConfirm.card.value) {
		alert("카드종류를 선택하세요.")
		return false;
	}  else if(!document.reservConfirm.cardNum.value) {
		alert("카드번호를 입력하세요.")
		return false;
	}  else if(!document.reservConfirm.cardEndM.value) {
		alert("카드 만기일을 선택하세요.")
		return false;
	}	

}


function dateCheck(checkIn) {
	var params = "checkIn=" + checkIn;
	//sendRequest(callback, url, method, params) {} 호출
	sendRequest(dateCheckCall, "adminCalendarView", "GET", params); 
}

//콜백함수
function dateCheckCall() {
	var result = document.getElementById("result");
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) {
			/* 응답결과가 HTML이면 responseText로 받고, XML이면 responseXML로 받는다.
			color.jsp가 div에 html로 응답한다. */
			result.innerHTML = "";
			result.innerHTML = httpRequest.responseText;
		} else {
			result.innerHTML = "에러발생";
		}
	} else {
		result.innerHTML = "상태: " + httpRequest.readyState;
	}
}
