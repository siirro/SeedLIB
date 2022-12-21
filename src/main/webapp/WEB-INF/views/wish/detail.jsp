<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" href="/images/favicon.png">
<title> 도서관에바란다 : 씨앗도서관 ☘️ </title>
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/sub.css"> 
	<c:import url="../temp/header.jsp"></c:import>

</head>
<body>
<div id="container" class="sub">
		
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>도서관에바란다</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	<c:import url="../sideBar/EsideBar.jsp"></c:import>

</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>도서관에바란다</h3>
	<div class="navi"><a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 이용안내 <i class="arrow"></i>도서관에바란다</div>
	
</div>


				<div id="contents" class="contentArea">


<div id="popblackBG"></div>
					<!--Real Contents Start-->

					<h4 class="htitle">문의글</h4>
					<!-- 게시글 상세화면 -->
					<div class="boardWrap">
						<table class="board-view">
							<caption>묻고답하기 상세화면</caption>
							<colgroup>
								<col style="width:20%">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">제목</th>
									<td>${wishVO.title }</td>
								</tr>
								<tr>
									<th scope="row">작성자</th>
									<td>
										${wishVO.writer}
									</td>
								</tr>
								<tr>
									<th scope="row">작성일</th>
									<td>${wishVO.regDate }</td>
								</tr>
								

								

								<tr>
									<td colspan="2" class="content">
										${wishVO.contents }
										</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //게시글 상세화면 -->

					<h4 class="htitle">답변</h4>
					<!-- 게시글 답변 -->
					<div class="boardWrap">
						<table class="board-view">
							<caption>질문에 대한 답변</caption>
							<colgroup>
								<col style="width:20%">
								<col>
							</colgroup>
							<tbody>
								
										<tr>
											<th scope="row">답변자</th>
											<td>관리자</td>
										</tr>
										<tr>
											<th scope="row">답변일</th>
											<td>2022-10-20 14:10</td>
										</tr>
										<tr>
											<td colspan="2" class="content">○ 도서관 이용에 불편을 드려 죄송합니다.<br>
<br>
○ 도서 검색 관련 서버 장애로 인해 홈페이지 대출 현황, 상호대차 서비스 등에 오류가<br>
&nbsp; &nbsp; 발생했습니다.<br>
<br>
○ 10.19일 오전 장애 조치를 완료하여 현재 관련 서비스가 정상 작동함을 알려드립니다.<br>
<br>
○ 답변 내용에 대해 더 궁금하신 사항은 석수도서관 (☎031-8045-6127)로 연락주시면<br>
&nbsp; &nbsp; 친절히 답변드리겠습니다. 감사합니다.</td>
										</tr>
									
							</tbody>
						</table>
					</div>
					<!-- //게시글 답변 -->
					<div class="btnGroup">
						<a href="#none" id="listBtn" class="btn list">목록</a>
						
					</div>

					<!-- End Of the Real Contents-->
				</div>
			</div>
		</div>
	</div>
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>