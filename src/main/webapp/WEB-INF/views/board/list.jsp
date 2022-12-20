<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
							<caption>도서관소식 : 번호, 제목, 첨부, 작성일, 조회수로 구성된 게시물 목록</caption>
							<colgroup>
								<col class="no mobileHide">
								
								
									<col class="lib">
								
								<col>
								
									<col class="attach mobileHide">
								
								<col class="date mobileHide">
								<col class="hits mobileHide">
							</colgroup>
							<thead>
								<tr>
								    <th scope="col" class="mobileHide">선택</th>
									<th scope="col" class="mobileHide">번호</th>
									<th scope="col" class="mobileHide">제목</th>
									<th scope="col" class="mobileHide">첨부</th>
									<th scope="col" class="mobileHide">작성일</th>
									<th scope="col" class="mobileHide">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="vo">
								<tr>
									<td><input type="checkbox"></td>
									<td>${vo.boardNum}</td>
									<td><a href="detail?boardNum=${vo.boardNum}">${vo.title}</a></td>
									<td> <img src="../../../../images/ico_attach.png"> </td>
									<td>${vo.regDate}</td>
									<td>${vo.hit}</td>
								</tr>	
						</c:forEach>
							</tbody>
							
						</table>	
				  <div>
					
					<!-- //게시판 목록 -->
					<div>
					<button type="button" class="btn btn-primary"><a href="./add"> 글쓰기</a></button>
					<span><button type="button" class="btn btn-denger">전체선택</button></span>
					<span><button type="button" class="btn btn-primary">삭제</button></span>
				</div>
					
					
					
					
					
					<!-- 페이징 -->
					<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				    <li class="page-item ${pager.pre?'':'disabled'}">
				      <a class="page-link" href="./list?page=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}">Previous</a>
				    </li>
					    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
							<li class="page-item"><a class="page-link" href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a> </li>
						</c:forEach>
					<li class="page-item ${pager.next?'':'disabled'}">
				      <a class="page-link" href="./list?page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">Next</a>
				    </li>
				  </ul>
			</nav>
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