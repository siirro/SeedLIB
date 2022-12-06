<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


        <div id="lnbNav" class="navArea">
          <h2> 도서관안내 </h2>
          <ul id="lnb" class="lnb"> 
          <li id="lnb1_1"><a href="/guide/manners" id="/guide/manners" class="hhaha">도서관예절</a> </li>
          <li id="lnb1_2"><a href="/guide/time" id="/guide/time" class="hhaha">이용시간</a>
          <li id="lnb1_3"><a href="/guide/calendar" id="/guide/calendar" class="hhaha">휴관일안내</a> </li> 
          <li id="lnb1_4"><a href="/guide/rule" id="/guide/rule" class="hhaha">대여규칙</a>
          <li id="lnb1_5"><a href="/guide/convenience" id="/guide/convenience" class="hhaha">편의시설</a>

            <!-- class="current on" -->
        </li> 
        </ul>
      </div>
      
      <script>
          let Curl = window.location.href;

          const haha = document.getElementsByClassName('hhaha');
          for(let i=0;i<haha.length;i++){
              if(Curl.includes(haha[i].getAttribute("id"))) {
                console.log(haha[i].getAttribute("id"));
                  haha[i].className += ' current';
                  break;
              }
          }

       </script>
