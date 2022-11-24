<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/main.css">
<title>꿈이 싹트는 정원 : 씨앗도서관</title>

</head>

<body>
<div id="wrap">

<!-- 헤더 -->
<c:import url="./temp/header.jsp"></c:import>
<!-- 헤더 -->

	<div id="container" class="main">

		<section id="section1">
			<h2 class="blind">메인상단</h2>

			<div class="backImg">
				<ul class="popupList thumb">
					<li style="z-index: 99; display: list-item;"></li>
					<li style="display: list-item; z-index: 100; background-color: #ffffff33;"></li>
					<li style="display: list-item; z-index: 99;"></li>
				</ul>
			</div>

			<div class="sectionGroup">
				<div class="sectionGroup" >
					<p class="slogan" style="color: white; text-shadow: 1px 1px 3px rgb(0 0 0 / 50%);">
						<span style="font-size: 22px;">시민에게 행복과 감동을 주는</span>
						<br>
						<span style="font-size: 52px; font-weight: bold; text-shadow: 1px 1px 3px rgb(0 0 0 / 50%);">씨앗도서관</span>
					</p>
					
					<!-- 통합검색 -->
					

					<div class="mainSearchWrap">
						<div class="mainSearchForm clearfix">
							<form action="./search/simpleresult" name="mainSearchForm" id="searchForm" method="get">
								<input type="hidden" name="searchType" value="SIMPLE">
								<input type="hidden" name="searchManageCode" value="ALL">

								<fieldset>
									<legend class="blind">통합검색 영역</legend>
									<div class="searchRadi mainBestKeyword mobileHide" id="mainBestKeyword">
					
										<div>
											<div class="controlArea" style="padding: 17px;">
												<a href="#up" id="btnUp" title="인기검색어 위로 넘기기"><span class="blind">위</span></a>
												<a href="#dwon" id="btnDwon" title="인기검색어 아래로 넘기기"><span class="blind">아래</span></a>
											</div>
											<div class="keywordListWrap" style="height: 55px; overflow: hidden; color: white;">
												<ol class="keywordList" style="margin-top: 0px;">
															<li style="padding: 17px 27px 17px 0px;"><a href="#link" onclick="javascript:fnMainSearchKeyword('불편한 편의점'); return false;" title="불편한 편의점"><i>1</i>불편한 편의점</a></li>
												<li><a href="#link" onclick="javascript:fnMainSearchKeyword('흔한남매'); return false;" title="흔한남매"><i>2</i>흔한남매</a></li><li><a href="#link" onclick="javascript:fnMainSearchKeyword('파친코'); return false;" title="파친코"><i>3</i>파친코</a></li><li><a href="#link" onclick="javascript:fnMainSearchKeyword('불편한편의점'); return false;" title="불편한편의점"><i>4</i>불편한편의점</a></li><li><a href="#link" onclick="javascript:fnMainSearchKeyword('하얼빈'); return false;" title="하얼빈"><i>5</i>하얼빈</a></li><li><a href="#link" onclick="javascript:fnMainSearchKeyword('불편한 편의점 김호연 장편소설 2'); return false;" title="불편한 편의점 김호연 장편소설 2"><i>6</i>불편한 편의점 김호연 장편소설 2</a></li><li><a href="#link" onclick="javascript:fnMainSearchKeyword('카카오프렌즈'); return false;" title="카카오프렌즈"><i>7</i>카카오프렌즈</a></li><li><a href="#link" onclick="javascript:fnMainSearchKeyword('아버지의 해방일지'); return false;" title="아버지의 해방일지"><i>8</i>아버지의 해방일지</a></li><li><a href="#link" onclick="javascript:fnMainSearchKeyword('웹툰'); return false;" title="웹툰"><i>9</i>웹툰</a></li><li><a href="#link" onclick="javascript:fnMainSearchKeyword('신라'); return false;" title="신라"><i>10</i>신라</a></li></ol>
											</div>
										</div>
									</div>
									<div class="mainSearchKeywordWrap">
										<div class="mainSearchKeyword">
											
											<label for="mainSearchKeyword" class="blind">검색어 입력</label>
											<input type="text" onkeyup="enterkey()" title="검색어 입력" class="form-ele" id="totalSearchValue" name="search" style="height: 68px; font-size: 1.3rem; padding: 0px 20px;" placeholder="검색어를 입력하세요">
											<a href="./search/simple" id="searchBtn" title="검색" class="btnSearch">검색</a>
										</div>
									</div>

									<script src="/js/search.js"></script>
									
								</fieldset>
							</form>
						</div>
					</div>
					
					<!-- //통합검색 -->

				<!-- 주요서비스 -->
				<div class="shortcut">
					<ul class="shortcutList clearfix">
						<li class="svc1"><a href="./resources/"><img src="/images/m_calendar.png"><br>문화행사신청</a></li>
						<li class="svc2"><a href="./hope/hopeInfo"><img src="/images/m_books.png"><br>희망도서신청</a></li>
						<li class="svc3"><a href="./studyroom/roomInfo"><img src="/images/m_room.png"><br>열람실현황조회</a></li>
						<li class="svc4"><a href="/intro/40027/contents.do"><img src="/images/m_info.png"><br>이용안내</a></li>
						<li class="svc5"><a href="/intro/40028/contents.do"><img src="/images/m_library.png"><br>도서관소개</a></li>
						<li class="svc6"><a href="/intro/40028/contents.do"><img src="/images/m_map.png"><br>찾아오는길</a></li>
						<li class="svc7"><a href="/intro/40028/contents.do"><img src="/images/m_reading.png"><br>도서이용내역</a></li>
					</ul>
				</div>
				<!-- //주요서비스 -->

				<!-- 도서관 바로가기 -->
				<form name="ebookForm" method="post" target="_blank" action="https://elib.anyang.go.kr/ebookPlatform/Homepage/SSOLoginDL.do">
					<input type="hidden" name="libCode" value="141077">
					<input type="hidden" name="userId" value="">
					<input type="hidden" name="userName" value="">
					<input type="hidden" name="smartLogin" value="ID">
				</form>
			</div>
		</section>


		<section id="section5">
			<h2 class="blind">섹션5</h2>

			<div class="sectionGroup">

			<!-- 팝업존 -->
			<script>
				$(function(){
					//팝업존
					$(".popupZone .popupList").slider({
						resolution : "480x400",
						usePager : false,
						numbering : true
					});
				});
			</script>
	
				<div class="popupZone public">

					<h1 class="blind">팝업존</h1>
					<!-- <div class="controlGroup">
						<div class="arrowWrap">
							<div class="pp-controls">
								<a href="#" class="btnSlidePause" title="슬라이드 멈추기" style="display: none;"></a>
								<a href="#" class="btnSlidePlay" title="자동으로 슬라이드 넘기기" style="display: block;"></a>
							</div>
							<a href="#" class="arrow btnSlidePrev" title="이전 슬라이드 보기"></a>
							<a href="#" class="arrow btnSlideNext" title="다음 슬라이드 보기"></a>
						</div>
						<p class="nowpage"><strong>6</strong>/10</p>
					</div> -->

					<ul class="popupList thumb" ondragstart="return false" style="width: 480px; height: 400px;">
						<li style="z-index: 100; left: 0px; top: 0px;">
							<a href="https://lib.anyang.go.kr/intro/menu/12220/contents/41241/contents.do">
								<img src="https://lib.anyang.go.kr/attachfile/popupzone/13758_1_20220824180541507.jpg" alt="안양시도서관 「한 도시 한 책 읽기」 2022 올해의 책 안양시도서관 「한 도시 한 책 읽기」 2022 올해의 책
									불편한 편의점
									연이와 버들도령
									체리새우 : 비밀글입니다" onerror="javascript:errorPopupzoneImageFile(this);" class="slide">
							</a>
						</li>
					</ul>
				</div>
				<!-- //팝업존 -->

				<!-- 공지사항 -->
				<div class="noticeZone">
					<h5>공지사항</h5>
					<ul class="articleList">
					<li>
						<a href="/intro/20001/bbsPostDetail.do?postIdx=22902">
						<span class="lib samdeokFB">[삼덕]</span>
							2022년 삼덕도서관 송년의 달 행사 안내
						</a>
					</li>
				
					<li>
						<a href="/intro/20001/bbsPostDetail.do?postIdx=22901">
						<span class="lib allFB">[공통]</span>
							2022년 제6회 선물축제 독서퀴즈 안내
						</a>
					</li>
				
					<li>
						<a href="/intro/20001/bbsPostDetail.do?postIdx=22899">
						<span class="lib seoksuFB">[석수]</span>
							🎄2022 석수도서관 송년의 달 행사 운영 안내🎄
						</a>
					</li>
				
					<li>
						<a href="/intro/20001/bbsPostDetail.do?postIdx=22898">
						<span class="lib hogyeFB">[호계]</span>
							2022년 11월 호계도서관 도전! 어린이 독서퀴즈 당첨자 발표
						</a>
					</li>
				
					<li>
						<a href="/intro/20001/bbsPostDetail.do?postIdx=22896">
						<span class="lib pyeongchonFB">[평촌]</span>
							유아 동화구연 「내 마음에 동화」&nbsp; &lt;미니 공연&gt; 신청 안내
						</a>
					</li>
				
					<li>
						<a href="/intro/20001/bbsPostDetail.do?postIdx=22885">
						<span class="lib childFB">[어린이]</span>
							2022년 어린이도서관 희망도서 신청접수 마감 안내
						</a>
					</li>
				
					
					</ul>
					<div class="more"><a href="/intro/20001/bbsPostList.do" title="공지사항 더보기"><span class="blind">더보기</span></a></div>
				</div>
				<!-- //공지사항 -->

				<!-- 회원 로그인 -->
				<div class="serviceZone before">
					<h5>회원 로그인</h5>
					<p>로그인을 하시면 더욱 편리하게<br class="mobileHide"> 이용할 수 있습니다.</p>
					<ul class="clearfix">
						<li><a href="/member/login">로그인</a></li>
						<li><a href="/member/join">회원가입</a></li>
					</ul>
					<a href="/intro/memberFindIdCertify.do"><i></i>ID/PW 찾기</a>
				</div>

				<!-- //회원 로그인 -->
			</div>
		</section>


		<section id="section2">
			<div class="sectionGroup">

				<!-- 문화프로그램 시작 -->
				<div class="cultureWrap">
					<h5>도서관 문화행사</h5>
					<!-- PC용-->
					<div class="service-inner mobileHide">
						<div class="swiper-container swiper-service swiper-container-initialized swiper-container-horizontal" style="cursor: grab;">
							<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
								<div class="swiper-slide swiper-slide-active" style="width: 750px;">
									<ul class="cultureList clearfix">
										<li>
											<a href="/seoksu/lectureDetail.do?lectureIdx=5607">
												<dl>
													<dt>석수도서관
															<span class="ing">접수중</span>
													</dt>
													<dd class="title">[하반기] 창의쑥쑥 그림책 나라</dd>
													<dd class="info">
														<span>대상 :</span>어린이
														<br>
														<span>접수 :</span>2022.09.06 ~ 09.22
													</dd>
												</dl>
											</a>
										</li>
										
										<li>
											<a href="/seoksu/lectureDetail.do?lectureIdx=5606">
												<dl>
													<dt>석수도서관
															<span class="ready">접수예정</span>
													</dt>
													<dd class="title">[하반기] 시니어 유튜브 크리에이터</dd>
													<dd class="info">
														<span>대상 :</span>성인<br>
														<span>접수 :</span>
														2022.09.06 ~ 09.27</dd>
												</dl>
											</a>
										</li>
										<li>
											<a href="/seoksu/lectureDetail.do?lectureIdx=5605">
												<dl>
													<dt>석수도서관
															<span class="end">마감</span>
													</dt>
													<dd class="title">[하반기] 영어 그림책 함께 읽기</dd>
													<dd class="info">
														<span>대상 :</span>어린이<br>
														<span>접수 :</span>
														2022.09.06 ~ 09.23
													</dd>
												</dl>
											</a>
										</li>
										<li>
											<a href="/seoksu/lectureDetail.do?lectureIdx=5604">
												<dl>
													<dt>석수도서관
															<span class="end">마감</span>
													</dt>
													<dd class="title">[하반기] 성인동화구연지도 (자격증반) </dd>
													<dd class="info">
														<span>대상 :</span>성인, 누구나<br>
														<span>접수 :</span>
														2022.09.06 ~ 09.14
													</dd>
												</dl>
											</a>
										</li>
										<li>
											<a href="/seoksu/lectureDetail.do?lectureIdx=5603">
												<dl>
													<dt>석수도서관
															<span class="end">마감</span>
													</dt>
													<dd class="title">[하반기] 생각이 자라는 미술 (B반)</dd>
													<dd class="info">
														<span>대상 :</span>유아<br>
														<span>접수 :</span>
														2022.09.06 ~ 09.14
													</dd>
												</dl>
											</a>
										</li>
										<li>
											<a href="/seoksu/lectureDetail.do?lectureIdx=5602">
												<dl>
													<dt>석수도서관
															<span class="end">마감</span>
													</dt>
													<dd class="title">[하반기] 생각이 자라는 미술 (A반)</dd>
													<dd class="info">
														<span>대상 :</span>유아<br>
														<span>접수 :</span>2022.09.06 ~ 09.20
													</dd>
												</dl>
											</a>
										</li>
									</ul>
								</div>
							</div>
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
					</div>
					<!-- //PC용 -->

				</div>
				<!-- 문화프로그램 끝 -->

				<script>
					$(function(){
						//문화행사 PC버전
						var serviceSwiper = new Swiper('.swiper-service', {
							paginationElement: 'a',
							paginationClickable: true,
							grabCursor: true,
							autoplay: {
								delay: 5000,
							},
							pagination: {
								el: '.swiper-pagination',
								clickable: true,
							},
						});
						$('.service-play').click(function(){
							$(this).hide();
							$('.service-stop').show();
							serviceSwiper.autoplay.start();
							return false;
						});
						$('.service-stop').click(function(){
							$(this).hide();
							$('.service-play').show();
							serviceSwiper.autoplay.stop();
							return false;
						});

						//문화행사 Mobile버전
						var serviceSwiperM = new Swiper('.swiper-Mservice', {
							slidesPerView: 2,
							spaceBetween: 20,
							freeMode: true,
							autoplay: {
								delay: 5000,
							},
							navigation: {
								nextEl: '.swiper-button-next',
								prevEl: '.swiper-button-prev',
							},
						});
					});
				</script>

				<!-- 달력 & 이용안내 -->
				<div class="guideWrap">

					<!-- 도서관일정 -->
					<div id="calendarWrap" class="schedule">
						<div class="top">
							<h5>도서관달력</h5>
							<div class="guide">
								<a href="#prev" onclick="fnCalendarSearchMonth('2022-10');" class="arrow prev"><span class="blind">이전 달 바로가기</span></a>
								<a href="#next" onclick="fnCalendarSearchMonth('2022-12');" class="arrow next"><span class="blind">다음 달 바로가기</span></a>
								<p class="year">2022.11</p>
							</div>
						</div>

						<div class="cont">
							<div class="calendar">
								<table>
									<caption>휴관일 및 열람실개방휴관일 안내 일정표</caption>
									<thead>
										<tr>
											<th scope="col" class="sun">일</th>
											<th scope="col">월</th>
											<th scope="col">화</th>
											<th scope="col">수</th>
											<th scope="col">목</th>
											<th scope="col">금</th>
											<th scope="col" class="sat">토</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<!-- 이렇게하면되나? 자바로 윤년 계산, 달별 일수 계산, -->
											<td>
												<div></div>
											</td>
											<td>
												<div></div>
											</td>
											<td class="">
												1
											</td>
											<td class="">
												2
											</td>
											<td class="">
												3
											</td>
											<td class="">
												4
											</td>
											<td class="">
												5
											</td>
												</tr>
												<tr>
											<td class="sun">
												6
											</td>
											<td class="">
														<div><a href="/seoksu/calendar.do?searchMonth=2022-11&amp;searchYmd=2022-11-07" class="all" title="정기휴관일">7</a></div>
											</td>
											<td class="">
												8
											</td>
											<td class="">
												9
											</td>
											
											<td class="">
												10
											</td>
											
											<td class="">
												11
											</td>
											
											<td class="">
												12
											</td>
											</tr>

											<tr>
											<td class="sun">
												13
											</td>
											<td class="">
														<div><a href="/seoksu/calendar.do?searchMonth=2022-11&amp;searchYmd=2022-11-14" class="holiday" title="정기휴관일">14</a></div>
											</td>
											<td class="">
												15
											</td>
											<td class="">
												16
											</td>
											<td class="">
												17
											</td>
											<td class="">
												18
											</td>
											<td class="">
												19
											</td>
											</tr>

											<tr>
											<td class="sun">
												20
											</td>
											<td class="">
														<div><a href="/seoksu/calendar.do?searchMonth=2022-11&amp;searchYmd=2022-11-21" class="all" title="정기휴관일">21</a></div>
											</td>
											<td class="">
												22
											</td>
											<td class="">
												23
											</td>
											<td class="">
												24
											</td>
											<td class="">
												25
											</td>
											<td class="">
												26
											</td>
												</tr>
												<tr>
											<td class="sun">
												27
											</td>
											<td class="">
														<div><a href="/seoksu/calendar.do?searchMonth=2022-11&amp;searchYmd=2022-11-28" class="holiday" title="정기휴관일">28</a></div>	
											</td>
											<td class="">
												29
											</td>
											<td class="">
												30
											</td>
											<td>
												<div></div>
											</td>
											<td>
												<div></div>
											</td>
											<td>
												<div></div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="guide_info">
								<ul>
									<li><i class="all"><span class="blind">원형 아이콘</span></i> 휴관일</li>
									<li><i class="holiday"><span class="blind">사각형 아이콘</span></i> 열람실개방휴관일</li>
								</ul>
							</div>
						</div>

						<div class="more"><a href="/seoksu/calendar.do?searchMonth=2022-11">
							<span class="blind">도서관일정 더보기</span></a>
						</div>

					</div>
					<!-- //도서관일정 -->

					<!-- 이용안내 -->
					<div class="timeGuide">
						<h5>이용안내</h5>
						<div class="infoBox">
							<dl>
								<dt>열람실</dt>
								<dd>평일 08시~23시 / 주말 08시~23시</dd>
							</dl>
							<dl>
								<dt>대출자료실</dt>
								<dd>평일 09시~22시 / 주말 09시~17시</dd>
							</dl>
							<dl>
								<dt>어린이실</dt>
								<dd>평일 09시~18시 / 주말 09시~17시</dd>
							</dl>
						</div>
						<div class="more"><a href="/seoksu/40034/contents.do">
							<span class="blind">이용안내 더보기</span></a>
						</div>
					</div>
					<!-- //이용안내 -->

				</div>
				<!-- //달력 & 이용안내 -->
			</div>
		</section>

					
							

		<script>
			function fnAccessionBookDetail(speciesKey, isbn, pubFormCode){
				var form = document.mainBookForm;
				form.speciesKey.value = speciesKey;
				form.isbn.value = isbn;
				form.pubFormCode.value = pubFormCode;
				form.action = "/seoksu/accessionBookDetail.do";
				form.submit();
			}

			function fnPopularBookMonthDetail(speciesKey, isbn, pubFormCode){
				var form = document.mainBookForm;
				form.speciesKey.value = speciesKey;
				form.isbn.value = isbn;
				form.pubFormCode.value = pubFormCode;
				form.action = "/seoksu/popularBookMonthDetail.do";
				form.submit();
			}
		</script>
		<form id="mainBookForm" name="mainBookForm" method="get">
			<input type="hidden" name="speciesKey">
			<input type="hidden" name="isbn">
			<input type="hidden" name="pubFormCode">
		</form>
	</div>


<!-- 인기도서 추천도서 신착도서 대출베스트 -->
	<section id="section3">
		<h2 class="blind">섹션3</h2>
		<div class="sectionGroup">
		
			<!-- 북리스트 -->
			<div class="bookZone">
				<ul class="tab book clearfix">
					<li class="on"><a href="#libraryPopularBook">공공도서관 인기도서</a></li>
					<li><a href="#recommendBook">추천도서</a></li>
					<li><a href="#accessionBook">신착도서</a></li>
					<li><a href="#popularBookMonth">대출베스트</a></li>
				</ul>
				
				<div id="libraryPopularBook" class="bookListWrap">
					<ul class="bookList clearfix">
						<li>
							<span class="cover">
								<a href="/seoksu/libraryPopularBookDetail.do?isbn=9791161571188">
									<img src="https://image.aladin.co.kr/product/26942/84/cover/k582730818_1.jpg" alt="불편한 편의점 :김호연 장편소설" onerror="javascript:fnImageLoadError(this); return false;">
								</a>
							</span>
							<span class="txt">불편한 편의점 :김호연 장편소설</span>
						</li>
					</ul>
					<div class="more mobileHide">
						<a href="/seoksu/libraryPopularBookList.do">
							<span class="blind">더보기</span>
						</a>
					</div>
				</div>
			
				<div id="recommendBook" class="bookListWrap" style="display: none;">
					<ul class="bookList clearfix">
						<li>
							<span class="cover">
								<a href="/seoksu/recommendBookDetail.do?searchCategory=3&amp;recommendBookIdx=3926">
									<img src="https://shopping-phinf.pstatic.net/main_3437283/34372834618.20221019120118.jpg" alt="걱정 많은 어른들을 위한 화학 이야기" onerror="javascript:fnNoImgBook(this);">
								</a>
							</span>
							<span class="txt">걱정 많은 어른들을 위한 화학 이야기</span>
						</li>
					</ul>
					<div class="more mobileHide">
						<a href="/seoksu/recommendBookList.do">
							<span class="blind">더보기</span>
						</a>
					</div>
				</div>
			
				<div id="accessionBook" class="bookListWrap" style="display: none;">
					<ul class="bookList clearfix">
						<li>
							<span class="cover">
								<a href="#link" onclick="fnAccessionBookDetail('106022579', '9788949162485', 'MO'); return false;">
									<img src="https://shopping-phinf.pstatic.net/main_3543928/35439288618.20221101102653.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="랑랑 형제 떡집">
								</a>
							</span>
							<span class="txt">랑랑 형제 떡집</span>
						</li>
					</ul>
					<div class="more mobileHide">
						<a href="/seoksu/accessionBookList.do">
							<span class="blind">더보기</span>
						</a>
					</div>
				</div>
			
				<div id="popularBookMonth" class="bookListWrap" style="display: none;">
					<ul class="bookList clearfix">
						<li>
							<span class="cover">
								<a href="" onclick="fnPopularBookMonthDetail('19632613', '9788954654753', 'MO'); return false;">
									<img src="https://image.aladin.co.kr/product/17970/0/cover500/8954654754_1.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="체리새우: 비밀글입니다 : 황영미 장편소설 ">
								</a>
							</span>
							<span class="txt">체리새우: 비밀글입니다 : 황영미 장편소설 </span>
						</li>
					</ul>
		
					<div class="more mobileHide">
						<a href="/seoksu/popularBookMonthList.do">
							<span class="blind">더보기</span>
						</a>
					</div>
				</div>
			</div>

			<script>
				$(function(){
					$("#accessionBook").load("/bookAccession");
					$("#popularBookMonth").load("/bookPopularMonth");
					$("#recommendBook").load("/bookRecommend");
				});
			</script>

		</div>
	</section>
</div>
		


<!-- footer -->
<c:import url="./temp/footer.jsp"></c:import>
<!-- //footer -->



<!-- <input type="hidden" name="pbInitNo1" id="pbInitNo1" value="0">
<input type="hidden" name="pbInitNo2" id="pbInitNo2" value="0">
<input type="hidden" name="pbInitNo3" id="pbInitNo3" value="0">
<input type="hidden" name="pbInitNo4" id="pbInitNo4" value="0">
<input type="hidden" name="pbInitNo5" id="pbInitNo5" value="0">
<iframe name="hiddenFrame" id="hiddenFrame" title="빈프레임" style="display:none;"></iframe> -->

</body>

</html>