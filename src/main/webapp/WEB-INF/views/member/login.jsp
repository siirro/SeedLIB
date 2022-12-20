<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/member/loginsub.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/contents.css">
<link rel="stylesheet" href="/css/layout.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/button.css">
<link rel="stylesheet" href="/css/unified_search.css">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
 <link rel="shortcut icon" href="/images/favicon.png">
 <title> 로그인 : 씨앗도서관</title>
 
</head>
<body>

<div id="wrap">

<c:import url="../temp/header.jsp"></c:import>

    <div id="container" class="sub">		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>로그인</h3>
            </div>
        </div>
                <div id="contentGroup">
                    
        <div id="lnbNav" class="navArea">
            <h2>회원정보</h2>
            <ul id="lnb" class="lnb">
                                        <li id="lnb9_1"><a href="/" class="current">로그인</a> </li>
                                        <li id="lnb9_4"><a href="./join">회원가입</a></li>
                                    </ul>
        </div>
        
                    <div id="contentcore">
                        
        
        
        
        <div class="naviandtitle">
            <h3>로그인</h3>
            <div class="navi"><a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i>회원정보<i class="arrow"></i>로그인</div>
            <div class="snsFarm">
                <ul class="snsBtnArea clearfix">
                    <li>
                        <a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
                        <div id="snsGroup" class="snsList clearfix">
                            <a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
                            <a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
                            <a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/intro/memberLogin.do?returnUrl=aHR0cHM6Ly9saWIuYW55YW5nLmdvLmtyL2ludHJvL2luZGV4LmRv'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
                            <a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/intro/memberLogin.do?returnUrl=aHR0cHM6Ly9saWIuYW55YW5nLmdvLmtyL2ludHJvL2luZGV4LmRv'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
                            <a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/intro/memberLogin.do?returnUrl=aHR0cHM6Ly9saWIuYW55YW5nLmdvLmtyL2ludHJvL2luZGV4LmRv'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
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
                            <div class="loginWrap" >
                                <form action="./login" name="loginForm" id="loginForm" class="loginForm" method="post">
                                				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                                <input type="hidden" name="returnUrl" value="aHR0cHM6Ly9saWIuYW55YW5nLmdvLmtyL2ludHJvL2luZGV4LmRv">
                                    <div class="loginGroup clearfix">
                                        <div class="loginArea">
                                            <div class="inpArea">
                                            
                                            
                                            
                                                <label for="userId"><span class="blind">아이디</span></label>
                                                <input type="text" id="userId" name="userName" value="${cookie.userName.value}" placeholder="아이디">
                                            </div>
                                            <div class="inpArea">
                                                <label for="userPw"><span class="blind">비밀번호</span></label>
                                                <input type="password" id="userPw" name="password" placeholder="비밀번호">
                                            </div>

                                            <input type="submit" id="loginBtn" title="로그인" value="로그인" class="btnLogin themeBtn">
                                            
                                            
                                            <div class=rememberme>
                                            <input type="checkbox" name="rememberId" class="remember" id="rememberMe">
                                            <label class="" for="">ID 기억하기</label>
                                            </div>
                                           
   
                                            <div>
                                            <a href="/oauth2/authorization/kakao" class="btn_join_kakao";><i class="icon"></i><i class="division"></i>카카오 로그인</a>
                                            
                                            </div>
                                            <div class="member_confirm_line"></div>
                                            <div class="checkArea clearfix">
                                                <a href="/intro/memberFindIdCertify.do">아이디 찾기</a>
                                                <a href="/member/agree">회원가입</a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <div class="loginDesc">
                                    <ul class="dot-list">
                                        <li>로그인이 안되시는 경우 한/영 키와 Caps Lock 키가 눌러져 있지 않은지 확인해 주세요.</li>
                                        <li>계속해서 로그인이 안되시는 경우 관리자에게 문의하시기 바랍니다.</li>
                                    </ul>
                                </div>
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

<script type="text/javascript">
history.replaceState({},null,location.pathname)
</script>
</body>
</html>