<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <link rel="stylesheet" href="/css/contents.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    <link rel="stylesheet" href="/css/book/shelf.css">
    
    <script type="text/javascript" defer src="/js/common.js"></script>
    <script type="text/javascript" defer src="/js/bookDetail.js"></script>
    <link rel="icon" href="/images/favicon.png">
	<title>로그인 : 씨앗도서관 ☘️ </title>
</head>

<body>
	<div class="contentsGroup">
        <div class="seatArea">
            <span class="book" style="margin-bottom: 10px;">🌱 로그인 🌱</span>
            <hr style="width: 35%;"> 
        </div>
        
        <div>
           	<div class="loginWrap" >
                <form action="./login" name="loginForm" id="loginForm" class="loginForm" method="post">
                
                    <div class="loginGroup clearfix">
                        <div class="loginArea">
                            <div class="inpArea">
                                <label for="userId"><span class="blind">아이디</span></label>
                                <input type="text" id="userId" name="userName" placeholder="아이디">
                            </div>
                            <div class="inpArea">
                                <label for="userPw"><span class="blind">비밀번호</span></label>
                                <input type="password" id="userPw" name="password" placeholder="비밀번호">
                            </div>
                          
                            <input type="submit" id="loginBtn" title="로그인" value="로그인" class="btnLogin themeBtn">
                            
                            <div>
                           		<a href="kakao_login.php" class="btn_join_kakao" style="color:#FFF;"><i class="icon"></i><i class="division"></i>카카오 로그인</a>
                            	<a href="google_login.php" class="btn_join_google" style="color:#FFF;"><i class="icon"></i><i class="division"></i>구글 로그인</a>	                            
                            </div>
                            
                            <div class="member_confirm_line"></div>
	                            <div class="checkArea clearfix">
	                                <a href="/intro/memberFindIdCertify.do">아이디 찾기</a>
	                                <a href="/intro/memberFindPwdCertify.do">비밀번호 재발급</a>
	                                <a href="./agree">회원가입</a>
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
		</div>
    </div>
	


</body>
</html>