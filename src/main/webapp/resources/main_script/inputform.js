
function tel_1() {
	if(document.inputform.tel1.value.length == 3){
		document.inputform.tel2.focus();
		return false;
	}
}

function tel_2() {
	if(document.inputform.tel2.value.length == 4){
		document.inputform.tel3.focus();
		return false;
	}
}

function jumin() {
	if(document.inputform.jumin1.value.length == 6){
		document.inputform.jumin2.focus();
		return false;
	}
}

function getAge() {
	
	if(document.inputform.jumin2.value.length == 7) {
	
	Now = new Date(); //현재 연도를 구함
	NowYear = Now.getFullYear(); //나이를 구하는 함수 시작
	
	var j1=document.inputform.jumin1.value; //앞 6자리에 입력한 값을 j1 에 대입
	var j2=document.inputform.jumin2.value; //뒤 7자리에 입력한 값을 j2 에 대입
	var n1=j1.substr(0,2); //앞 6자리에 입력한 값중 앞에서 두글자를 n1 에 대입
	var n2=j2.substr(0,1); //뒤 7자리에 입력한 값중 맨앞의 글자를 n2 에 대입( 1~4)
	var age;
	
	if((n2==1)||(n2==2)){ //뒤 첫째값이 1, 2일 경우(1900년대에 출생한 남녀)
		
		age = NowYear-(1900 + Number(n1) - 1);
		
		if(age > 0) {
		
		document.inputform.age.value=age;
		
		}
	
	}
	if ((n2==3)||(n2==4)){ //뒤 첫째값이 3, 4일 경우
		
		age = NowYear-(2000 + Number(n1) - 1)
		
		if(age > 0) {
		
		document.inputform.age.value=age;
		
		}
	}
	if ((n2==1)||(n2==3)){ //뒤 7자리에 입력한 값중 맨앞의 수가 1이나 2일 경우(남자)
		document.inputform.gender.value="남성";
	}
	if ((n2==2)||(n2==4)){ //뒤 7자리에 입력한 값중 맨앞의 수가 3이나 4일 경우(여자)
		document.inputform.gender.value="여성";
	}
	
	if(age < 0){
		alert("잘못된 주민등록번호 양식입니다.");
		return false;
	}
	
	if((n2!=1)&&(n2!=2)&&(n2!=3)&&(n2!=4)) {
		alert("잘못된 주민등록번호 양식입니다.");
		return false;
	}
	
	}

}


function sample4_execDaumPostcode() {
	
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

            }
        }).open();   
}
       

function confirmId() {
	if(!document.inputform.memId.value) {
		alert("아이디를 입력하세요");
		document.inputform.memId.focus();
		return false;
		
	} 
		
		window.open("confirmId?memId=" + document.inputform.memId.value, "confirm", "left=700px, top=100px, width=500px, height=500px");

	
}


function inputCheck() {
	if(!document.inputform.memId.value) {
		alert("아이디 입력하세요");
		document.inputform.memId.focus();
		return false;
	// id 중복확인을 하지 않은 경우	
	// 체크전제조건 : inputForm.jsp의 form안에 <input type="hidden" name="hiddenId" value="0"> 추가	
	} else if(document.inputform.hiddenId.value == "0") {
		alert("아이디 중복확인을 하세요");
		document.inputform.memId.focus();
		return false;
	} else if(!document.inputform.passwd.value){
		alert("비밀번호를 입력하세요");
		document.inputform.passwd.focus();
		return false;
	} else if(!document.inputform.passwdChk.value){
		alert("비밀번호를 확인하세요");
		document.inputform.passwdChk.focus();
		return false;
	} else if(!document.inputform.name.value){
		alert("이름을 입력하세요");
		document.inputform.name.focus();
		return false;
	} else if(!document.inputform.jumin1.value){
		alert("주민등록번호를 입력하세요");
		document.inputform.jumin1.focus();
		return false;
	} else if(!document.inputform.jumin2.value){
		alert("주민등록번호를 입력하세요");
		document.inputform.jumin2.focus();
		return false;
	} else if(!document.inputform.roadAddress.value){
		alert("주소를 입력하세요");
		document.inputform.roadAddress.focus();
		return false;
	} else if(!document.inputform.tel1.value){
		alert("전화번호를 입력하세요");
		document.inputform.tel1.focus();
		return false;
	} else if(!document.inputform.tel2.value){
		alert("전화번호를 입력하세요");
		document.inputform.tel2.focus();
		return false;
	} else if(!document.inputform.tel3.value){
		alert("전화번호를 입력하세요");
		document.inputform.tel3.focus();
		return false;
	} else if(!document.inputform.email.value){
		alert("이메일을 입력하세요");
		document.inputform.email.focus();
		return false;
	} 	
	
}


function setId() {
	opener.document.inputform.hiddenId.value="1";
	self.close();
} 
