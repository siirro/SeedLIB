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
<title>도서 기증 신청 조회 : 씨앗도서관 ☘️ </title>
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
	<h3>도서기증신청조회</h3>
	<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 마이페이지 <i class="arrow"></i>도서기증신청조회</div>
</div>
<div id="contents" class="contentArea">


<div id="popblackBG"></div>
					<!--Real Contents Start-->
					<form action="../mypage/donList" method="GET">
						<input type="hidden" id="userName" name="userName" value="${memberVO.userName}">
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
								<c:when test="${not empty dlist}">
								 <!-- <li>신청한 희망 도서는 ${hlist.size()} 권입니다</li> -->
								</c:when>
								<c:when test="${empty dlist}">
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
							<c:forEach items="${dlist}" var="list">	
								<li>
									<p class="title">${list.donTitle}</p>
									<ul class="info">
										<li>
											<span>저자: ${list.donWriter}</span>
											<span>발행처: ${list.donPublisher}</span>
										</li>
										<li>
											<span>신청도서관: ${list.libVO.libName}</span>
											<span>신청일: ${list.donDate}</span>
											<span>신청상태: ${list.statusVO.statName}</span>
										</li>
									</ul>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- //게시판 목록 -->
					<!-- 페이징 -->
					<c:if test="${not empty dlist}">
                        <div class="pagingWrap">
                            <p class="paging">
                                <a href="./donList?libNum=${pager.libNum}&searchKeyword=${pager.searchKeyword}&page=${pager.startNum-1}" class="btn-paging prev ${pager.pre?'':'disabledLink'}"><span class="blind">이전 3개 보기</span></a>
                                <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                    <a href="./donList?libNum=${pager.libNum}&searchKeyword=${pager.searchKeyword}&page=${i}" id="ppaaggee${i}">${i}</a>
                                </c:forEach>
                                <a href="./donList?libNum=${pager.libNum}&searchKeyword=${pager.searchKeyword}&page=${pager.lastNum+1}" class="btn-paging next ${pager.next?'':'disabledLink'}"><span class="blind">다음 3개 보기</span></a>
                            </p>
                        </div>
                        </c:if>
					<!-- //페이징 -->
					<!-- End Of the Real Contents-->
				</div>
			</div>
		</div>	
</div>		
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->
		<script src="/js/donList.js"></script>
		<script>
			try {
				// 페이징 활성화 
					// 화살표들 disabledLink 클래스 걸려있으면 누를수없게 a태그에서 href 속성을 삭제시킴
					let disables = document.querySelectorAll(".disabledLink")
					disables.forEach(element => {
						element.removeAttribute('href');
					});

					let urll = window.location.href;
					let urlnn = urll.lastIndexOf('=')+1;
					urllastt = urll.substring(urlnn);

					//파라미터로 받은 페이지 번호에 해당하는 id를 찾아서 걔를 초록색으로 바꿈.
					let ppaaggee = document.querySelector('#'+"ppaaggee"+'${pager.page}');

					ppaaggee.style.background="#9be15d";
					ppaaggee.style.color="#fff";
				// 페이징 활성화 
				
			} catch (error) {
				
			}
		</script>
</body>
</html>