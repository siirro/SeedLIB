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
    
    <script type="text/javascript" defer src="/js/common.js"></script>
    <script type="text/javascript" defer src="/js/bookDetail.js"></script>
    <script type="text/javascript" defer src="/js/bookLikeShelf.js"></script>
    <script type="text/javascript" defer src="/js/bookLoan.js"></script>
    <link rel="icon" href="/images/favicon.png">
	<title>도서 이용 내역 : 씨앗도서관 ☘️ </title>
</head>

<c:import url="../temp/header.jsp"></c:import>

<body>
	<div id="container" class="sub">	
		<div class="sVisualWrap">
			<div class="sVisual">
				<h3>신청하기</h3>
			</div>
		</div>
		<div id="contentGroup">
			<c:import url="../sideBar/FsideBar.jsp"></c:import>
		
			<div id="contentcore">
				<div class="naviandtitle">
					<h3>도서 이용 내역</h3>
					<div class="navi">
						<a href="../" title="홈으로 이동" class="home">
							<span class="blind">홈</span>
						</a>
						<i class="arrow"></i> 마이페이지
						<i class="arrow"></i>도서 이용 내역
					</div>
				</div>
				
				<div id="contents" class="contentArea">
					<div id="popblackBG"></div>
						<div class="seatInfo">
							<div>
								<table style="width:210px;">
									<tbody>
										<tr>
											<td style="width:100px; text-align: center; " class="green">이용중</td>
											<td style="width: 10px;"></td>							
											<td style="width:100px; text-align: center; " class="gray">퇴실</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
					<form action="../mypage/seatHistory" method="GET">
						<input type="hidden" id="userName" name="userName" value="${memberVO.userName}">
							<div id='calendar'></div>
					</form>
				</div>
			</div>	
		</div>
	</div>		
	
	<c:import url="../temp/footer.jsp"></c:import> 
</body>
</html>