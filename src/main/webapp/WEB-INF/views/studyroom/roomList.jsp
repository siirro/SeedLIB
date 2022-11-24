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
		
		
		.passage{
			height: 30px;
			clear: left;
		}

		.tabLi{
			border: 1px solid #222;
		}

		.tabLi a{
			color: #222 !important;
		}

		.tabLi .middle{
			border-top: none;
			border-bottom: none;
		}

		.cover{
			display: flex;
			width: 100%;
			height: 200px;
			justify-content: space-around;
			align-items: flex-end;
			margin-top: 30px;
		}

		.cover span{
			margin-top: 15px;
			display: block;
			height: 100%;
			font-size: 1.125em;
			font-weight: 540;
			line-height: 1;
			color: #969696;
			letter-spacing: -0.05em;
			text-shadow: 1px 1px 3px rgb(0 0 0 / 10%);
				}
		
		.cover div{
			padding: 30px 30px 20px 30px;
			border: #fff 5px solid;
   			box-shadow: 5px 5px 5px 5px rgb(0 0 0 / 10%);
    		text-align: center;
			margin-bottom: 35px;
			border-radius: 30%;
		}		
	</style>
</head>
<body>
	<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
<div id="container" class="sub">
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
	<div class="cover">
		<div class="wroom">
			<a href="/studyroom/roomInfo?roomName=WROOM" style="min-width: 479px;"><img src="/images/read.png" style="width:100px; height: auto;"></a>
			<span>일반열람실(여)</span>
		</div>
		<div class="mroom">
			<a href="/studyroom/roomInfo?roomName=MROOM" style="min-width: 479px;"><img src="/images/read (1).png" style="width:100px; height: auto;"></a>
			<span>일반열람실(남)</span>
		</div>
		<div class="nroom" style="padding-left: 40px; padding-right: 40px;">
			<a href="/studyroom/roomInfo?roomName=NROOM" style="min-width: 479px;"><img src="/images/online-lesson.png" style="width:100px; height: auto;"></a>
			<span>노트북실</span>
		</div>
	</div>
					<!-- End Of the Real Contents-->
		</div>
	</div>
</div>
</div>	
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->	
<script src="/js/studyroomRes.js"></script>		
</body>
</html>