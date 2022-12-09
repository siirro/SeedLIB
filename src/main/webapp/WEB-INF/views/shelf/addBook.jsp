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
	<form name="form" action="/shelf/addBook" method="POST">
	<input type="hidden" id="userName" value="${member.userName}">
	<input type="hidden" id="isbn" value="${isbn}">
	
	<div class="contentsGroup">
        <div class="seatArea">
            <span class="book" style="margin-bottom: 10px;">🌱 책 꽂 이 🌱</span>
            <hr style="width: 35%;">  
            <span class="bookTitle">📖 ${title}</span>
        </div>
        <hr style="margin-top: 30px;">   
        
        <div>
            <div class="shelfCon">
            	<div class="shelf-flex-a">
		            <div class="shelfTI">
		            	<span><strong>💚 담을 곳 : </strong></span>
		            </div>
		            <div class="shelfSelect">
		            	<select class="shNum" id="list_id" name="list_id" class="selectBox1">
							<c:forEach items="${list}" var="shelf">															
								<option value="${shelf.shNum}">${shelf.shName}</option>
							</c:forEach>
						</select>	
		            </div>
            	</div>
				<div class="shelf-flex-b">	
					<button type="button" id="addShelfBtn" class="btn white small" title="새 책꽂이 만들기">새로운 책꽂이</button>
        		</div>
	        </div>

        	<div class="btnArea">
				<button type="button" id="RealBookBtn" class="btn white small" title="저장">저장</button>
				<a href="javascript:window.close();" id="closeBtn" class="btn white small" title="닫기">닫기</a>
			</div>
		</div>
    </div>
	</form>
</body>
</html>