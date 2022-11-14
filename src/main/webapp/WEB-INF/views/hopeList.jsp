<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
<title>Insert title here</title>
</head>
<body>
<div id="contentGroup">
       	<c:import url="./sideTest.jsp"></c:import>

<div id="contentcore">
<div class="naviandtitle">
	<h3>희망도서신청조회</h3>
	<div class="navi"><a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 마이페이지 <i class="arrow"></i>희망도서신청조회</div>
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
					<form name="searchForm" id="searchForm" method="get">
						<fieldset>
							<legend class="blind">게시글 검색 영역</legend>
							<!-- 게시판 검색 -->
							<div class="pageSearch">
								<div class="schForm">
									<select name="manageCd" id="manageCd" class="schSel">
										<option value="ALL">도서관 전체</option>
										
											<option value="MA">석수도서관</option>
										
											<option value="MI">만안도서관</option>
										
											<option value="MH">삼덕도서관</option>
										
											<option value="ME">박달도서관</option>
										
											<option value="MB">평촌도서관</option>
										
											<option value="MG">관양도서관</option>
										
											<option value="MC">비산도서관</option>
										
											<option value="MD">호계도서관</option>
										
											<option value="MJ">어린이도서관</option>
										
											<option value="MF">벌말도서관</option>
										
											<option value="MK">안양역스마트도서관</option>
										
											<option value="ML">동안구청스마트도서관</option>
										
											<option value="MM">범계스마트도서관</option>
										
											<option value="MN">인덕원역스마트도서관</option>
										
									</select>
									<select name="searchType" id="searchType" title="검색방법 선택" class="schSel1">
										<option value="0">도서명</option>
										<option value="1">저자</option>
										<option value="2">발행처</option>
									</select>
									<input type="text" name="searchKeyword" id="searchKeyword" value="" title="검색어 입력" class="schKwd2" placeholder="검색어를 입력해 주세요">
									<a href="#link" id="searchBtn" class="btn input">검색</a>
								</div>
							</div>
							<!-- //게시판 검색 -->
						</fieldset>
					</form>
					<!-- 게시판 목록 -->
					<div class="articleWrap">
						<ul class="article-list reserve">
							
								<li>
									<p class="title"><a href="#link" onclick="javascript:hopeBookDetail('106087679'); return false;">괴괴한 날씨와 착한 사람들</a></p>
									<ul class="info">
										<li>
											<span>저자: 임솔아 (지은이)</span>
											<span>발행처: 문학과지성사</span>
										</li>
										<li>
											<span>신청도서관: 안양시박달도서관</span>
											<span>신청일: 2022.11.14</span>
											<span>신청상태: 신청중</span>
										</li>
										
											<li class="status"><a href="#btn" onclick="javascript:fnHopeBookCancelProc('106087679','141095'); return false;" class="tblBtn cncl">신청취소</a></li>
										
									</ul>
								</li>
							
						</ul>
					</div>
					<!-- //게시판 목록 -->
					<!-- 페이징 -->
					<div class="pagingWrap">
						<p class="paging">
							<span class="current">1</span>


						</p>
					</div>
					<!-- //페이징 -->
					<!--
					<dl class="linkBox">
						<dt class="txtArea">희망도서신청을 하려면 버튼을 누르세요</dt>
						<dd class="btnArea"><a href="/seoksu/hopeBookSearch.do" class="btn themeBtn">희망도서 신청하기</a></dd>
					</dl>
					 -->
					<!-- End Of the Real Contents-->
				</div>
			</div>
		</div>	
</body>
</html>