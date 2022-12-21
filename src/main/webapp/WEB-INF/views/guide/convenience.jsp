<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/sub.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/layout.css">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
 
 <link rel="shortcut icon" href="/images/favicon.png">
    <title>편의시설 : 씨앗도서관 ☘</title>
</head>
<body>
 <div class="wrap">
     <!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
     <!-- header -->
     
     <div id="container" class="sub">
		
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>편의시설</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	<c:import url="../sideBar/CsideBar.jsp"></c:import>

</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>편의시설</h3>
	<div class="navi"><a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 이용안내 <i class="arrow"></i>도서관이용안내<i class="arrow"></i>편의시설</div>
	
</div>

				<div id="contents" class="contentArea">
					

<!--Forced tab Show Que-->

<div id="popblackBG"></div>

					<!--Real Contents Start-->
					<!-- 이용안내_도서관이용안내_편의시설 -->
<h4 class="htitle"><span class="themeFC">무인</span> 반납기</h4>

<ul class="dot-list">
	<li>자료실 운영시간 이후에 도서를 반납할 수 있는 이용자편의 서비스</li>
	<li><span>설치장소</span> : 도서관 현관</li>
</ul>
&nbsp;

<h4 class="htitle"><span class="themeFC">자료</span>복사 및 출력</h4>

<div class="tblWrap">
<table class="tbl">
	<caption>자료복사 및 출력 안내</caption>
	<colgroup>
		<col style="width: 20%;">
		<col>
	</colgroup>
	<tbody>
		
		<tr>
			<th scope="row">흑백</th>
			<td class="ta_l">
			<ul class="dash-list">
				<li>A5 : 60원</li>
				<li>A4 : 70원</li>
			</ul>
			</td>
		</tr>
		<tr>
			<th scope="row">컬러</th>
			<td class="ta_l">
			<ul class="dash-list">
				<li>A5 : 400원</li>
				<li>A4 : 500원</li>
			</ul>
			</td>
		</tr>
		<tr>
			<th scope="row">고서</th>
			<td class="ta_l">
			<ul class="dash-list">
				<li>A5 : 100원</li>
				<li>A4 : 120원</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>
</div>



                                     


					<!-- End Of the Real Contents-->

				</div>
			</div>
		</div>
	</div>
     
     
    
</div>
        
        


        <!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->

</body>
</html>