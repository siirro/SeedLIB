<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/sub.css">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>

</head>
<body>
    <div class="wrap">

    <c:import url="../temp/header.jsp"></c:import>

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>회원정보수정</h3>
            </div>
        </div>
                <div id="contentGroup">
                    
        <div id="lnbNav" class="navArea">
            <h2>회원정보</h2>
        	<c:import url="../sideBar/FsideBar.jsp"></c:import>

        </div>
        
                    <div id="contentcore">
                        
        
        
        
        <div class="naviandtitle">
            <h3>회원정보수정</h3>
            <div class="navi"><a href="/intro/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i>회원정보<i class="arrow"></i>회원정보수정</div>
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
                            <h4 class="htitle"><span class="themeFC">비밀번호</span> 확인</h4>
                            <ul class="dot-list">
                                <li>공용 사용환경 등에서의 개인정보 보호를 위해 비밀번호를 확인합니다.</li>
                                <li>아래 입력창에 비밀번호를 입력하고 확인을 누르면 회원정보수정 페이지로 이동합니다.</li>
                            </ul>
                            <div class="findWrap mt30">
                                <form name="registForm" id="registForm" method="post" class="findForm">
                                    <div class="findGroup clearfix">
                                        <div class="pwChkArea">
                                            <div class="inpArea">
                                                <label for="user_id">아이디</label>
                                                rrkdalsfn
                                            </div>
                                            <div class="inpArea bdon">
                                                <label for="user_pw">비밀번호</label>
                                                <input type="password" id="password" name="password">
                                            </div>
                                            <input type="button" id="checkBtn" title="비밀번호 확인" value="비밀번호 확인" class="btnLogin themeBtn">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- End Of the Real Contents-->
                        </div>
                    </div>
                </div>
            </div>

                  <!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer --> 
        </div>
    
</body>
</html>