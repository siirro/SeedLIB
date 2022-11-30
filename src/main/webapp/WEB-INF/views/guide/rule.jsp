<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <link rel="stylesheet" href="/css/sub.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/layout.css">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>

</head>
<body>
    <div class="wrap">
         <!-- header -->
        <c:import url="../temp/header.jsp"></c:import>
     <!-- header -->
     
     
     <div id="container" class="sub">
		
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>대출/반납/예약</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	<c:import url="../sideBar/CsideBar.jsp"></c:import>

</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>대출/반납/예약</h3>
	<div class="navi"><a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 이용안내 <i class="arrow"></i>도서관이용안내<i class="arrow"></i>대출/반납/예약</div>
	<div class="snsFarm">
		<ul class="snsBtnArea clearfix">
			<li>
				<a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
				<div id="snsGroup" class="snsList clearfix">
					<a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
					<a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
					<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/seoksu/menu/10139/contents/40009/contents.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
					<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/seoksu/menu/10139/contents/40009/contents.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
					<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/seoksu/menu/10139/contents/40009/contents.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
				</div>
			</li>
			<li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('seoksu'); return false;"><span class="blind">현재화면 프린트</span></a></li>
		</ul>
	</div>
</div>


				<div id="contents" class="contentArea">
					
<!--Forced tab Show Que-->
<div class="ttabWrap">
	<div id="virtSelect"><a href="#script">탭메뉴</a></div>
	<ul id="ttab3" class="tnb clearfix">
		<li class="ttabLast"></li>
	</ul>
</div>
<!--Forced tab Show Que-->

<div id="popblackBG"></div>

					<!--Real Contents Start-->
					<!-- 이용안내_도서관이용안내_대출/반납/예약 -->
<h4 class="htitle"><span class="themeFC">대출/반납</span> 안내</h4>

<table class="tbl">
	<caption>대출/반납 안내 : 대출기한 및 권수, 동일도서 재대출, 대출정지로 구성된 표</caption>
	<colgroup>
		<col style="width: 20%;">
		<col>
		<col>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">구분</th>
			<th scope="col">개인회원</th>
			<th scope="col">가족회원</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>대출방법</td>
			<td class="ta_l" colspan="2">본인 회원증(모바일 또는 실물 회원증) 제시</td>
		</tr>
		<tr>
			<td>대출기한 및 권수</td>
			<td class="ta_l">
			<ul class="dot-list">
				<li>1인 5권 이내</li>
				<li>14일간 (2주)</li>
			</ul>

			<div>※DVD : 1인당 2점 X 가족회원수<br>
			&nbsp; (가족구성원별&nbsp;2점 대출 가능)</div>
			</td>
			<td class="ta_l">
			<ul class="dot-list">
				<li>가족수 x 5권</li>
				<li>14일간 (2주)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>동일도서 재대출</td>
			<td class="ta_l" colspan="2">반납 후 3일 이후에 재대출 가능(예약이 없을 시 1주일 연장 가능)</td>
		</tr>
		<tr>
			<td>반납</td>
			<td class="ta_l" colspan="2">
			<ul class="dot-list">
				<li>공공도서관 대출도서 → 공공도서관 반납(타 공공도서관 반납가능)</li>
			</ul>
			<div>&nbsp;&nbsp;※ 작은도서관 반납불가</div>
			<ul class="dot-list">
				<li>스마트도서관 대출도서 → 해당 스마트도서관 반납</li>
			</ul>
			<div>&nbsp;&nbsp;※ 공공·작은도서관 반납불가</div>
			</td>
		</tr>
		<tr>
			<td>대출정지</td>
			<td class="ta_l" colspan="2">
			<ul class="dot-list">
				<li>대출기한 연체시 연체한 일수</li>
				<li>회원증 분실시 재발급 신청일로부터 1일</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>

<h4 class="htitle"><span class="themeFC">반납연기</span> 안내</h4>

<table class="tbl">
	<caption>반납연기 안내 : 횟수 및 기간, 방법, 제한사항으로 구성된 표</caption>
	<colgroup>
		<col style="width: 20%;">
		<col>
		<col>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">구분</th>
			<th scope="col">내용</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>횟수 및 기간</td>
			<td class="ta_l">
			<ul class="dot-list">
				<li>1회 반납예정일로부터 7일 연기 가능</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>방법</td>
			<td class="ta_l">
			<ul class="dot-list">
				<li>홈페이지 마이페이지&gt;도서이용내역&gt;대출현황에서 반납연기(대출 후 다음날부터 가능)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>제한사항</td>
			<td class="ta_l">
			<ul class="dot-list">
				<li>다른 이용자가 대출예약한 경우</li>
				<li>반납일이 경과했거나 반납일이 경과한 다른 연체도서가 있는 경우</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>

<h4 class="htitle"><span class="themeFC">도서 예약</span> 안내</h4>

<div class="tblWrap">
<table class="tbl">
	<caption>도서 예약 안내 : 가능 권수, 예약방법으로 구성된 표</caption>
	<colgroup>
		<col style="width: 20%;">
		<col>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">구분</th>
			<th>내용</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>가능 권수</td>
			<td class="ta_l pl20">
			<ul class="dot-list">
				<li>2권<br>
				※대출을 원하는 책이 대출중인 경우 예약가능(대출가능도서는 예약불가)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>예약방법</td>
			<td class="ta_l pl20">
			<ul class="dot-list">
				<li>홈페이지 로그인, 자료검색 후 도서예약신청 버튼 눌러서 예약</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>제한사항</td>
			<td class="ta_l pl20">
			<ul class="dot-list">
				<li>대출가능도서는 예약불가</li>
				<li>가족회원의 경우 가족구성원이 대출중인 도서는 예약불가</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>
</div>

					<!-- End Of the Real Contents-->

				</div>
			</div>
		</div>
	</div>
     
     </div>
\  <!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->    

</body>
</html>