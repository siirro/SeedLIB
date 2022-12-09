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
	<title>책꽂이 : 씨앗도서관 ☘️ </title>
</head>

<body>
	<input type="hidden" id="userName" value="${member.userName}">
	<div class="contentsGroup">
        <div class="seatArea">
            <span class="book" style="margin-bottom: 10px;">🌱 새 책 꽂 이 🌱</span>
            <hr style="width: 35%;"> 
        </div>
        <hr style="margin-top: 30px;"> 
          
        <div class="shelf-con">
            <div class="shelfCon">
	            <div class="shelfName">
	            	<span>📗 새 책꽂이 명 : </span>
	            	<input type="text" id="shName">
	            </div>
	            <div class="shelfMemo">
	            	<span>💚 책꽂이 설명 : </span>
	            	<textarea type="text" id="shMemo" rows="3"></textarea>
	            </div>
	        </div>
        	<div class="btnArea">
				<button type="button" class="btn white small" id="RealShelfBtn" title="저장">저장</button>
				<a href="javascript:window.close();" class="btn white small" title="닫기">닫기</a>
			</div>
		</div>
    </div>
	
</body>
</html>