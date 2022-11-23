<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/contents.css">
<link rel="stylesheet" href="/css/layout.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/sub.css">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>

</head>
<body>

<c:import url="../temp/header.jsp"></c:import>


<div id="container" class="sub">
		
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>나의정보</h3>
	</div>
</div>
		<div id="contentGroup">
<div id="contentcore">				
	<c:import url="../sideBar/FsideBar.jsp"></c:import>


<div class="naviandtitle">
	<h3>나의정보</h3>
	<div class="navi"><a href="/intro/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 마이페이지 <i class="arrow"></i>나의정보</div>
	<div class="snsFarm">
		<ul class="snsBtnArea clearfix">
			<li>
				<a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
				<div id="snsGroup" class="snsList clearfix">
					<a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
					<a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
					<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/intro/index.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
					<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/intro/index.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
					<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/intro/index.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
				</div>
			</li>
			<li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('intro'); return false;"><span class="blind">현재화면 프린트</span></a></li>
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
					<div class="myPageWrap">
						<div class="clearfix">
							<!-- PC버전 정회원일때 -->
							<div class="myInfoBox">
								<div class="myInner">
									<div class="myTop">
										<div class="title"><strong class="name"> 아이유 </strong> 님, 안녕하세요.</div>
										<div class="btnModify">
											
											
												<a href="#" class="btn">온라인회원증발급</a>
											
											<a href="#" class="btn white">회원정보수정</a>
										</div>
									</div>
									<div class="myInfo">
										<div class="memType">
											
													<strong class="member typeB">준회원</strong>
												
										</div>
										<div class="myInfoList">
											<ul class="dot-list">
												<li><span>아이디</span> : 아이유 </li>
												<li><span>회원가입일</span> : 2022.11.17 </li>
												<li><span>휴대폰번호</span> : 010-1111-1111 </li>
												
												<!-- <li><span>회원증번호</span> : </li>
												<li class="mobileShow"><span class="emp1">※ 모바일회원증 캡처 이미지 사용 불가</span></li>-->
											</ul>
										</div>
									</div>

									<!-- 가족회원 바코드 -->
									<div class="barcodeWrap mobileShow">
										<div class="swiper-container">
											<ul class="barcodeFamily swiper-wrapper">
												
												<li class="swiper-slide">
													<div class="name"> 아이유 </div>
													<img src="https://www.yslibrary.or.kr/cmmn/barcode/getBarCode.do?width=248&amp;height=75&amp;data=" alt="" width="248" height="75">
													<div class="num"></div>
												</li>
												
											</ul>
											<p class="coution">※ 모바일회원증 캡처 이미지 사용불가</p>
											<!-- Add Arrows -->
											<a href="#none" class="btnSlidePrev"></a>
											<a href="#none" class="btnSlideNext"></a>
										</div>
									</div>
									<script>
										$(function () {
											if($(".barcodeWrap .swiper-slide").length > 1) {
												$(".btnSlideNext").css("display", "block");
												$(".btnSlidePrev").css("display", "block");
												var popupSwiper = new Swiper('.barcodeWrap .swiper-container', {
													loop:true,
													observer:true,
													observeParents:true,
													navigation: {
														nextEl: '.barcodeWrap .btnSlideNext',
														prevEl: '.barcodeWrap .btnSlidePrev',
													}
												});
											}
										});
									</script>
									<!-- 가족회원 바코드 -->

								</div>
							</div>

							<h4 class="stitle">서비스 이용현황</h4>
							<ul class="myState clearfix">
							
								<li>
									<a href="/intro/lectureApplyList.do">
										<strong class="tit">신청중인<br>문화행사</strong>
										<span class="num">0</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<!-- End Of the Real Contents-->
				</div>
			</div>
		</div>
	</div>
	
	<script>
	$('#sns').click(function(e) {
		$.ajax({
			type: "POST",
			url: "/cmmn/share/shortUrl.do",
			dataType : "json",
			data: { "url" : "https://lib.anyang.go.kr/intro/index.do"},
			async: false,
			error : function (request, status, error){
				//alert("에러코드: " + request.status + "\r\n메시지: " + request.responseText);
			},
			success: function(data) {
				//$("#shortUrl").html(data.url);
				$("#qrcodeImg").html('<img src="' + data.url + '.qr" alt="QR코드 : https://lib.anyang.go.kr/intro/index.do" >');
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

</body>
</html>