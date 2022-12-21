<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/images/favicon.png">
    <title>문화행사 : 씨앗도서관 ☘</title>
</head>

<body>
	<div id="wrap">
    	<c:import url="../temp/header.jsp"></c:import>

	    <div id="container" class="sub">
			
	        <div class="sVisualWrap">
	            <div class="sVisual">
	                <h3>통합검색</h3>
	            </div>
	        </div>
	        <div id="contentGroup">
		        <c:import url="../sideBar/BsideBar.jsp"></c:import>
		        
		        <div id="contentcore">
		            <div class="naviandtitle">
		                <h3>문화행사 신청</h3>
		                <div class="navi">
		                    <a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
		                    <i class="arrow"></i> 문화행사/참여 <i class="arrow"></i>문화행사 신청
		                </div>
		            </div>
		    
		            <div id="contents" class="contentArea">
		            	${vo} <br>
		            	<input type="text" id="proNum" value="${vo.proNum}"> proNum : ${vo.proNum}<br> 
		            	<input type="text" id="userName" value="${member.userName}"> userName : ${member.userName} <br>
		            	<button type="button" class="btn white small" id="ProAlretBtn" title="신청">신청</button>
		            </div>
		        </div>
		    </div>
		</div>
	</div>
	
	<c:import url="../temp/footer.jsp"></c:import> 
	<script type="text/javascript" src="/js/program.js"></script>
</body>
</html>