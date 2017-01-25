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
	} else if(!document.roomAddPro.capacity.value) {
		alert("수용인원을 입력하세요.");
		return false;
	} else if(!document.roomAddPro.charge.value) {
		alert("이용요금을 입력하세요.");
		return false;
	}
}

function modifyChk() {
	if(!document.roomModifyPro.mainImg.value) {
		alert("메인이미지를 선택하세요.");
		return false;
	} else if(!document.roomModifyPro.detail_1.value) {
		alert("상세이미지1 을 선택하세요.");
		return false;
	} else if(!document.roomModifyPro.detail_2.value) {
		alert("상세이미지2 를 선택하세요.");
		return false;
	} else if(!document.roomModifyPro.detail_3.value) {
		alert("상세이미지3 을 선택하세요.");
		return false;
	} else if(!document.roomModifyPro.detail_4.value) {
		alert("상세이미지4 를 선택하세요.");
		return false;
	} else if(!document.roomModifyPro.detail_5.value) {
		alert("상세이미지5 를 선택하세요.");
		return false;
	}
}