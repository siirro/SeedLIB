<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="shortcut icon" href="/images/favicon.png">
<title>도서관 행사 일정 : 씨앗도서관 ☘</title>

<style>
        td .fc-day-mon{
            background-color: #ff4c4c !important;
            }

        .red{
			border-radius: 5px;
			background-color: #ff4c4c;
			font-weight: bold;
			color: #ffffff;
			font-size: 17px;
			font-weight: bold;
			text-shadow: 1px 1px 3px rgb(0 0 0 / 30%);
		}

		.blue{
			border-radius: 5px;
			background-color: #3788d8;
			font-weight: bold;
			color: #ffffff;
			font-size: 17px;
			font-weight: bold;
			text-shadow: 1px 1px 3px rgb(0 0 0 / 30%);
		}
</style>
<link rel="stylesheet" type="text/css" href="/css/calendar/calendar.css"/>
<script src="/js/calendar/calendar.js"></script>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
    <div class="wrap">
        <!-- header -->
       <c:import url="../temp/header.jsp"></c:import>
        <!-- header -->
       <div id="container" class="sub">
            <div class="sVisualWrap">
                <div class="sVisual">
                    <h3>도서관 행사 일정</h3>
                </div>
            </div>
            <div id="contentGroup">
                <div id="lnbNav" class="navArea">
                    <c:import url="../sideBar/CsideBar.jsp"></c:import>
                </div>
                <div id="contentcore">
                    <div class="naviandtitle">
                        <h3>도서관 행사 일정</h3>
                        <div class="navi"><a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 도서관 안내 <i class="arrow"></i>도서관 행사 일정<i class="arrow"></i>일정 안내</div>
                    </div> 
                    <div id="contents" class="contentArea">
                        <div>
                            <!--Real Contents Start-->
                            <div style="display: flex; justify-content: center; padding: 10px 0;">
                              <table style="width:210px;">
                                <tbody>
                                  <tr>
                                    <td style="width:100px; text-align: center; " class="red">휴관일</td>
                                    <td style="width: 10px;"></td>							
                                    <td style="width:100px; text-align: center; " class="blue">행사</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div id='calendar'></div>
                            <!-- End Of the Real Contents-->
                        </div>
                    </div>
                </div>
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
          let calendarEl = document.getElementById('calendar');
              calendar = new FullCalendar.Calendar(calendarEl, {
              locale: 'ko', // the initial locale. of not specified, uses the first one
              initialView: 'dayGridMonth',
              events: data
          })
          
          calendar.render();
      
          });
      
            $("#calendar").on("click", ".fc-next-button", function(){
            console.log("dddd");
           })
      
           $("#calendar").on("click", ".fc-prev-button", function(){
            console.log("dddd");
           })
      
        function curDate(date){
              let yyyy = date.getFullYear();
              let mm = date.getMonth()+1;
              let dd = date.getDate();
              mm = mm > 10 ? mm:'0' + mm;
              dd = dd > 10 ? dd:'0' + dd;
              let dateString = yyyy+'-'+mm+'-'+dd
              return dateString;
      }
      </script>
</body>
</html>