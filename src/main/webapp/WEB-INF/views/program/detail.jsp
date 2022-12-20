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
	                <h3>통합검색</h3>
	            </div>
	        </div>
	        <div id="contentGroup">
		        <c:import url="../sideBar/AsideBar.jsp"></c:import>
		        
		        <div id="contentcore">
		            <div class="naviandtitle">
		                <h3>통합검색</h3>
		                <div class="navi">
		                    <a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
		                    <i class="arrow"></i> 자료검색 <i class="arrow"></i>소장자료검색<i class="arrow"></i>통합검색
		                </div>
		            </div>
		    
		            <div id="contents" class="contentArea">
		            </div>
		        </div>
		    </div>
		</div>
	</div>