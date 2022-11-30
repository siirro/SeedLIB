<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div id="lnbNav" class="navArea">
  <h2> 도서관소개 </h2>
  <ul id="lnb" class="lnb"> 
    <li id="lnb1_1"><a href="/info/bookStatus" class="haha" id="bookStatus">자료현황</a> </li> 
    <li id="lnb1_2"><a href="/info/facilityStatus" class="haha" id="facilityStatus">시설현황</a> </li> 
    <li id="lnb1_3"><a href="/info/organization" class="haha" id="organization">조직정보</a> </li> 
    <li id="lnb1_6"><a href="/info/law" class="haha" id="law">도서관관련법규</a> </li> 
    <li id="lnb1_7"><a href="/info/map" class="haha" id="map">찾아오시는길</a> </li> 
  </ul>
</div>

<script>
let url = window.location.href;

const haha = document.getElementsByClassName('haha');
for(let i=0;i<haha.length;i++){
    if(url.includes(haha[i].getAttribute("id"))) {
        haha[i].className += ' current';
        break;
    }
}
</script>