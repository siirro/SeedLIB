<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <link rel="icon" href="/images/favicon.png">
	<title>자주하는질문 : 씨앗도서관 ☘️ </title>
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/sub.css"> 
	<c:import url="../temp/header.jsp"></c:import>

</head>
<body>

<div id="container" class="sub">
		
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>자주하는질문</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
		<c:import url="../sideBar/EsideBar.jsp"></c:import>


</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>자주하는질문</h3>
	<div class="navi"><a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 이용안내 <i class="arrow"></i>자주하는질문</div>
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

				<div>
				
					<ul class="faqList">
						<c:forEach items="${list}" var="qna">
									
									<li class="q1">
										<div class="q">
											<span class="ico themeBG">Q</span>
											<input type="hidden" value="${qna.qnaNum}">
											<p><a href="#faq" title="축소됨">${qna.title}</a></p>
										</div>
										
									
										<div class="a" tabindex="0" style="display: none;">
											<span class="ico themeBG1">A</span>
											<p><a href="#faq" title="내용">${qna.contents}</a></p> 
											</div>
							
								        </li>
								</c:forEach>        
								        
					</ul>
						
				</div>		
				
					
					<div class="add">
					<button type="button" class="btn btn-primary"><a href="./add"> 글쓰기</a></button>
					</div>
					
					
					<!-- 페이징 -->
					<div class="pagingWrap">
						
							<p class="paging">
								<span class="current">1</span>
<a href="javascript:fnList(2);">2</a>
<a href="javascript:fnList(3);">3</a>
<a href="javascript:fnList(4);">4</a>
<a href="javascript:fnList(5);">5</a>


							</p>
						
					</div>
					<!-- //페이징 -->

					<!-- End Of the Real Contents-->

				</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>

<script src="/js/qna.js"></script>

</body>
</html>