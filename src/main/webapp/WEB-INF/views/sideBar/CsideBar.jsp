<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


        <div id="lnbNav" class="navArea">
          <h2> 도서관안내 </h2>
          <ul id="lnb" class="lnb"> 
          <li id="lnb1_1"><a href="/guide/manners" class="current on">도서관예절</a> </li>
          <li id="lnb1_2"><a href="/guide/time"  class="time on">이용시간</a>
          <li id="lnb1_3"><a href="/guide/calendar" class="calendar on">휴관일안내</a> </li> 
          <li id="lnb1_4"><a href="/guide/rule"  class="rule on">대여규칙</a>
          <li id="lnb1_5"><a href="/guide/convenience"  class="convenience on">편의시설</a>

            <!-- class="current on" -->
        </li> 
        </ul>
      </div>
      
      <script>
        let link = document.location.href; 
        if(link.indexOf("?")==-1){
          link = link.substr(link.lastIndexOf("/")+1);
        }else{
          link = link.substring(link.lastIndexOf("/")+1,link.lastIndexOf("?"));
        }
        let compareLink = document.querySelector('.'+link);
          compareLink.className += " current";
        function change(link){
          link = '"#'+link+'"';
          $(link).className.add("cuttent ");
        }

       </script>