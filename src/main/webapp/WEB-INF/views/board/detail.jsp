<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="shortcut icon" href="/images/favicon.png">
<title> 도서관소식 : 씨앗도서관 ☘️ </title>
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/sub.css"> 

</head>
<body>

<div id="wrap">
<!-- header  -->
<c:import url="../temp/header.jsp"></c:import>


<div id="container" class="sub">
		
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>도서관소식</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	   <c:import url="../sideBar/EsideBar.jsp"></c:import>
	
</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>공지사항</h3>
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
					<!-- 게시글 상세화면 -->
					<div class="boardWrap">
					
					<div>
					<sec:authorize access="hasRole('ADMIN')">
					<button type="button" id="update" class="btn btn-primary"><a href="./update?boardNum=${board.boardNum}">글수정</a></button>
					<button type="button" id="delete" class="btn btn-primary"><a href="./delete?boardNum=${board.boardNum}">글삭제</a></button>
					</sec:authorize>
					 </div>		
						<table class="board-view">
							<caption>도서관소식 상세화면 : 제목, 작성일, 조회수, 첨부파일, 내용으로 구성</caption>
							<colgroup>
							<col style="width:20%">
							<col>
							</colgroup>
							<tbody>
							
								<tr>
									<th scope="row">제목</th>
									<td>${board.title}</td>
								</tr>
								
								<tr>
									<th scope="row">작성자</th>
								<td>${board.writer}</td>
									
								
								</tr>
						
						
								<tr>
									<th scope="row">작성일</th>
									<td>${board.regDate}</td>
								</tr>
								
								<tr>
									<th scope="row">조회수</th>
									<td>${board.hit}</td>
								</tr>
								
								
								
									<tr>
										<th scope="row">첨부파일</th>
										 <c:choose>
										
										 <c:when test="${not empty board}">
										<td>
                     					 <c:forEach items="${board.boardFileVOs}" var="files">
										
                          				  <span class="material-symbols-outlined">
                                          <a href="/fileDown/qna/?fileNum=${files.fileNum}"></span>
                                            ${files.oriName}</a>					
										
										 </c:forEach>
										</td>
										</c:when>
											<c:otherwise>
												<td>
			                    				<input type="text" readonly value="없음">
		                   						</td>
		                   					</c:otherwise>
									 </c:choose>
										
									</tr>
								<tr>
									<td colspan="2" class="content">
									
								   <strong> ${board.contents} </strong>

									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //게시글 상세화면 -->

					<div class="openInfo">
						<dl>
							<dt><img src="../../../../images/public.jpg" alt="open 공공누리 공공저작물 자유이용허락"></dt>
							<dd>본 공공저작물은 "공공누리" <strong>제 4유형 : 출처표시 + 상업적 이용금지 + 변경금지</strong> 조건에 따라 이용 할 수 있습니다.</dd>
						</dl>
					</div>

					<div class="btnGroup">
						<a href="/board/list" id="listBtn" class="btn list">목록</a>
					</div>
					

					<!-- End Of the Real Contents-->
				</div>
			</div>
		</div>
	</div>


<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>

</div>


</body>
</html>