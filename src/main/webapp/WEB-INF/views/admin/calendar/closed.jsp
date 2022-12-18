<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    <link rel="shortcut icon" href="/images/favicon.png">

    <title>뿌리깊은 관리자 : 씨앗도서관 ☘</title>

    <!-- ========== All CSS files linkup & sidebar ========= -->
    <c:import url="../temp/sidebar-css.jsp"></c:import>
    <style>
          .pagination{
        display: flex;
        flex-direction: column;
        margin-bottom: 40px;
        align-items: center;
    }

    .pagDiv{
        width: 700px;
    }

    
    .pageList {
        list-style:none;
        padding-left:0px;
        width: 500px;
        margin-left: auto;
        /* margin-right: auto; */
    }

    .pageSet{
        float: left;
        margin-left: 10px;
        margin-right: 10px;
    }

    #pageNext{
        width: 30px;
        /* background-color: #77af9c;
        color: #d7fff1; */
        color: #0cc086;

    }

    #pagePre{
        width: 30px;
        color: #0cc086;
    }

    .aplBtn{
        position: absolute;
        right: 0;
        bottom: 0;
        padding: 3px 15px;
        background-color: #06e3ab;
        color: #f3fefa;
    }

    </style>
<!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  </head>
  <body>
    <!-- ======== main-wrapper start =========== -->
    <main class="main-wrapper">
    
      <!-- ========== header start ========== -->
      <c:import url="../temp/header.jsp"></c:import>
      <!-- ========== header end ========== -->

      <!-- ========== card components start ========== -->
      <section class="card-components">
        <div class="container-fluid">
          <!-- ========== title-wrapper start ========== -->
          <div class="title-wrapper pt-30">
            <div class="row align-items-center">
              <div class="col-md-6">
                <div class="title mb-30">
                  <h2>휴관일 등록</h2>
                </div>
              </div>
              <!-- end col -->
              <div class="col-md-6">
                <div class="breadcrumb-wrapper mb-30">
                  <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                      <li class="breadcrumb-item">
                        <a href="../main">관리자 페이지 메인</a>
                      </li>
                      <li class="breadcrumb-item">
                        <a href="./boList">일정 관리</a>
                      </li>
                      <li class="breadcrumb-item active" aria-current="page">
                        휴관일 등록
                      </li>
                    </ol>
                  </nav>
                </div>
              </div>
              <!-- end col -->
            </div>
            <!-- end row -->
          </div>
          <!-- ========== title-wrapper end ========== -->

          <!-- ========== cards-styles start ========== -->
          <div class="cards-styles">
            <!-- ========= card-style-2 start ========= -->
            <div class="row" style="justify-content: center;">
              <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6" style="width:70%;">
                <div class="card-style-2 mb-30" style="width:100%;">
                  <div>
                      <!--Real Contents Start-->
                      <div id='calendar'></div>
                      <!-- End Of the Real Contents-->
                      </div>
                              </div>
                          </div>
                  </div>
                </div>
                </div>
              </div>
              <!-- end col -->
            </div>
            <!-- ========= card-style-2 end ========= -->
          </div>
          <!-- ========== cards-styles end ========== -->
        </div>
        <!-- end container -->
      </section>
      <!-- ========== card components end ========== -->

      <!-- ========== footer start =========== -->
      <c:import url="../temp/footer.jsp"></c:import>
      <!-- ========== footer end =========== -->
      
    </main>
    <!-- ======== main-wrapper end =========== -->

    <!-- ========= All Javascript files linkup ======== -->
    <c:import url="../temp/js.jsp"></c:import>
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
  </body>
</html>