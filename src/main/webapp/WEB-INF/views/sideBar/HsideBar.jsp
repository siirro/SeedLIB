<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div id="lnbNav" class="navArea">
  <h2> 홈페이지이용안내 </h2>
  <ul id="lnb" class="lnb">
    <li id="lnb1_2"><a href="/policy/siteMap" id="siteMap" class="haha">사이트맵</a> </li> 
    <li id="lnb1_3"><a href="/policy/personal" id="personal" class="haha">개인정보처리방침</a> </li> 
    <li id="lnb1_6"><a href="/policy/email" id="email" class="haha">이메일추출방지정책</a></li>
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