<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div id="lnbNav" class="navArea">
            <h2> 자료검색 </h2>
            <ul id="lnb" class="lnb"> 
          <li id="lnb1_1"><a href="/intro/menu/10003/program/30001/searchSimple.do" class="on">소장자료검색</a> 
           <ul class="MkSub submenu" style="display: none;"> 
            <li id="lnb1_1_1"><a href="/intro/menu/10003/program/30001/searchSimple.do">통합검색</a> </li> 
            <li id="lnb1_1_2"><a href="/intro/menu/10004/program/30002/searchDetail.do">고급검색</a> </li> 
           </ul> </li> 
          <li id="lnb1_2"><a href="/intro/menu/10005/program/30003/searchKdc.do">주제별검색</a> </li> 
          <li id="lnb1_3"><a href="/intro/menu/10006/program/30004/accessionBookList.do">신착자료검색</a> </li> 
          <li id="lnb1_6"><a href="/intro/menu/10012/program/30006/magazineList.do" class="on">정기간행물검색</a> 
           <ul class="MkTab submenu" style="display: none;"> 
            <li id="lnb1_6_1"><a href="/intro/menu/10012/program/30006/magazineList.do">잡지</a> </li> 
            <li id="lnb1_6_2"><a href="/intro/menu/10013/program/30007/newspaperList.do">신문</a> </li> 
           </ul> </li> 
          <li id="lnb1_7"><a href="/intro/menu/10015/contents/40002/contents.do" class="current on">비치희망도서신청</a> 
           <ul class="MkTab submenu" style="display: none;"> 
            <li id="lnb1_7_1"><a href="/intro/menu/10015/contents/40002/contents.do">신청안내</a> </li> 
            <li id="lnb1_7_2" class="choiced"><a href="/intro/menu/10016/program/30008/hopeBookSearch.do" class="current">신청하기</a> </li> 
           </ul> </li> 
         </ul>
        </div>