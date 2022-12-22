<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div id="lnbNav" class="navArea">
            <h2> 마이페이지 </h2>
            <ul id="lnb" class="lnb"> 
          <li id="lnb1_1"><a href="/mypage/myIndex" class="myIndex on">나의정보</a> 
          <li id="lnb1_18"><a href="/mypage/book/loan" class="loan on">도서이용정보</a> 
            <ul class="MkSub submenu" style="display: block;"> 
              <li id="lnb1_1_1"><a href="/mypage/book/loan">대출반납조회</a> </li> 
              <li id="lnb1_1_1"><a href="/mypage/book/reservation">예약도서조회</a> </li> 
              <li id="lnb1_1_2"><a href="/mypage/book/mutual">상호대차조회</a> </li>
              <li id="lnb1_1_3"><a href="/shelf/list">책꽂이</a> </li> 
              <li id="lnb1_5"><a href="/mypage/hopeList" id="hopeList" class="hopeList on">희망도서신청조회</a> </li> 
              <li id="lnb1_6"><a href="/mypage/donList" id="donList" class="donList on">도서기증신청조회</a></li> 
            </ul> 
          </li> 
          <li id="lnb1_6"><a href="/mypage/seatHistory" id="seatHistory" class="seatHistory on">열람실 이용 내역</a></li> 
          <li id="lnb1_7"><a href="/mypage/lockerHistory" id="lockerHistory" class="lockerHistory on">사물함 대여 조회</a></li> 
          <li id="lnb1_8"><a href="/intro/menu/10015/contents/40002/contents.do" class="on">문화행사신청조회</a></li> 
          <li id="lnb1_8"><a href="/print/boCart" class="boCart on">제본 서비스</a></li> 
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