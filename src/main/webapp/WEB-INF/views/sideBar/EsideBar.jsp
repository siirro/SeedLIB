<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div id="lnbNav" class="navArea">
    <h2> 도서관소식 </h2>
    <ul id="lnb" class="lnb"> 
    <li id="lnb1_1"><a href="/board/list" class="on">공지사항</a> </li>
    <li id="lnb1_2"><a href="/qna/list" id="hopeInfo" class="">자주하는질문</a>


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