<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
		<h3>이용시간</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	<c:import url="../sideBar/CsideBar.jsp"></c:import>

</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>이용시간</h3>
	<div class="navi"><a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 이용안내 <i class="arrow"></i>도서관이용안내<i class="arrow"></i>이용시간</div>
	<div class="snsFarm">
		<ul class="snsBtnArea clearfix">
			<li>
				<a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
				<div id="snsGroup" class="snsList clearfix">
					<a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
					<a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
					<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/seoksu/menu/10136/contents/40034/contents.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
					<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/seoksu/menu/10136/contents/40034/contents.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
					<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/seoksu/menu/10136/contents/40034/contents.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
				</div>
			</li>
			<li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('seoksu'); return false;"><span class="blind">현재화면 프린트</span></a></li>
		</ul>
	</div>
</div>


<script src="/include/js/clipboard.min.js"></script>
<script>
	$('#sns').click(function(e) {
		$.ajax({
			type: "POST",
			url: "/cmmn/share/shortUrl.do",
			dataType : "json",
			data: { "url" : "https://lib.anyang.go.kr/seoksu/menu/10136/contents/40034/contents.do"},
			async: false,
			error : function (request, status, error){
				//alert("에러코드: " + request.status + "\r\n메시지: " + request.responseText);
			},
			success: function(data) {
				//$("#shortUrl").html(data.url);
				$("#qrcodeImg").html('<img src="' + data.url + '.qr" alt="QR코드 : https://lib.anyang.go.kr/seoksu/menu/10136/contents/40034/contents.do" >');
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
					<!-- 이용안내_도서관이용안내_이용시간 -->
<h4 class="htitle"><span class="themeFC">씨앗도서관 </span>이용시간 안내</h4>

<ul class="dot-list">
	<li><strong><span>휴관일</span></strong> : 매주 <span style="color:#2980b9;"><strong>월요일</strong></span>, <strong>법정 공휴일(일요일 제외), 매월 둘째, 넷째, 다섯째 월요일 열람실 개방(08시~20시)</strong></li>
</ul>

<ul class="dot-list">
	<li><span>이용시간</span></li>
</ul>

<div class="tblWrap mt20">
<table class="tbl">
	<caption>도서관 이용시간 안내</caption>
	<colgroup>
		<col>
		<col>
		<col>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">구 분</th>
			<th scope="col">평 일</th>
			<th scope="col">주 말</th>
			<th scope="col">방역시간</th>
			<th scope="col">비 고</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style="text-align: center;">관외 대출실</td>
			<td style="text-align: center;"><span style="color:#2980b9;">09:00 ~ 22:00</span><br></td>
			<td rowspan="2" style="text-align: center;">09:00 ~ 17:00</td>
			<td style="text-align: center;">수시 방역</td>
			<td style="text-align: center;">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center;">어린이실<br></td>
			<td style="text-align: center;"><span style="color:#2980b9;">09:00 ~ 18:00</span></td>
			<td style="text-align: center;">수시 방역</td>
			<td style="text-align: center;">&nbsp;</td>
		</tr>
		<tr>
			<td rowspan="2" style="text-align: center;">열 람 실</td>
			<td style="text-align: center;"><span style="color:#2980b9;">하절기(3월~10월) 08:00 ~ 23:00</span></td>
			<td style="text-align: center;">하절기(3월~10월) 08:00 ~ 23:00</td>
			<td rowspan="2" style="text-align: center;">수시 방역</td>
			<td rowspan="2" style="text-align: center;"><span style="color:#ff0000;">현 장 발 권</span></td>
		</tr>
		<tr>
			<td class="bdr" style="text-align: center;"><span style="color:#2980b9;">동절기(11월~2월) 08:00 ~ 23:00</span></td>
			<td style="text-align: center;">동절기(11월~2월) 08:00 ~ 23:00</td>
		</tr>
	</tbody>
</table>
</div>

<ul class="dot-list">
	<li><span>이용가능</span> : 자료실, 열람실, 상호대차(공공-작은도서관)</li>
</ul>
<br>
<br>
<br>
&nbsp;
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