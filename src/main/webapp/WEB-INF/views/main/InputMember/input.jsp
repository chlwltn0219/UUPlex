<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../../setting.jsp" %>
<html lang="ko">
<head>
	<style>
		.row {
			margin:30px;
		}
	
	</style>
	
	<script type="text/javascript">
	function checkbox() {
		if(!document.agree.join_user_agree.checked) {
			alert("회원가입 약관에 동의하세요");
			return false;
		} else if (!document.agree.join_priv_agree.checked) {
			alert("개인정보 처리방침에 동의하세요");
			return false;
		}
		
		window.location="inputForm";
	}
	
</script>

</head>

<div class="container">

<!-- Body -->
<div class="join-agree-layout">

	<div class="row">
		<div class="col-sm-offset-2 col-sm-8">
			<form name="agree" role="form" id="joinForm" method="post" action="/join.php" autocomplete="off">
				<div class="panel panel-default">
					<div class="panel-heading">
						Create Account
					</div> <!-- panel heading -->
					
					<div class="panel-body">
						<div class="form-group pull-left">
							<label class="control-label"> 회원가입 약관 </label>
							<div class="col-xs-12">
								<textarea class="form-control" readonly rows="10" cols="100">서비스약관

제 1 장 총 칙 

제 1 조 (목적) 
이 이용약관(이하 '약관')은 -UUPLEX-(이하 UUPLEX 멀티플렉스라 합니다)와 이용 고객(이하 '회원')간에 UU-Plex가 제공하는 서비스의 가입조건 및 이용에 관한 제반 사항과 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다. 

제 2 조 (이용약관의 효력 및 변경) 
(1) 이 약관은 본 UUPLEX 멀티플렉스에 가입된 고객을 포함하여 서비스를 이용하고자 하는 모든 이용자에 대하여 서비스 메뉴 및 UUPLEX 멀티플렉스에 게시하여 공시하거나 기타의 방법으로 고객에게 공지함으로써 그 효력을 발생합니다. 약관의 게시는 - UUPLEX 멀티플렉스사이트에서 확인 
할 수 있습니다. 
(2) UUPLEX 멀티플렉스는 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 약관을 변경할 경우에는 지체 없이 이를 사전에 공시합니다. 

제 3 조 (약관 외 준칙) 
① 서비스 이용에 관하여는 이 약관을 적용하며 이 약관에 명시되지 아니한 사항에 대하여는 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 등에 관한 법률 및 기타 관계법령의 규정에 의합니다. 


제 4 조 (용어의 설명) 
① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 
1. '이용고객'이라 함은 회원제로 운영하는 서비스를 이용하는 이용자를 의미합니다. 
2. '이용계약'이라 함은 서비스 이용과 관련하여 헤르메스 인베스트먼트와 이용고객 간에 체결 하는 계약을 말합니다. 
3. '이용자번호(ID)'라 함은 회원식별과 회원의 서비스 이용을 위하여 회원이 선정하고 헤르메스 인베스트먼트가 승인하는 영문자와 숫자의 조합을 말합니다. 
4. '비밀번호'라 함은 이용고객이 부여 받은 이용자번호와 일치된 이용고객 임을 확인하고 이용고객의 권익보호를 위하여 이용고객이 선정한 문자와 숫자의 조합을 말합니다. 
5. '해지'라 함은 헤르메스 인베스트먼트 또는 회원이 이용계약을 해약하는 것을 말합니다. 

② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서 정하는 바에 의합니다. 

 

 

제 2 장 이용계약 

제 5 조 (이용 계약의 성립) 
(1) 이용계약은 이용하고자 하는 고객의 본 이용약관 내용에 대한 동의와 이용신청에 대하여 헤르메스 인베스트먼트의 승낙으로 성립합니다. 
(2) 본 이용약관에 대한 동의는 신청시 -헤르메스 인베스트먼트-사이트의 '동의' 버튼을 누름으로써 의사표시를 합니다. 

제 6 조 (서비스 이용 신청) 
(1) 본 서비스를 이용하고자 하는 이용고객은 헤르메스 인베스트먼트에서 요청하는 정보(성명, 생년월일, 연락처 등)를 제공하여 회원으로 가입한 후 이용이 가능합니다. 
(2) 모든 회원은 반드시 회원 본인의 이름과 생년월일을 제공하여야만 서비스의 이용이 가능하며 비실명의 경우 서비스 이용에 제한을 받으실 수 있습니다. 
(3) 회원가입은 반드시 실명으로만 가입이 가능 합니다. 
(4) 타인의 명의(이름 또는 생년월일)를 도용하여 이용신청을 한 회원의 ID는 사전예고 없이 삭제가 될 수 있으며, 관계법령에 따라 처벌을 받을 수 있습니다. 
(5) 헤르메스 인베스트먼트는 본 서비스를 이용하는 회원에 대하여 등급별로 구분하여 서비스의 이용에 차등을 둘 수 있습니다. 

제 7 조 (개인정보의 보호 및 사용) 
헤르메스 인베스트먼트는 관계법령이 정하는 바에 따라 서비스 이용자의 개인정보를 보호하기 위해 개인정보보호정책을 시행합니다. 이용자 개인정보의 보호 및 사용에 대해서는 관련법령 및 헤르메스 인베스트먼트의 개인정보 보호정책이 적용됩니다. 그러나  헤르메스 인베스트먼트는 이용자의 귀책사유로 인해 노출된 정보에 대해서 일체의 책임을 지지 않습니다. 

제 8 조 (이용 신청의 승낙과 제한) 
(1) 헤르메스 인베스트먼트는 제 6조의 규정에 의한 이용신청고객에 대하여 업무 수행 상 또는 기술상 지장이 없는 경우에 서비스 이용을 승낙합니다. 
(2) 헤르메스 인베스트먼트는 아래사항에 해당하는 경우에 대해서 승낙하지 아니 합니다. 
- 타인 명의의 신청 또는 이름이 실명이 아닌 경우 
- 허위 서류를 첨부하거나 허위내용을 기재하여 신청하는 경우 
- 신용정보의 이용과보호에 관한 법류에 의한 PC통신, 인터넷 서비스의 신용불량자로 등록되어 있는 경우 
- 사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청한 경우 
- 정보통신 윤리위원회에 PC통신, 인터넷 서비스의 불량 이용자로 등록되어 있는 경우 
- 기타 헤르메스 인베스트먼트가 정한 이용신청요건이 만족되지 않았을 경우 
(3) 헤르메스 인베스트먼트는 서비스 이용신청이 다음 각 호에 해당하는 경우에는 그 신청에 대하여 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다. 
- 헤르메스 인베스트먼트가 설비의 여유가 없는 경우 
- 헤르메스 인베스트먼트의 기술상 지장이 있는 경우 
- 기타 헤르메스 인베스트먼트의 귀책사유로 이용승낙이 곤란한 경우 
(4) 헤르메스 인베스트먼트는 규정에 의하여 이용신청이 불 승낙 되거나 승낙을 제한하는 경우에는 이를 이용신청 고객에게 즉시 알려야 합니다. 

(5) 헤르메스 인베스트먼트는 이용신청고객이 미성년자인 경우에는 별도로 정하는 바에 따라 승낙을 제한할 수 있습니다. 


제 3 장 계약 당사자의 권리와 의무 

제 9 조(헤르메스 인베스트먼트의 권리와 의무) 

1. 헤르메스 인베스트먼트는 회원으로 부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 서면, 전자우편 또는 전화 등으로 통보하여야 합니다. 

2. 헤르메스 인베스트먼트는 헤르메스 인베스트먼트가 제정한 개인정보보호정책에 따라서 이용고객의 개인정보를 보호할 의무를 가집니다. 단, 법률의 규정에 따른 적법한 절차에 의한 경우에는 그러하지 않을 수 있습니다. 

3. 헤르메스 인베스트먼트가 제 2 항의 규정에도 불구하고 고지 또는 명시한 범위를 초과하여 이용고객의 개인 정보를 이용하거나 제 3 자에게 제공하고자 하는 경우에는 반드시 해당 회원에게 개별적으로 공지하여 동의를 받아야 합니다. 

4. 헤르메스 인베스트먼트는 계속적이고 안정적인 서비스의 제공을 위하여 설비에 장애가 생기거나 멸실된 때에는 지체 없이 이를 수리 또는 복구합니다. 다만, 천재지변, 비상사태 또는 그밖에 부득이한 경우에는 그 서비스를 일시 중단하거나 중지할 수 있습니다. 

5. 헤르메스 인베스트먼트는 이용계약의 체결, 계약사항의 변경 및 해지 등 회원과의 계약관련 절차 및 내용 등에 있어 회원에게 편의를 제공해야 합니다. 

6. 헤르메스 인베스트먼트는 업무와 관련하여 회원의 사전 동의하에 회원전체 또는 일부의 개인정보에 관한 통계자료를 작성하여 이를 사용할 수 있고 서비스를 통하여 회원의 컴퓨터에 쿠키를 전송 할 수 있습니다. 이 경우 회원은 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는 컴퓨터의 브라우저의 설정을 변경할 수 있으며, 쿠키의 설정 변경에 의한 서비스 이용이 변경되는 것은 회원의 책임입니다. 

제 10 조(회원의 권리와 의무) 

1. 회원은 서비스를 이용할 때 다음의 행위를 하지 않아야 합니다. 

다른 회원의 ID 및 비밀번호를 부정하게 사용하는 행위 
서비스를 이용하여 얻은 정보를 회원의 개인적인 이용 외에 복사, 가공, 번역, 2차적 저작 등을 통하여 복제, 공연, 방송, 전시, 배포, 출판 등에 사용하거나 제3자에게 제공하는 행위 
타인의 명예를 손상시키거나 불이익을 주는 행위 
헤르메스 인베스트먼트의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위 
공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형, 음성 등을 타인에게 유포하는 행위 
범죄와 결부된다고 객관적으로 인정되는 행위 
서비스와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염 자료를 등록 또는 유포하는 행위 
서비스의 안정적 운영을 방해할 수 있는 정보를 전송하거나 수신자의 의사에 반하여 광고성 정보를 전송하는 행위 
정보통신윤리위원회, 소비자보호단체 등 공신력 있는 기관으로부터 시정요구를 받는 행위 
선거관리위원회의 중지, 경고 또는 시정명령을 받는 선거법 위반 행위 
기타 관계법령에 위배되는 행위 

2. 회원은 이 약관에 규정하는 사항과 서비스 이용안내 또는 주의사항을 준수하여야 하며 헤르메스 인베스트먼트가 공지하거나 별도로 게시한 사항을 준수하여야 합니다. 

3. 회원은 헤르메스 인베스트먼트의 명시적인 사전 동의가 없이 서비스를 이용하여 영업활동을 할 수 없으며, 이에 위반하여 발생한 결과에 대하여 헤르메스 인베스트먼트는 책임지지 않습니다. 

4. 회원은 이와 같은 영업활동과 관련하여 헤르메스 인베스트먼트에 대하여 손해배상의무를 집니다. 

5. 회원은 서비스의 이용약관, 기타 이용계약상 지위를 타인에게 양도, 증여 할 수 없으며, 이를 담보로 제공할 수 없습니다. 

6. 회원은 헤르메스 인베스트먼트의 사전 승낙 없이는 서비스의 전부 또는 일부 내용 및 기능을 전용할 수 없습니다. 

7. 헤르메스 인베스트먼트는 이용고객이 방문하거나 전자서명 또는 아이디(ID)등을 이용하여 자신의 개인정보에 대한 열람 또는 정정을 요구하는 경우에는 본인 여부를 확인하고 지체 없이 필요한 조치를 취하여야 합니다. 

8. 헤르메스 인베스트먼트는 이용고객의 대리인이 방문하여 열람 또는 정정을 요구하는 경우에는 대리관계를 나타내는 증표를 제시하도록 요구할 수 있습니다. 

9. 헤르메스 인베스트먼트는 개인정보와 관련하여 이용고객의 의견을 수렴하고 불만을 처리하기 위한 절차를 마련하여야 합니다. 

 


제 4 장 서비스의 이용 

제 11 조 (서비스 이용 시간) 
(1) 서비스 이용은 헤르메스 인베스트먼트의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간 운영을 원칙으로 합니다. 단, 헤르메스 인베스트먼트는 시스템 정기점검, 증설 및 교체를 위해 헤르메스 인베스트먼트가 정한 날이나 시간에 서비스를 일시중단 할 수 있으며, 예정되어 있는 작업으로 인한 서비스 일시중단은 웹을 통해 사전에 공지합니다. 
(2) 헤르메스 인베스트먼트는 헤르메스 인베스트먼트가 통제할 수 없는 사유로 인한 서비스중단의 경우(시스템관리자의 고의, 과실 없는 디스크장애, 시스템다운 등)에 사전통지가 불가능하며 타인(PC통신, 헤르메스 인베스트먼트,  기간통신사업자 등)의 고의, 과실로 인한 시스템중단 등의 경우에는 통지하지 않습니다. 

제 12 조 (이용자ID 관리) 
(1) 아이디(ID)와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다. 
(2) 자신의 아이디(ID)가 부정하게 사용된 경우 회원은 반드시 헤르메스 인베스트먼트에 그 사실을 통보해야 합니다. 

제 13 조 (게시물의 관리) 
헤르메스 인베스트먼트는 다음 각 호에 해당하는 게시물이나 자료를 사전통지 없이 삭제하거나 이동 또는 등록 거부를 할 수 있습니다. 
- 다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우 
- 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우 
- 불법복제 또는 해킹을 조장하는 내용인 경우 
- 영리를 목적으로 하는 광고일 경우 
- 범죄와 결부된다고 객관적으로 인정되는 내용일 경우 
- 다른 이용자 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우 
- 헤르메스 인베스트먼트에서 규정한 게시물 원칙에 어긋나거나, 게시판 성격에 부합하지 않는 경우 
- 기타 관계법령에 위배된다고 판단되는 경우 

제 14 조 (게시물에 대한 저작권) 

(1) 회원은 서비스를 이용하여 취득한 정보를 임의 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다. 
(2) 헤르메스 인베스트먼트는 회원이 게시하거나 등록하는 서비스 내의 내용물, 게시 내용에 대해 제 13조 각 호에 해당된다고 판단되는 경우 사전통지 없이 삭제하거나 이동 또는 등록 거부할 수 있습니다. 

제 15 조 (정보의 제공) 
(1) 헤르메스 인베스트먼트는 회원이 서비스 이용 도중 필요가 있다고 인정되는 다양한 정보에 대해서 전자우편이나 전화통신등의 방법으로 회원에게 제공할 수 있습니다. 


제 16 조 (광고게재 및 광고주와의 거래) 
(1) 헤르메스 인베스트먼트가 회원에게 서비스를 제공할 수 있는 서비스 투자기반의 일부는 광고게재를 통한 수익으로부터 나옵니다. 회원은 서비스 이용 시 노출되는 광고게재에 대해 동의합니다. 
(2)헤르메스 인베스트먼트는 서비스 상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래를 함으로써 발생하는 손실과 손해에 대해 책임을 지지 않습니다. 


제 5 장 계약 해지 및 이용 제한 

제 17 조 (계약 변경 및 해지) 
회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 -헤르메스 인베스트먼트- 웹 내의 "회원탈퇴"메뉴를 이용해 가입해지를 해야 합니다. 

제 18 조 (서비스 이용제한) 
(1) 헤르메스 인베스트먼트는 회원이 서비스 이용내용에 있어서 본 약관 제 10조 내용을 위반하거나, 다음 각 호에 해당하는 경우 서비스 이용을 제한할 수 있습니다. 
- 미풍양속을 저해하는 비속한 ID 및 별명 사용 
- 타 이용자에게 심한 모욕을 주거나, 서비스 이용을 방해한 경우 
- 기타 정상적인 서비스 운영에 방해가 될 경우 
- 정보통신 윤리위원회 등 관련 공공기관의 시정 요구가 있는 경우 
- 불법 홈페이지인 경우 
1.상용소프트웨어나 크랙파일을 올린 경우 
2.정보통신 윤리 위원회의 심의 세칙 제 7조에 어긋나는 음란물을 게재한 경우 
3.반국가적 행위의 수행을 목적으로 하는 내용을 포함한 경우 
4.저작권이 있는 글을 무단 복제하거나 mp3를 올린 경우 
- 정보통신 설비의 오작동이나 정보 등의 파괴를 유발시키는 컴퓨터 바이러스 프로그램 등 을 유포하는 경우 
(2) 상기 이용제한 규정에 따라 서비스를 이용하는 회원에게 서비스 이용에 대하여 별도 공지 없이 서비스 이용의 일시정지, 정지, 이용계약 해지 등을 불량이용자 처리규정에 따라 취할 수 있습니다. 


제 6 장 손해배상 및 기타사항 

제 19 조 (손해배상의 범위 및 청구) 
1. 헤르메스 인베스트먼트는 서비스로부터 회원이 받은 손해가 천재지변 등 불가항력적이거나 회원의 고의 또는 과실로 인하여 발생한 때에는 손해배상을 하지 아니합니다. 

2. 헤르메스 인베스트먼트는 전자상거래 호스팅 및 일반 호스팅의 경우 이에 준하는 서비스 이용회원일 경우 불가항력적으로 발생한 경우 위 1 항의 규정에 따릅니다. 

3. 회원이 서비스를 이용함에 있어 행한 불법행위로 인하여 헤르메스 인베스트먼트가 당해 회원 이외에 제 3 자로부터 손해배상 청구, 소송을 비롯한 각종의 이의제기를 받는 경우 당해 회원은 헤르메스 인베스트먼트의 면책을 위하여 노력하여야 하며, 만일 헤르메스 인베스트먼트가 면책되지 못한 경우는 당해 회원은 그로 인하여 헤르메스 인베스트먼트에 발생한 모든 손해를 배상하여야 합니다. 

제 20 조 (면책사항) 
(1) 헤르메스 인베스트먼트는 천재지변, 전쟁 및 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 대한 책임이 면제됩니다. 
(2) 헤르메스 인베스트먼트는 기간통신 사업자가 전기통신 서비스를 중지하거나 정상적으로 제공하지 아니하여 손해가 발생한 경우 책임이 면제됩니다. 
(3) 헤르메스 인베스트먼트는 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한 책임이 면제됩니다. 
(4) 헤르메스 인베스트먼트는 회원의 귀책사유로 인한 서비스 이용의 장애 또는 손해에 대하여 책임을 지지 않습니다. 
(5) 헤르메스 인베스트먼트는 이용자의 컴퓨터 오류에 의해 손해가 발생한 경우, 또는 회원이 신상정보 및 전자우편 주소를 부실하게 기재하여 손해가 발생한 경우 책임을 지지 않습니다. 
(6) 헤르메스 인베스트먼트는 회원이 서비스에 게재한 각종 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 대하여 책임을 지지 않습니다. 
(7)헤르메스 인베스트먼트는 회원 상호간 또는 회원과 제 3 자 상호간에 서비스를 매개로 하여 물품거래(무형의 물품 포함)등을 한 경우에 그로부터 발생하는 일체의 손해에 대하여 책임지지 아니합니다. 
(8) 헤르메스 인베스트먼트에서 회원에게 무료로 제공하는 서비스의 이용과 관련해서는 어떠한 손해도 책임을 지지 않습니다. 

제 21 조 (재판권 및 분쟁조정) 
(1) 이 약관에 명시되지 않은 사항은 전기통신사업법 등 관계법령과 상관습에 따릅니다. 
(2) 서비스 이용과 관련하여 헤르메스 인베스트먼트와 회원 사이에 분쟁이 발생한 경우, 쌍방 간에 분쟁의 해결을 위해 성실히 협의한 후가 아니면 제소할 수 없습니다. 
(3) 서비스 이용으로 발생한 분쟁에 대해 소송이 제기되는 경우 헤르메스 인베스트먼트의 본사 소재지를 관할하는 법원을 관할 법원으로 합니다. 


[부 칙] 

이 약관은 2014년 03월 20일부터 시행합니다.
</textarea>
							</div>
							<div class="col-xs-12">
								<div class="checkbox pull-right">
									<label for="join_user_agree">
										<input type="checkbox" name="join_user_agree" id="join_user_agree" />
										회원가입 약관에 동의합니다.									
									</label>
								</div>
							</div>
							<!-- <p class="error col-xs-12" style="display: block;" for="join_user_agree">회원가입 약관에 동의하셔야 회원가입 하실 수 있습니다.</p> -->
						</div>
						<div class="form-group pull-left">
							<label class="control-label"> 개인정보 처리방침 안내 </label>
							<div class="col-xs-12">
								<textarea class="form-control" readonly rows="10" cols="100">개인정보수집

■ 수집하는 개인정보 항목

회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.


ο 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일 , 직업 ,  서비스 이용기록 , 접속 로그 , 쿠키 , 접속 IP 정보
ο 개인정보 수집방법 : 홈페이지(회원가입,게시판) 

■ 개인정보의 수집 및 이용목적

회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다..

 ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송
 ο 회원 관리
회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 가입 의사 확인 , 연령확인 , 불만처리 등 민원처리 , 고지사항 전달
 ο 마케팅 및 광고에 활용
접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계

■ 개인정보의 보유 및 이용기간

회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.
</textarea>
							</div>
							<div class="col-xs-12">
								<div class="checkbox pull-right">
									<label for="join_priv_agree">
										<input type="checkbox" name="join_priv_agree" id="join_priv_agree">
										개인정보 처리방침에 동의합니다.									
									</label>
								</div>
							</div>
						</div>
					</div><!-- panel body -->
				
					<div class="panel-footer">
						<div style="overflow: hidden">
							<div class="col-sm-offset-3 col-sm-6">
								<button type="button" class="btn btn-lg btn-primary btn-block" onclick="checkbox()">Next Step</button>
								<input type="hidden" name="rq_url" value="/">
							</div>
						</div>
					</div>
				</div>
			</form>	
		</div>
	</div>

</div>

</div>

</body>
</html>