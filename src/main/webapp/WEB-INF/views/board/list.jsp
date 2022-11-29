<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		<h3>공지사항</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	<h2> 도서관소식 </h2>
	<ul id="lnb" class="lnb"> 
  <li id="lnb4_1"><a href="/board/list" class="current">공지사항</a> </li> 
  <li id="lnb4_2"><a href="#">자주하는질문</a> </li> 
  <li id="lnb4_3"><a href="#">도서관에게바란다</a> 
  <li id="lnb4_3"><a href="#" >자유게시판</a> 
  <li id="lnb4_3"><a href="#" >분실물센터</a> 
 
 </ul>
</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>도서관소식</h3>
	<div class="navi"><a href="/intro/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 도서관소식 <i class="arrow"></i>공지사항</div>
	<div class="snsFarm">
		<ul class="snsBtnArea clearfix">
			<li>
				<a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
				<div id="snsGroup" class="snsList clearfix">
					<a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
					<a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
					<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/intro/menu/10037/bbs/20001/bbsPostList.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
					<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/intro/menu/10037/bbs/20001/bbsPostList.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
					<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/intro/menu/10037/bbs/20001/bbsPostList.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
				</div>
			</li>
			<li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('intro'); return false;"><span class="blind">현재화면 프린트</span></a></li>
		</ul>
	</div>
</div>

<!-- 레이어팝업 -->
<div class="chart-pop chartSns" tabindex="0" data-tooltip-con="chartSns" data-focus="chartSns" data-focus-prev="chartSns-close">
	<div class="layer-content">
		<h4>QR코드</h4>
		<div class="layer-content">
			<div class="conTxt ta_c" id="qrcodeImg"></div>
			<div class="conTxt">
				<p>QR코드 이미지 저장</p>
				QR코드 &gt; 우측 클릭 &gt; 저장 &gt; 확장자 변경(png, jpg) 후 저장
			</div>
		</div>
		<a href="#close" class="chart-close01 tooltip-close" data-focus="chartSns-close" data-focus-next="chartSns"><span class="blind">닫기</span></a>
	</div>
</div>
<!-- //레이어팝업 -->

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
								
									<select name="manageCd" id="manageCd" title="도서관 선택" class="schSel">
										<option value="ALL">전체도서관</option>
										
											<option value="MA">새싹도서관</option>
										
											<option value="MI">쑥쑥도서관</option>
										
											<option value="MH">새봄도서관</option>
										
											<option value="ME">도란도란도서관</option>
										
											<option value="MB">나무도서관</option>
										
									</select>
								
								
								<select name="searchCondition" id="searchCondition" title="검색방법 선택" class="schSel1">
									<option value="title">제목</option>
									<option value="contents">내용</option>
								</select>
								<input type="text" name="searchKeyword" id="searchKeyword" value="" title="검색어 입력" class="schKwd" placeholder="검색어 입력">
								<a href="#link" id="searchBtn" class="btn input">검색</a>
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
									<th scope="col" class="mobileHide">번호</th>

									
									<th scope="col" class="mobileHide">제목</th>
										<th scope="col" class="mobileHide">첨부</th>
									<th scope="col" class="mobileHide">작성자</th>
									<th scope="col" class="mobileHide">작성일</th>
									<th scope="col" class="mobileHide">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="vo">
								<tr>
									<td>${vo.boardNum}</td>
									<td><a href="detail?boardNum=${vo.boardNum}">${vo.title}</a></td>
									
									<td> <img src="../../../../images/ico_attach.png"> </td>
									<td>${vo.writer}</td>
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
								<a href="javascript:fnList(2);">2</a>
								<a href="javascript:fnList(3);">3</a>
								<a href="javascript:fnList(4);">4</a>
								<a href="javascript:fnList(5);">5</a>
								<a href="javascript:fnList(6);">6</a>
								<a href="javascript:fnList(7);">7</a>
								<a href="javascript:fnList(8);">8</a>
								<a href="javascript:fnList(9);">9</a>
								<a href="javascript:fnList(10);">10</a>
								<a href="javascript:fnList(11);" class="btn-paging next"><span class="blind">다음 10개 보기</span></a>
								<a href="javascript:fnList(354);" class="btn-paging last"><span class="blind">맨 마지막 페이지로 가기</span></a>


							</p>
						
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