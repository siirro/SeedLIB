<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
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
		.seatInfo{
			display: flex;
			justify-content: flex-end;
			margin-bottom: 15px;
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

/* 이용중 */
		.room-0{
			background: #77e270 !important;
			color:#77e270 !important;
			opacity: 100 !important;
		}

		.btn{
			border-radius: 5px;
			background-color: #ff5722 !important;
		}

/* 퇴실 */
		.room-1{
			background-color: #8c8989 !important;
			color: #8c8989 !important;
			opacity: 100 !important;
		}		

		.studySuccess{
			color: #ffffff;
			font-size: 17px;
			font-weight: bold;
			text-shadow: 1px 1px 3px rgb(0 0 0 / 70%);
		}


	</style>
<title>열람실 이용 내역 : 씨앗도서관 ☘️ </title>
</head>
<body>
	<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
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
	<h3>열람실 이용 내역</h3>
	<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 마이페이지 <i class="arrow"></i>열람실 이용 내역</div>
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
					<!--Real Contents Start-->
					<form action="../mypage/seatHistory" method="GET">
						<input type="hidden" id="userName" name="userName" value="${memberVO.userName}">
							<div id='calendar'></div>
	
		</div>
	</div>	
</div>	
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->
<script>
	let calendar;

	document.addEventListener('DOMContentLoaded', function() {
		let data = '${cl}';
		let id = "";
		data = JSON.parse(data);
		console.log("data", data)
		let calendarEl = document.getElementById('calendar');
        calendar = new FullCalendar.Calendar(calendarEl, {
			locale: 'ko', // the initial locale. of not specified, uses the first one
			initialView: 'dayGridMonth',
			events: data
		})
		
        calendar.render();
		makeCalendar();

		});

		  $("#calendar").on("click", ".fc-next-button", function(){
			console.log("dddd");
			makeCalendar();
		 })

		 $("#calendar").on("click", ".fc-prev-button", function(){
			console.log("dddd");
			makeCalendar();
		 })

		
		
		$(document).on("click","#exitBtn",function (info) {
			let exitNum = $(this).parent().prev().text();
			userName=$("#userName").val();
			console.log(userName);
			let check = window.confirm("퇴실하시겠습니까?");
			if(check) {
				$.ajax({
					type:"POST",
					url:"/mypage/exitSeat",
					data:{
						exitNum:exitNum,
						userName:userName
					},success:function(data){
						if(data>0){
							alert("퇴실 완료했습니다");
							location.reload();
						}else{
							alert("서버 문제로 퇴실 처리가 미완료되었습니다\n관리자에게 문의바랍니다")
						}
					},error:function(){
						alert("서버 문제로 퇴실 처리가 미완료되었습니다\n관리자에게 문의바랍니다")
					}	
				})
			}		
		});

function makeCalendar(){


	if($(".fc-bg-event").hasClass("room-0")){
		let exitBtn = '<div style="display:flex; justify-content: center;" class="room">';		
		exitBtn = exitBtn+'<button type="button" id="exitBtn" class="btn"">퇴실</button></div>';
		$(".room-0 > .room").remove();
		$(".room-0").append(exitBtn);
		}	

		if($(".fc-bg-event").hasClass("room-1")){
			let alreadyExit = '<div style="display:flex; justify-content: center;" class="room">';		
			alreadyExit = alreadyExit+'<span class="studySuccess">열공 완!</span></div>';
			$(".room-1 > .room").remove();
			$(".room-1").append(alreadyExit);
		}

}
</script>
<script>
</script>  
</body>
</html>