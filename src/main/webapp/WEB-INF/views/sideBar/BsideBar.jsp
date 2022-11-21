<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div id="lnbNav" class="navArea">
            <h2> 문화 참여 </h2>
            <ul id="lnb" class="lnb"> 
	          <li id="lnb1_1"><a href="" class="on">문화행사신청</a> </li>
	          <li id="lnb1_2"><a href="/hope/hopeInfo" id="hopeInfo" class="hopeInfo on">희망도서신청</a>
	          <li id="lnb1_3"><a href="/donation/donInfo" id="donInfo" class="donInfo setDon on">소장도서기증</a> </li> 
	          <li id="lnb1_4"><a href="/studyroom/roomInfo" id="roomInfo" class="roomInfo on">열람실 조회/예약</a>
	          <!-- class="current on" -->
		      </li> 
	        </ul>
        </div>
        
        <script>
        	let link = document.location.href; 
        	link = link.substr(link.lastIndexOf("/")+1);
			let compareLink = document.querySelector('.'+link);
   	   		compareLink.className += " current";

         </script>