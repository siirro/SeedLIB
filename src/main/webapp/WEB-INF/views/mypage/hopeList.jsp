<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<style>
		#searchBtn{
			width: 20%; 
			background-color: transparent;
		}

		.cncl{
			color: #666;
			background-color: #e9e9e9;
			border: 1px solid #e9e9e9;
			font-size: 1.063em;
			min-width: 110px;
			padding: 6px 15px;
		}
	</style>
<title>희망 도서 신청 조회</title>
</head>
<body>
	<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>

<div id="contentGroup">
	<c:import url="../sideBar/FsideBar.jsp"></c:import>

<div id="contentcore">
<div class="naviandtitle">
	<h3>희망도서신청조회</h3>
	<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 마이페이지 <i class="arrow"></i>희망도서신청조회</div>
</div>
<div id="contents" class="contentArea">


<div id="popblackBG"></div>
					<!--Real Contents Start-->
					<form action="../mypage/hopeList" method="GET">
						<input type="hidden" id="userName" name="userName" value="id1">
						<fieldset>
							<legend class="blind">게시글 검색 영역</legend>
							<!-- 게시판 검색 -->
							<div class="pageSearch">
								<div class="schForm" style="display: flex;">
									<select name="libNum" id="libNum" class="schSel">
										<option value="%" selected>도서관 전체</option>
										<option value="0">씨앗도서관</option>
										<option value="1">새싹도서관</option>
										<option value="2">쑥쑥도서관</option>
										<option value="3">새봄도서관</option>
										<option value="4">도란도란도서관</option>
										<option value="5">뿌리도서관</option>		
									</select>
									<select name="searchType" id="searchType" title="검색방법 선택" class="schSel1">
										<option value="0" selected>도서명</option>
										<option value="1">저자</option>
										<option value="2">발행처</option>
									</select>
									<input hidden="hidden">
									<input type="text" name="searchKeyword" id="searchKeyword" onkeyup="enterkey()" value="" title="검색어 입력" class="schKwd2" placeholder="검색어를 입력해 주세요">
									<button id="searchBtn" class="btn input"><img src="/images/search.png"></button>
								</div>
							</div>
							<!-- //게시판 검색 -->
						</fieldset>
					</form>
					<!-- 게시판 목록 -->
					<div class="articleWrap">
						<ul class="article-list reserve">
							<c:choose>
								<c:when test="${not empty hlist}">
								 <!-- <li>신청한 희망 도서는 ${hlist.size()} 권입니다</li> -->
								</c:when>
								<c:when test="${empty hlist}">
									<c:choose>
										<c:when test="${not empty pager.searchKeyword}">
								 			<li>[${pager.searchKeyword}] 의 검색 결과가 없습니다</li>
										</c:when>
										<c:when test="${empty pager.searchKeyword}">
								 			<li style="text-align: center;">신청한 희망 도서가 없습니다</li>
										</c:when>
									</c:choose>		
								</c:when>
							</c:choose>
							<c:forEach items="${hlist}" var="list">	
								<li>
									<p class="title">${list.hopTitle}</p>
									<ul class="info">
										<li>
											<span>저자: ${list.hopWriter}</span>
											<span>발행처: ${list.hopPublisher}</span>
										</li>
										<li>
											<span>신청도서관: ${list.libVO.libName}</span>
											<span>신청일: ${list.hopDate}</span>
											<span>신청상태: ${list.statusVO.statName}</span>
										</li>
										<c:if test="${list.statusVO.statName eq '신청 중'}">
											<li class="status"><button class="cncl" data-num-cncl="${list.hopNum}">신청취소</button></li>
										</c:if>										
									</ul>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- //게시판 목록 -->
					<!-- 페이징 -->
					<div class="pagingWrap">
						<div class="pagination">
						</div>
					</div>
					<!-- //페이징 -->
					<!-- End Of the Real Contents-->
				</div>
			</div>
		</div>	
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->
		<script src="/js/hopeList.js"></script>
</body>
</html>