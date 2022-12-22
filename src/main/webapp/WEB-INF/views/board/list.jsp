<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" href="/images/favicon.png">
	<title>도서관소식 : 씨앗도서관 ☘️ </title>
	<c:import url="../temp/header.jsp"></c:import>
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/sub.css"> 

</head>
<body>

<div id="wrap">

<div id="container" class="sub">
		
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>공지사항</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	<c:import url="../sideBar/EsideBar.jsp"></c:import>

</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>도서관소식</h3>
	<div class="navi"><a href="/intro/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 도서관소식 <i class="arrow"></i>공지사항</div>
</div>


<div id="contents" class="contentArea">
					
<!--Forced tab Show Que-->
<div class="ttabWrap">
	<div id="virtSelect"><a href="#script">탭메뉴</a></div>
	<ul id="ttab3" class="tnb clearfix">
		<li class="ttabLast"></li>
	</ul>
</div>
<!--Forced tab Show Que-->

<div id="popblackBG"></div>
					<!--Real Contents Start-->

					

					

					<!-- 게시판 검색 -->
					<form name="searchForm" id="searchForm" method="get">
					<fieldset>
						<legend class="blind">게시글 검색 영역</legend>
						<div class="pageSearch">
							<div class="schForm">
								
					
								<select name="kind" id="searchCondition" title="검색방법 선택" class="schSel1">
									<option value="title">제목</option>
									<option value="contents">내용</option>
								</select>
								
								<input type="text" name="search" id="searchKeyword" value="" title="검색어 입력" class="schKwd" placeholder="검색어 입력">
								<button type="button" class="btn input" id="searchBtn"> 검색</button>
							</div>
						</div>
					</fieldset>
					</form>
					<!-- //게시판 검색 -->

					<!-- 게시판 목록 -->
					<div class="boardWrap">
						<table class="board-list">

							<caption>도서관소식 : 번호, 제목, 작성일, 조회수로 구성된 게시물 목록</caption>
							<thead>
				
								<tr>
									<th scope="col" style="width: 10%;">번호</th>
									<th scope="col" style="width: 60%;">제목</th>
									<th scope="col" style="width: 20%;">작성일</th>
									<th scope="col" style="width: 10%;">조회수</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="vo">
								<tr>
									<td>${vo.boardNum}</td>
									<td><a href="detail?boardNum=${vo.boardNum}">${vo.title}</a></td>
									<td>${vo.regDate}</td>
									<td>${vo.hit}</td>
								</tr>	
						</c:forEach>
							</tbody>
							
						</table>	
				  <div>
					
					<!-- //게시판 목록 -->
					
					
					
					

					
					<!-- 페이징 -->
					<div class="pagingWrap">
						
							<p class="paging">
								<a href="javascript:fnList(1);" class="btn-paging first"><span class="blind">맨 첫 페이지로 가기</span></a>
<a href="javascript:fnList(1);" class="btn-paging prev"><span class="blind">이전 10개 보기</span></a>
<span class="current">1</span>
<a href="javascript:fnList(11);" class="btn-paging next"><span class="blind">다음 10개 보기</span></a>
<a href="javascript:fnList(216);" class="btn-paging last"><span class="blind">맨 마지막 페이지로 가기</span></a>


							</p>
						
						<sec:authorize access="hasRole('ADMIN')">
						<a href="./add" id="registBtn" class="btn write themeBtn">글쓰기</a>
						</sec:authorize>
					</div>
					<!-- //페이징 -->

					<!-- End Of the Real Contents-->

				</div>
			</div>
		</div>
	</div>


</div>

</div>

<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
</div>
</body>
</html>