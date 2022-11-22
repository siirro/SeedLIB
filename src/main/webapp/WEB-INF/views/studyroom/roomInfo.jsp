<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>열람실 현황 조회</title>
	<style>
	
		.contentArea{
			display: flex;
		    flex-direction: column;
		    align-items: center;
		}
		
		.seatArea{
			display: inline-block;
			margin-left: 70px;
			margin-top: 45px;
		}
		.seatList{
			align-items: center;
		    justify-content: center;
    		display: flex;
			float:left;
			width:70px;
			height:60px;
			background:#77e270;
			text-align: center;
			margin-right: 5px;
    		margin-bottom: 5px;
			border-radius: 5%;
		}

		.resBtn{
			color: #ffffff;
			font-size: 20px;
			font-weight: bold;
			text-shadow: -1px -1px 0 #5d9d49, 1px -1px 0 #5d9d49, -1px 1px 0 #5d9d49, 1px 1px 0 #5d9d49;
		}
		
		/* .seatList:nth-of-type(12n){
			background:rgb(255, 0, 0);
			content:"";
			clear:right;
		} */
		
		.seatBlank{
			width:30px;
			background: transparent;
			/* background: #77e270; */
		}
		
		.passage{
			height: 30px;
			clear: left;
		}
	</style>
</head>
<body>
	<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>열람실 현황 조회</h3>
	</div>
</div>
<div id="contentGroup">
       <c:import url="../sideBar/BsideBar.jsp"></c:import>
<div id="contentcore">
	<div class="naviandtitle">
		<h3>열람실 현황 조회</h3>
		<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 문화참여 <i class="arrow"></i>열람실 예약<i class="arrow"></i>현황 조회
		</div>
	</div>

<div id="contents" class="contentArea">				
	<!--Forced tab Show Que-->
	<div class="ttabWrap" style="display: block; ">
		<div id="virtSelect" style="display: none;"><a href="#script">탭메뉴</a></div>
		<ul id="ttab3" class="tnb clearfix"> 
	    <li id="tnb1_7_1" class="choiced"><a href="/studyroom/roomInfo" class="current" title="선택된 탭" style="min-width: 479px;">좌석 현황조회/예약</a> </li> 
	   </ul>
	</div>
	<!--Forced tab Show Que-->

<div style="display: inline-block; width:95%; text-align: center; border: 1px; border-style: solid;">
		<!-- style="width:100%; word-break:break-all;word-wrap:break-word;" -->
		<ul class="seatArea">
			<c:forEach items="${list}" var="r" varStatus="status">
				<li class="seatList">
					<div>
					<span></span>
						<button class="resBtn" data-res-num="${r}">${r}</button>
					<span></span>
					</div>
				</li>
				<c:if test="${(status.index+1)%5 eq 0}">
					<li class="seatBlank seatList"></li>
				</c:if>
				<c:if test="${(status.index+1)%20 eq 0}">
					<li class="passage"></li>
				</c:if>
			</c:forEach>
		</ul>
</div>
<div style="width: 100%;">
	<dl class="linkBox">
		<dt class="txtArea">열람실 좌석 신청 또는 조회를 하려면 버튼을 누르세요</dt>
		<dd class="btnArea"><a class="btn" href="/mypage/roomStat">신청조회</a> <a class="btn write themeBtn" href="/studyroom/setSeat">신청하기</a></dd>
	</dl>
</div>
					<!-- End Of the Real Contents-->

		</div>
	</div>
</div>
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->	
<script src="/js/studyroomRes.js"></script>		
</body>
</html>