<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>${useList[0].roomVO.roomName} 현황 조회</title>
	<style>
	
		.contentArea{
			display: flex;
		    flex-direction: column;
		    align-items: center;
			padding: 50px 0 0 !important;
		}

		.ttabWrap{
			margin-bottom: 20px !important;
		}

		.seatInfo{
			display: flex;
			margin-top: 30px;
			margin-bottom: 15px;
			width: 100%;
			justify-content: center;
		}

		.green{
			border-radius: 5px;
			background-color: #77e270;
			font-weight: bold;
			color: #ffffff;
			font-size: 17px;
			font-weight: bold;
			text-shadow: 1px 1px 3px rgb(0 0 0 / 30%);
		}

		.gray{
			border-radius: 5px;
			background-color: #8c8989;
			font-weight: bold;
			color: #ffffff;
			font-size: 17px;
			font-weight: bold;
			text-shadow: 1px 1px 3px rgb(0 0 0 / 30%);
		}

		.currentTab{
			border-color: #444;
			box-shadow: 0 5px 0 #eaeaea;
			border-left: 1px solid #444;
			border: 1px solid;
			text-align: center;
			font-size: 20px;
			padding: 15px;
		}

		.currentTab a{
			line-height: 58px;
			font-size: 1.250em;
			text-align: center;
			border: 1px solid #e5e5e5;
			color: #222;
			box-sizing: border-box;
			display: block;
		}
		
		.seatArea{
			display: inline-block;
			margin-left: 65px;
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
			/* text-shadow: -1px -1px 0 #5d9d49, 1px -1px 0 #5d9d49, -1px 1px 0 #5d9d49, 1px 1px 0 #5d9d49; */
			text-shadow: 1px 1px 3px rgb(0 0 0 / 50%);
		}
		
		.used {
			background:#8c8989;
		}
		
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
<div id="container" class="sub">	
<div class="sVisualWrap">
	<div class="sVisual">
		<h3 id="roomName" data-room-name="${useList[0].roomVO.roomName}">${useList[0].roomVO.roomName} 현황 조회</h3>
	</div>
</div>
<div id="contentGroup">
       <c:import url="../sideBar/BsideBar.jsp"></c:import>
<div id="contentcore">
	<div class="naviandtitle">
		<h3>${useList[0].roomVO.roomName} 현황 조회</h3>
		<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 문화참여 <i class="arrow"></i>열람실 예약<i class="arrow"></i>현황 조회
		</div>
	</div>

<div id="contents" class="contentArea">				
	<!--Forced tab Show Que-->
	<div class="ttabWrap" style="display: block; ">
		<div id="virtSelect" style="display: none;"><a href="#script">탭메뉴</a></div>
		<ul id="ttab3" class="tnb clearfix"> 
	    <li id="tnb1_7_1" class="choiced"><div class="currentTab" style="min-width: 479px;">좌석 현황 조회/예약</div></li> 
	   </ul>
	</div>
	<!--Forced tab Show Que-->
	<div class="seatInfo">
		<div>
			<table style="width:210px;">
				<tbody>
					<tr>
						<td style="width:100px; text-align: center; " class="green">이용가능</td>
						<td style="width: 10px;"></td>							
						<td style="width:100px; text-align: center; " class="gray">이용중</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
<div style="display: inline-block; width:95%; text-align: center; border: 1px; border-style: solid;">
      <ul class="seatArea">
         <c:forEach begin="1" end="${useList[0].roomVO.lastNum}" step="1" var="r" varStatus="status">
			 <c:set var="loop_flag" value="false" />
				<c:forEach items="${useList}" var="ul">
					<c:if test="${ul.seatNum eq r && ul.rvAble eq 0}">
						<li class="seatList used">
							<div>
							   <span></span>
								  <button class="resBtn" data-res-num="${r}" available="N">${r}</button>
							   <span></span>
							</div>
						 </li>
						 <c:set var="loop_flag" value="true"/>
						</c:if>
					</c:forEach>
				<c:if test="${not loop_flag}">	
					<li class="seatList">
						<div>
						<span></span>
							<button class="resBtn" data-res-num="${r}" available="Y">${r}</button>
						<span></span>
						</div>
					</li>	
				</c:if>	
            <c:if test="${(status.index)%5 eq 0}">
               <li class="seatBlank seatList"></li>
            </c:if>
            <c:if test="${(status.index)%20 eq 0}">
               <li class="passage"></li>
            </c:if>
         </c:forEach>
      </ul>
</div> 

<div style="width: 100%;">
	<dl class="linkBox">
		<dt class="txtArea">열람실 좌석 조회/퇴실 체크는 마이페이지에서 가능합니다</dt>
		<dd class="btnArea"><a class="btn write themeBtn" href="/mypage/roomStat">신청조회</a></dd>
	</dl>
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