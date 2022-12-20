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
 
 <link rel="shortcut icon" href="/images/favicon.png">
    <title>편의시설 : 씨앗도서관 ☘</title>
</head>
<body>
 <div class="wrap">
     <!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
     <!-- header -->
     
     <div id="container" class="sub">
		
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>편의시설</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	<c:import url="../sideBar/CsideBar.jsp"></c:import>

</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>편의시설</h3>
	<div class="navi"><a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 이용안내 <i class="arrow"></i>도서관이용안내<i class="arrow"></i>편의시설</div>
	<div class="snsFarm">
		<ul class="snsBtnArea clearfix">
			<li>
				<a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
				<div id="snsGroup" class="snsList clearfix">
					<a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
					<a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
					<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/seoksu/menu/10140/contents/40035/contents.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
					<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/seoksu/menu/10140/contents/40035/contents.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
					<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/seoksu/menu/10140/contents/40035/contents.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
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
					<!-- 이용안내_도서관이용안내_편의시설 -->
<h4 class="htitle"><span class="themeFC">무인</span> 반납기</h4>

<ul class="dot-list">
	<li>자료실 운영시간 이후에 도서를 반납할 수 있는 이용자편의 서비스</li>
	<li><span>설치장소</span> : 도서관 현관</li>
</ul>
&nbsp;

<h4 class="htitle"><span class="themeFC">자료</span>복사 및 출력</h4>

<div class="tblWrap">
<table class="tbl">
	<caption>자료복사 및 출력 안내</caption>
	<colgroup>
		<col style="width: 20%;">
		<col>
	</colgroup>
	<tbody>
		<tr>
			<th scope="row">이용방법</th>
			<td class="ta_l">
			<ul class="dash-list">
				<li>복사 : 복사카드를 이용하여 자율복사</li>
				<li>출력 : 디지털도서관 내 PC를 이용하여 복합기에서 출력 가능</li>
			</ul>
			</td>
		</tr>
		<tr>
			<th scope="row">이용위치</th>
			<td class="ta_l">
			<ul class="dash-list">
				<li>복사 : 종합자료실(2층), 참고간행물실(2층)</li>
				<li>출력 : 디지털도서관(3층)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<th scope="row">이용요금</th>
			<td class="ta_l">
			<ul class="dash-list">
				<li>카드가격 : 3,000원 (3층 음수대 옆 자판기 구입)</li>
				<li>복사 : A4 50원</li>
				<li>출력 : A4 50원</li>
			</ul>
			</td>
		</tr>
		<tr>
			<th scope="row">복사범위</th>
			<td class="ta_l">부분복사 가능 (※ 전체 복사는 저작권법에 저촉됨)</td>
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
        
        


        <!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->

</body>
</html>