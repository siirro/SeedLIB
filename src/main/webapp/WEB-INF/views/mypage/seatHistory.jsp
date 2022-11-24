<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/css/calendar/calendar.css"/>
	<script src="/js/calendar/calendar.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<style>
		#searchBtn{
			width: 20%; 
			background-color: transparent;
		}

		.cncl{
			color: #666;
			background-color: #e9e9e9;
			border: 1px solid #e9e9e9;
			font-size: 1.063em;
			min-width: 110px;
			padding: 6px 15px;
		}
	</style>
<title>열람실 이용 내역</title>
</head>
<body>
	<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>

<div id="contentGroup">
	<c:import url="../sideBar/FsideBar.jsp"></c:import>

<div id="contentcore">
<div class="naviandtitle">
	<h3>열람실 이용 내역</h3>
	<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 마이페이지 <i class="arrow"></i>열람실 이용 내역</div>
</div>
<div id="contents" class="contentArea">
<div id="popblackBG"></div>
					<!--Real Contents Start-->
					<form action="../mypage/seatHistory" method="GET">
						<input type="hidden" id="userName" name="userName" value="id1">
						<fieldset>
							<legend class="blind">이용 내역 검색 영역</legend>
							<div id='calendar'></div>
							${cl}
		</div>
	</div>	
</div>	
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->
<script>
document.addEventListener('DOMContentLoaded', function() {
		let cl = [];
		cl.push("${cl}");
		for(let i=0; i<cl; i++){
			console.log(cl[i]);
		}
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
  			locale: 'ko', // the initial locale. of not specified, uses the first one
			initialView: 'dayGridMonth',
			events: [
					{
					id: 'a',
    			  	title: 'my event',
					start: '2022-10-10',
					// end: '2022-11-10',
					display: 'background'
					},
					{
					id: 'a',
    			  	title: 'my event',
					start: '2022-11-10',
					// end: '2022-11-10',
					display: 'background'
					},
					{
					id: 'a',
    			  	title: 'my event',
					start: '2022-11-15',
					// end: '2022-11-10',
					display: 'background'
					}
				],
				eventBackgroundColor: '#378006'
        });
        calendar.render();
		var event = calendar.getEventById('a');
		event.addEventListener("click",function(){
		alert("wow");
	})
      });
</script>
<script>
</script>  
</body>
</html>