<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/images/favicon.png">
    <title>문화행사 : 씨앗도서관 ☘</title>
</head>

<body>
	<div id="wrap">
    	<c:import url="../temp/header.jsp"></c:import>

	    <div id="container" class="sub">
			
	        <div class="sVisualWrap">
	            <div class="sVisual">
	                <h3>문화행사 신청</h3>
	            </div>
	        </div>
	        <div id="contentGroup">
		        <c:import url="../sideBar/BsideBar.jsp"></c:import>
		        
		        <div id="contentcore">
		            <div class="naviandtitle">
		                <h3>문화행사 신청</h3>
		                <div class="navi">
		                    <a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
		                    <i class="arrow"></i> 문화행사/참여 <i class="arrow"></i>문화행사 신청
		                </div>
		            </div>
		    
		            <div id="contents" class="contentArea">
		            	${li}
		            </div>
		            
		            <div>
		            	<c:if test="${not empty li}">
	                        <div class="pagingWrap">
	                            <!-- <input type="hidden" name="page" value="${pager.page}"> -->
	                            <p class="paging">
	                                <a href="?select=${pager.select}&search=${pager.search}&kind=${pager.kind}&page=1" class="btn-paging first ${pager.page eq 1?'disabledLink':''}"><span class="blind">맨 첫 페이지로 가기</span></a>
	                                
	                                <a href="?select=${pager.select}&search=${pager.search}&kind=${pager.kind}&page=${pager.startNum-1}" class="btn-paging prev ${pager.page eq 1?'disabledLink':''}"><span class="blind">이전 10개 보기</span></a>
	                                
	                                <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	                                    <!-- <span class="current">1</span> -->
	                                    <a href="?search=${pager.search}&kind=${pager.kind}&page=${i}" id="ppaaggee${i}">${i}</a>
	                                    
	                                </c:forEach>
	                                <a href="?search=${pager.search}&kind=${pager.kind}&page=${pager.lastNum+1}" class="btn-paging next ${pager.next?'':'disabledLink'}"><span class="blind">다음 10개 보기</span></a>
	                                <a href="?search=${pager.search}&kind=${pager.kind}&page=${pager.totalPage1}" class="btn-paging last ${pager.page eq pager.totalPage1?'disabledLink':''}"><span class="blind">맨 마지막 페이지로 가기</span></a>
	                                </p>
	                        </div>
                        </c:if>
		            </div>
		        </div>
		    </div>
		</div>
	</div>