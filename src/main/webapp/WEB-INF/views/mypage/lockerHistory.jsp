<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script
			src="https://code.jquery.com/jquery-3.3.1.min.js"
			integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
			crossorigin="anonymous">
	</script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
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
<title>사물함 대여 조회 : 씨앗도서관 ☘️ </title>
</head>
<body>
	<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
<div id="container" class="sub">	
	<div class="sVisualWrap">
	<div class="sVisual">
		<h3>신청하기</h3>
	</div>
	</div>
<div id="contentGroup">
	<c:import url="../sideBar/FsideBar.jsp"></c:import>

<div id="contentcore">
<div class="naviandtitle">
	<h3>사물함 대여 조회</h3>
	<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 마이페이지 <i class="arrow"></i>사물함 대여 조회</div>
</div>
<div id="contents" class="contentArea">


<div id="popblackBG"></div>
					<!--Real Contents Start-->
					<!-- 게시판 목록 -->
					<div class="articleWrap">
						<ul class="article-list reserve">
							<c:choose>
								<c:when test="${not empty locker}">
								 <!-- <li>신청한 희망 도서는 ${hlist.size()} 권입니다</li> -->
								</c:when>
								<c:when test="${empty locker}">
									<c:choose>
										<c:when test="${not empty pager.searchKeyword}">
								 			<li>[${pager.searchKeyword}] 의 검색 결과가 없습니다</li>
										</c:when>
										<c:when test="${empty pager.searchKeyword}">
								 			<li style="text-align: center;">사물함 대여 내역이 없습니다</li>
										</c:when>
									</c:choose>		
								</c:when>
							</c:choose>
							<c:forEach items="${locker}" var="list">	
								<li>
									<input type="hidden" id="merchant_uid${list.lockerNum}" merchant_uid="${list.merchant_uid}">
									<p class="title">사물함 번호: ${list.lockerNum}</p>
									<ul class="info">
										<li>
											<span id="amount${list.lockerNum}" amount="${list.amount}">결제 금액: ${list.amount}</span>
										</li>
										<li>
											<span id="stDate${list.lockerNum}" stDate="${list.stDate}">대여 시작일: ${list.stDate}</span>
											<span id="enDate${list.lockerNum}" enDate="${list.enDate}">대여 종료일: ${list.enDate}</span>
											<c:choose>	
												<c:when test="${list.rentStat eq 0}">
													<span>대여 상태: 대여 중</span>
												</c:when>
												<c:when test="${list.rentStat eq 1}">
													<span>대여 상태: 대여 종료</span>
												</c:when>
											</c:choose>
										</li>
										<c:if test="${list.rentStat eq 0}">
											<li class="status"><button class="cncl" data-num-cncl="${list.lockerNum}">환불 요청</button></li>
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
</div>		
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->
		<script src="/js/lockerList.js"></script>
</body>
</html>