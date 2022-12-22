<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="/images/favicon.png">
    <title>제본 서비스 : 씨앗도서관 ☘️</title>
	<link rel="stylesheet" href="/css/admin/modal.css">
	<link rel="stylesheet" href="/css/admin/adcommon.css">
	<link rel="stylesheet" href="/css/admin/modalutil.css">
	<!-- header -->
	<c:import url="../temp/header.jsp"></c:import>
	<script defer src="/js/admin/modal.js"></script>
</head>
<body>
	<div id="container" class="sub">	
		<div class="sVisualWrap">
			<div class="sVisual">
				<h3>제본 서비스</h3>
			</div>
		</div>
		<div id="contentGroup">
			<c:import url="../sideBar/FsideBar.jsp"></c:import>
			<div id="contentcore">
				<div class="naviandtitle">
					<h3>제본 서비스</h3>
					<div class="navi">
						<a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i>마이페이지<i class="arrow"></i>제본 서비스
					</div>
				</div>
				<div id="contents" class="contentArea">
					<div id="popblackBG"></div>
					<!--Real Contents Start-->

					<!-- 바구니 제본 신청 서비스 안내 -->
					<br>
					<br>
					<!-- 테이블 시작 -->
					<div class="boardWrap">
						<table class="board-list">
							<thead>
								<tr>
									<th scope="col" class="mobileHide">번호</th>
									<th scope="col">도서 제목</th>
									<th scope="col" class="mobileHide">제본페이지수</th>
									<th scope="col">결제상태</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${not empty list}">
										<c:forEach items="${list.bookPrintVOs}" var="boPrintVO" varStatus="status">
											<input type="hidden" value="${boPrintVO.caNum}">
											<tr>
											   <td>${status.count}</td>
											   <td><a href="../book/detail?isbn=${boPrintVO.bookVO.isbn}">${boPrintVO.bookVO.title}</a></td>
											   <td>${boPrintVO.caTtPage}</td>
											   <c:choose>
											   		<c:when test="${boPrintVO.caStatus eq 'N'}">
											   			<td>결제하지않음</td>
											   		</c:when>
											   		<c:otherwise>
											   			<td>결제완료</td>
											   		</c:otherwise>
											   </c:choose>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td><p>제본서비스가 비어있습니다. 추가해주세요</p></td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					</div>
				</div>
				<!-- End Of the Real Contents 2 -->
			</div>
		</div>
	</div>		
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- footer -->
</body>
</html>