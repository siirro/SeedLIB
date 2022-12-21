<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <link rel="icon" href="/images/favicon.png">
	<title>도서관에바란다 : 씨앗도서관 ☘️ </title>
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
	<div class="snsFarm">
		<ul class="snsBtnArea clearfix">
			<li>
				<a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
				<div id="snsGroup" class="snsList clearfix">
					<a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
					<a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
					<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/seoksu/menu/10157/bbs/20003/bbsPostRegist.do?searchCategory=&amp;currentPageNo=1&amp;postIdx=0'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
					<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/seoksu/menu/10157/bbs/20003/bbsPostRegist.do?searchCategory=&amp;currentPageNo=1&amp;postIdx=0'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
					<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/seoksu/menu/10157/bbs/20003/bbsPostRegist.do?searchCategory=&amp;currentPageNo=1&amp;postIdx=0'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
				</div>
			</li>
			<li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('seoksu'); return false;"><span class="blind">현재화면 프린트</span></a></li>
		</ul>
	</div>
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
					<div class="summaryDesc">
						<div class="innerBox">
							<div class="img"></div>
							<p class="desc">게시판의 목적과 맞지 않은 <span class="themeFC">욕설, 비방과 광고, 홍보 등 상업목적의 글</span>은 예고 없이 삭제 될 수 있습니다.<br>
							작성된 글에 개인 정보가 게시되지 않도록 주의해주세요.
							</p>
						</div>
					</div>
					<!-- 게시글 등록 -->

					<form name="registForm" id="registForm" method="post" enctype="multipart/form-data">
						<div class="boardWrap">
							<table class="board-view">
								<caption>묻고답하기 질문 양식 작성</caption>
								<colgroup>
									<col style="width:20%">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="title">제목</label></th>
										<td><input type="text" id="title" name="title" class="form-ele full"></td>
									</tr>
									<tr>
										<th scope="row">작성자</th>
										<td>안다은</td>
									</tr>
									
										<tr>
											<th scope="row">공개여부</th>
											<td>
												<label for="secretN"><input type="radio" name="secretYn" id="secretN" value="N"> 공개</label>
												<label for="secretY"><input type="radio" name="secretYn" id="secretY" value="Y" checked="checked"> 비공개</label>
											</td>
										</tr>
									
									
									<tr>
										<th scope="row"><label for="bbsContents">내용</label></th>
										<td class="textarea">
											<textarea name="contents" title="질문 내용 입력" id="bbsContents"></textarea>
										</td>
									</tr>

									
								</tbody>
							</table>
						</div>
					</form>
					<!-- //게시글 등록 -->
					<div class="btnGroup">
						<a href="#none" id="listBtn" class="btn cncl">취소</a>
						<a href="#none" id="registBtn" class="btn themeBtn">등록</a>
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