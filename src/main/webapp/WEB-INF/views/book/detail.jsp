<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    
    <script defer src="/js/common.js"></script>
    <script defer src="/js/bookDetail.js"></script>
    
	<title>통합검색 : 새싹도서관</title>
</head>
<body>
	<div class = "vsc-initialized">
		<div class="container" class="sub">
			<div class="sVisualWrap">
				<div class="sVisual">
					<h3>통합검색</h3>
				</div>
			</div>
			
			<div id="contentGroup">
				<!-- 사이드바 -->
		       <c:import url="../sideBar/BsideBar.jsp"></c:import>
				
				<!-- 메인 내용 -->
				<div id="contentcore">
					<!-- 상단 메뉴 -->
					<div class="naviandtitle">
						<h3>통합검색</h3>
						
						<div class="navi">
							<a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
							<i class="arrow"></i> 자료검색
							<i class="arrow"></i>소장자료검색
							<i class="arrow"></i>통합검색
						</div>
						
						<div class="snsFarm">
							<ul class="snsBtnArea clearfix">
								<li>
									<a href="#snsGroup" id="sns" title="SNS 공유하기(확장됨)" class="snsShare"><span class="blind">SNS 공유하기</span></a>
									<div id="snsGroup" class="snsList clearfix" style="display: block; right: 45px; opacity: 1;">
										<a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();" data-clipboard-text="https://me2.do/FNlmGWJe">
											<span class="blind">단축URL</span>
										</a>
										<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory(''); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory">
											<span class="blind">카카오스토리</span>
										</a>
										<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter(''); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter">
											<span class="blind">트위터</span>
										</a>
										<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook(''); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook">
											<span class="blind">페이스북</span>
										</a>
									</div>
								</li>
								<li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('seed'); return false;"><span class="blind">현재화면 프린트</span></a></li>
							</ul>
						</div>
					</div> <!-- 상단 메뉴 끝 -->
					
					<!-- 메인 바디 -->
					<div id="contents" class="contentArea">
						<!-- Forced tab Show -->
						<div class="ttabWrap">
							<div class="virtSelect">
								<a href="#script">탭메뉴</a>
							</div>
							<ul id="ttab3" class="tnb clearfix">
								<li class="ttabLast"></li>
							</ul>
						</div>
						<div class="popblackBG" style="display:none;"></div>
						
						<!-- 책 디테일 -->
						<div class="bookDetailInformation">
							<div class="bookInforWrap cate_volume">
								<!-- 상단 책 정보 -->
								<div class="bookDataDiv">
									<div class="bookImg">
										<img alt="" src="${vo.image}">
									</div>

									<div class="book_name">${vo.title}</div>

									<a href="#link" class="btn_optionView">
										<span class="blind">책정보 더보기</span>
									</a>

									<!-- 간략보기 -->
									<div class="simpleView viewTab open">
										<div class="book_publisher">
											<span class="bk_writer">${vo.writer}</span>
											<span class="bk_publish">${vo.publisher}</span>
											<span class="bk_date">${vo.bDate}</span>
										</div>
										
										<div class="book_publisher">
											<span class="bk_writer">${vo.isbn}</span>
										</div>
								
										<div class="thisBookCategory">
											<dl>
												<dt>한국십진분류</dt>
												<dd>
													<span><a href="#search" onclick="fnSearchKdc('l600');">${vo.category}</a></span>
												</dd>
											</dl>
										</div>
										
										<div class="keyword">
											<div>키워드</div>
											<ul>
												<li><a href="#apply" onclick="javascript:fnLibraryMyLibPop('8949100886', ''); return false" class="btn_myLib" title="내서재 담기 새창열림">책꽂이 담기</a></li>
												<li><a href="#search" onclick="fnSearchResultKeyword('세계');">좋아요</a></li>
												<li><a href="#search" onclick="fnSearchResultKeyword('미술');">💚 ${vo.bHeart} </a></li>
											</ul>
										</div>
									</div>
									<!-- // 간략보기 -->
								</div>
								
								<!-- 하단 책 상세정보 -->
								<div class="tabMove">
									<ul class="cateTab col-4 clearfix">
										<li class="choiced"><a href="#tabGo1">소장정보</a></li>
										<li><a href="#tabGo2">책소개</a></li>
										<li><a href="#shelfBrowsing">같은 장르 도서</a></li>
										<li><a href="#tagCloude">같은 작가 도서</a></li>
									</ul>
								</div>
								
								<!-- 소장 정보 -->
								<div class="dropBookData" id="tabGo1">
									<div class="dropBookData" id="tabGo1">
										<h5 class="htitle">소장정보</h5>
										<div class="dropContainerBox">
											<div class="whereLibrary webViewOnly">
												<div class="thisBook-libraryselecter">
													<p>
														<input type="checkbox" id="collectionLibraryAll" name="collectionLibraryAll" value="collectionLibraryAll" class="check" checked="checked">
														<label for="collectionLibraryAll">전체 도서관</label>
													</p>
													<!--아래 span 클릭시 클릭한 span 과 같은 이름의 도서관 table list 삭제-->
														<c:forEach var="lib" items="${vo.libVOs}">
															<a href="#chk" class="MA" data-name="MA">${lib.lName}</a>
														</c:forEach>
													<button type="button" class="listDropdown"><span>리스트 보기</span></button>
												</div>
												<div class="thisBook-libraryList">
													<div class="tblWrap tblScroller scrollTable">
														<table class="tbl">
															<caption>이 책의 정보 및 소장 도서관 정보</caption>
															<colgroup>
																<col>
																<col>
																<col>
																<col>
																<col>
																<col>
																<col>
																<col>
															</colgroup>
															<thead>
																<tr>
																	<th scope="col">도서관</th>
																	<th scope="col">대출상태</th>
																	<th scope="col">대출</th>
																	<th scope="col">예약</th>
																	<th scope="col">상호대차</th>
																	<th scope="col">위치보기</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach var="book" items="${vo}">
																</c:forEach>
																<tr class="MA">
																	<td>${book.libVOs.lName}</td>
																	
																	<!-- 도서관 구분 : 새싹도서관일 땐 (대출/예약) | 이외 (상호대차) -->
																	<td>
																		<c:set var="my" value="새싹"/>
																		<c:set var="lib" value="${book.libVOs.lName}"/>
																		<c:choose>
																			<c:when test="${lib == my}">
																				<c:choose>
																					<c:set var="able" value="${book.able}"/>
																					<c:when test="${able == 1}">
																						<a href="javascript:;" onclick="javascript:reservationApplyProc('100359773','EM0000165212'); return false" class="btn white small">대출</a>
																					</c:when>
																					<c:when test="${able == 0}">
																						<a href="javascript:;" onclick="javascript:reservationApplyProc('100359773','EM0000165212'); return false" class="btn white small">대출예약</a>
																					</c:when>
																				</c:choose>
																			</c:when>
																		</c:choose>
																	</td>
																	<td>대출신청 ${book.able}</td>
																	<td>예약신청 ${book.able}</td>
																	<td>
																		<c:choose>
																			<c:when test="${book.libVOs.lName} != 새싹">
																				<h1>상호대차 신청</h1>
																			</c:when>
																		</c:choose>
																	</td>
																	<td>도서관 위치 지도열기</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> <!-- 소장 정보 상세 내용 -->
								
								<!-- 책 소개 -->
								<div class="dropBookData" id="tabGo2">
									<h5 class="htitle">책소개
										<span>도서정보 상세보기 클릭 ☞
											<a href="https://search.shopping.naver.com/book/catalog/32439434396" target="_blank">
												<img src="/include/image/common/link_n.png" alt="네이버">
											</a>
										제공</span>
									</h5>
									<div class="dropContainerBox">
										<div class="bookInformation">
											내용
										</div>
										<button type="button" class="mobMoreView"><span>더보기</span></button>
									</div>
								</div>
								
								<!-- 같은 장르 자료 -->
								<c:import url="detailSC.jsp"></c:import>
								
								<!-- 같은 작가 도서 -->
								<c:choose>
									<c:when test="">
										<c:import url="detailSW.jsp"></c:import>
									</c:when>
								</c:choose>
							</div>
						</div>
						<!-- 책 디테일 끝 -->
					</div>
					
				</div>
			</div>
		</div>
	</div>

</body>
</html>