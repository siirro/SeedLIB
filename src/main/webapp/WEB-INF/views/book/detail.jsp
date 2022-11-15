<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    
    <script defer src="/js/common.js"></script>
    
	<title>통합검색 : 새싹도서관</title>
</head>
<body>
	<div class = "vsc-initialized">
		<div class="container" class="sub">
			<div class="sVisualWrap">
				<div class="sVisual">
					<h3>통합검색</h3>
				</div>
			</div>
			
			<div id="contentGroup">
				<!-- 사이드바 -->
		       <c:import url="../sideBar/BsideBar.jsp"></c:import>
				
				<!-- 메인 내용 -->
				<div id="contentcore">
					<!-- 상단 메뉴 -->
					<div class="naviandtitle">
						<h3>통합검색</h3>
						
						<div class="navi">
							<a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
							<i class="arrow"></i> 자료검색
							<i class="arrow"></i>소장자료검색
							<i class="arrow"></i>통합검색
						</div>
						
						<div class="snsFarm">
							<ul class="snsBtnArea clearfix">
								<li>
									<a href="#snsGroup" id="sns" title="SNS 공유하기(확장됨)" class="snsShare"><span class="blind">SNS 공유하기</span></a>
									<div id="snsGroup" class="snsList clearfix" style="display: block; right: 45px; opacity: 1;">
										<a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();" data-clipboard-text="https://me2.do/FNlmGWJe">
											<span class="blind">단축URL</span>
										</a>
										<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory(''); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory">
											<span class="blind">카카오스토리</span>
										</a>
										<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter(''); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter">
											<span class="blind">트위터</span>
										</a>
										<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook(''); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook">
											<span class="blind">페이스북</span>
										</a>
									</div>
								</li>
								<li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('seed'); return false;"><span class="blind">현재화면 프린트</span></a></li>
							</ul>
						</div>
					</div> <!-- 상단 메뉴 끝 -->
					
					<!-- 메인 바디 -->
					<div id="contents" class="contentArea">
						<!-- Forced tab Show -->
						<div class="ttabWrap">
							<div class="virtSelect">
								<a href="#script">탭메뉴</a>
							</div>
							<ul id="ttab3" class="tnb clearfix">
								<li class="ttabLast"></li>
							</ul>
						</div>
						<div class="popblackBG" style="display:none;"></div>
						
						<!-- 책 디테일 -->
						<div class="bookDetailInformation">
							<div class="bookInforWrap cate_volume">
								<!-- 상단 책 정보 -->
								<div>
								</div>
								<!-- 상단 책 정보 끝 -->
							</div>
						</div>
						<!-- 책 디테일 끝 -->
					</div>
					
				</div>
			</div>
		</div>
	</div>

</body>
</html>