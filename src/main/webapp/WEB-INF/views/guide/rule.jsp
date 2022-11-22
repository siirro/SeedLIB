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
	<h2> 이용안내 </h2>
	<ul id="lnb" class="lnb"> 
  <li id="lnb4_1"><a href="/seoksu/menu/10133/bbs/20001/bbsPostList.do">도서관소식</a> </li> 
  <li id="lnb4_2"><a href="/seoksu/menu/10134/bbs/20002/bbsPostList.do">자주하는질문</a> </li> 
  <li id="lnb4_3"><a href="/guide/manners" class="current on">도서관이용안내</a> 
   <ul class="MkSub submenu" style="display: block;"> 
	<li id="lnb4_3_1"><a href="/guide/manners" class="current">도서관예절</a> </li> 
	<li id="lnb4_3_2"><a href="/guide/time">이용시간</a> </li> 
	<li id="lnb4_3_3"><a href="#">휴관일안내</a> </li> 
	<li id="lnb4_3_4"><a href="/member/agree">회원가입</a> </li> 
	<li id="lnb4_3_5"><a href="/guide/rule">대여규칙</a> </li> 
	<li id="lnb4_3_6"><a href="/guide/convenience">편의시설</a> </li> 
   </ul> </li> 
  <li id="lnb4_4"><a href="/seoksu/menu/10141/contents/40010/contents.do">상호대차</a> </li> 
  <li id="lnb4_5"><a href="/seoksu/menu/10142/contents/40011/contents.do">모바일앱</a> </li> 
  <li id="lnb4_6"><a href="/seoksu/menu/10143/contents/40012/contents.do">스마트도서관</a> </li> 
  <li id="lnb4_7"><a href="/seoksu/menu/10145/contents/40013/contents.do" class="on">책배달서비스</a> 
   <ul class="MkSub submenu" style="display: none;"> 
    <li id="lnb4_7_1"><a href="/seoksu/menu/10145/contents/40013/contents.do">책바다</a> </li> 
    <li id="lnb4_7_2"><a href="/seoksu/menu/10146/contents/40014/contents.do">책나래</a> </li> 
    <li id="lnb4_7_3"><a href="/seoksu/menu/10147/contents/40015/contents.do">두루두루</a> </li> 
    <li id="lnb4_7_4"><a href="/seoksu/menu/10148/contents/40016/contents.do">내생애첫도서관</a> </li> 
   </ul> </li> 
  <li id="lnb4_8"><a href="/seoksu/menu/10150/contents/40017/contents.do" class="on">전자도서관</a> 
   <ul class="MkSub submenu" style="display: none;"> 
    <li id="lnb4_8_1"><a href="/seoksu/menu/10150/contents/40017/contents.do">전자책</a> </li> 
    <li id="lnb4_8_2"><a href="/seoksu/menu/10151/contents/40018/contents.do">오디오북</a> </li> 
    <li id="lnb4_8_3"><a href="/seoksu/menu/10154/contents/40021/contents.do">학술논문</a> </li> 
    <li id="lnb4_8_4"><a href="/seoksu/menu/10155/contents/40022/contents.do">한국학</a> </li> 
    <li id="lnb4_8_5"><a href="/seoksu/menu/10153/contents/40020/contents.do">도서요약</a> </li> 
    <li id="lnb4_8_6"><a href="/seoksu/menu/10152/contents/40019/contents.do">인문학강의</a> </li> 
    <li id="lnb4_8_7"><a href="/seoksu/menu/10156/contents/40023/contents.do">이러닝</a> </li> 
    <li id="lnb4_8_8"><a href="/seoksu/menu/11107/contents/40109/contents.do">전자잡지</a> </li> 
    <li id="lnb4_8_9"><a href="/seoksu/menu/11108/contents/40110/contents.do">IT강좌</a> </li> 
   </ul> </li> 
  <li id="lnb4_9"><a href="/seoksu/menu/10157/bbs/20003/bbsPostList.do">도서관에바란다</a> </li> 
  <li id="lnb4_10"><a href="/seoksu/menu/10158/bbs/20004/bbsPostList.do">분실물센터</a> </li> 
 </ul>
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

<!-- 레이어팝업 -->
<div class="chart-pop chartSns" tabindex="0" data-tooltip-con="chartSns" data-focus="chartSns" data-focus-prev="chartSns-close">
	<div class="layer-content">
		<h4>QR코드</h4>
		<div class="layer-content">
			<div class="conTxt ta_c" id="qrcodeImg"></div>
			<div class="conTxt">
				<p>QR코드 이미지 저장</p>
				QR코드 &gt; 우측 클릭 &gt; 저장 &gt; 확장자 변경(png, jpg) 후 저장
			</div>
		</div>
		<a href="#close" class="chart-close01 tooltip-close" data-focus="chartSns-close" data-focus-next="chartSns"><span class="blind">닫기</span></a>
	</div>
</div>
<!-- //레이어팝업 -->

<script src="/include/js/clipboard.min.js"></script>
<script>
	$('#sns').click(function(e) {
		$.ajax({
			type: "POST",
			url: "/cmmn/share/shortUrl.do",
			dataType : "json",
			data: { "url" : "https://lib.anyang.go.kr/seoksu/menu/10139/contents/40009/contents.do"},
			async: false,
			error : function (request, status, error){
				//alert("에러코드: " + request.status + "\r\n메시지: " + request.responseText);
			},
			success: function(data) {
				//$("#shortUrl").html(data.url);
				$("#qrcodeImg").html('<img src="' + data.url + '.qr" alt="QR코드 : https://lib.anyang.go.kr/seoksu/menu/10139/contents/40009/contents.do" >');
				$("#sns1").attr('data-clipboard-text', data.url);
			}
		});
	});

	function fnShorturlCopy() {
		var clipboard = new ClipboardJS('#sns1');
		alert('단축주소가 복사되었습니다.');
		return false;
	}
</script>
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