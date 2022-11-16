<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


	
<title>꿈이 싹트는 정원 : 씨앗도서관</title>
</head>
<body>

<div id="wrap">

<c:import url="./temp/header.jsp"></c:import>

		<div id="container" class="main">
			<section id="section1">
				<h2 class="blind">메인상단</h2>
				<div class="sectionGroup">
					<p class="slogan"><span>씨앗도서관</span><br>하이루하이루</p>







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
	<script>
		function fnCalendarSearchMonth(searchMonth) {
			$("#calendarWrap").load("/seoksu/main/include/calendar.do", {searchMonth : searchMonth});
		}
	</script>
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
							<td><div></div></td>
						
							<td><div></div></td>
						
							<td><div></div></td>
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
<div class="more"><a href="/seoksu/calendar.do?searchMonth=2022-11"><span class="blind">도서관일정 더보기</span></a></div>

						</div>
						<!-- //도서관일정 -->

						<!-- 이용안내 -->
						<div class="timeGuide">
							<h5>이용안내</h5>
							<div class="infoBox">
								<dl>
									<dt>열람실</dt>
									<dd>평일 07시~23시 / 주말 07시~23시</dd>
								</dl>
								<dl>
									<dt>관외대출실</dt>
									<dd>평일 09시~22시 / 주말 09시~17시</dd>
								</dl>
								<dl>
									<dt>어린이실/기타자료실</dt>
									<dd>평일 09~18시 / 주말 09~17시</dd>
								</dl>
							</div>
							<div class="more"><a href="/seoksu/40034/contents.do"><span class="blind">이용안내 더보기</span></a></div>
						</div>
						<!-- //이용안내 -->
					</div>
					<!-- //달력 & 이용안내 -->
				</div>
			</section>

			<section id="section3">
				<h2 class="blind">섹션3</h2>
				<div class="sectionGroup">
					<!-- 북리스트 -->
					

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




<!-- 인기도서 추천도서 신착도서 대출베스트 -->



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
			
				<li>
					<span class="cover">
						<a href="/seoksu/libraryPopularBookDetail.do?isbn=9791161571379">
							<img src="https://image.aladin.co.kr/product/29858/98/cover/k432838027_1.jpg" alt="불편한 편의점 :김호연 장편소설" onerror="javascript:fnImageLoadError(this); return false;">
						</a>
					</span>
					<span class="txt">불편한 편의점 :김호연 장편소설</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="/seoksu/libraryPopularBookDetail.do?isbn=9791165341909">
							<img src="https://image.aladin.co.kr/product/24512/70/cover/k392630952_1.jpg" alt="달러구트 꿈 백화점.이미예 장편소설" onerror="javascript:fnImageLoadError(this); return false;">
						</a>
					</span>
					<span class="txt">달러구트 꿈 백화점.이미예 장편소설</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="/seoksu/libraryPopularBookDetail.do?isbn=9791197377143">
							<img src="https://image.aladin.co.kr/product/28685/95/cover/k362836265_1.jpg" alt="어서오세요, 휴남동 서점입니다 :황보름 장편소설" onerror="javascript:fnImageLoadError(this); return false;">
						</a>
					</span>
					<span class="txt">어서오세요, 휴남동 서점입니다 :황보름 장편소설</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="/seoksu/libraryPopularBookDetail.do?isbn=9788954699914">
							<img src="https://image.aladin.co.kr/product/29857/0/cover/895469991x_1.jpg" alt="하얼빈 :김훈 장편소설" onerror="javascript:fnImageLoadError(this); return false;">
						</a>
					</span>
					<span class="txt">하얼빈 :김훈 장편소설</span>
				</li>
			
		
</ul>
<div class="more mobileHide"><a href="/seoksu/libraryPopularBookList.do"><span class="blind">더보기</span></a></div>

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
				<li>
					<span class="cover">
						<a href="/seoksu/recommendBookDetail.do?searchCategory=4&amp;recommendBookIdx=3925">
							
									<img src="https://bookthumb-phinf.pstatic.net/cover/212/927/21292798.jpg" alt="나를 훔쳐 주세요" onerror="javascript:fnNoImgBook(this);">
						</a>
					</span>
					<span class="txt">나를 훔쳐 주세요</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="/seoksu/recommendBookDetail.do?searchCategory=2&amp;recommendBookIdx=3924">
							
									<img src="https://bookthumb-phinf.pstatic.net/cover/214/340/21434043.jpg" alt="세븐 테크" onerror="javascript:fnNoImgBook(this);">
								
						</a>
					</span>
					<span class="txt">세븐 테크</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="/seoksu/recommendBookDetail.do?searchCategory=1&amp;recommendBookIdx=3923">
							
									<img src="https://bookthumb-phinf.pstatic.net/cover/223/379/22337911.jpg" alt="아티스트 웨이, 마음의 소리를 듣는 시간" onerror="javascript:fnNoImgBook(this);">
								
						</a>
					</span>
					<span class="txt">아티스트 웨이, 마음의 소리를 듣는 시간</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="/seoksu/recommendBookDetail.do?searchCategory=5&amp;recommendBookIdx=3922">
							
									<img src="https://bookthumb-phinf.pstatic.net/cover/225/599/22559905.jpg" alt="곧 재능 교환이 시작됩니다" onerror="javascript:fnNoImgBook(this);">
								
						</a>
					</span>
					<span class="txt">곧 재능 교환이 시작됩니다</span>
				</li>
			
		
</ul>
<div class="more mobileHide"><a href="/seoksu/recommendBookList.do"><span class="blind">더보기</span></a></div>


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
			
				<li>
					<span class="cover">
						<a href="#link" onclick="fnAccessionBookDetail('106022576', '9788901253862', 'MO'); return false;">
							<img src="https://shopping-phinf.pstatic.net/main_3360142/33601420626.20220723093406.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="정글버스">
						</a>
					</span>
					<span class="txt">정글버스</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="#link" onclick="fnAccessionBookDetail('106022571', '9788925578170', 'MO'); return false;">
							<img src="https://shopping-phinf.pstatic.net/main_3364246/33642465642.20220728093317.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="잠깐만 기다려 줘!">
						</a>
					</span>
					<span class="txt">잠깐만 기다려 줘!</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="#link" onclick="fnAccessionBookDetail('106022568', '9788931557138', 'MO'); return false;">
							<img src="https://shopping-phinf.pstatic.net/main_3364246/33642464619.20221019134607.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="잘 자요, 우리 아기">
						</a>
					</span>
					<span class="txt">잘 자요, 우리 아기</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="#link" onclick="fnAccessionBookDetail('106022565', '9791192182377', 'MO'); return false;">
							<img src="https://shopping-phinf.pstatic.net/main_3453494/34534947635.20220914102054.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="잘 싸우는 기술">
						</a>
					</span>
					<span class="txt">잘 싸우는 기술</span>
				</li>
			
		
</ul>
<div class="more mobileHide"><a href="/seoksu/accessionBookList.do"><span class="blind">더보기</span></a></div></div>
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
			
				<li>
					<span class="cover">
						<a href="" onclick="fnPopularBookMonthDetail('93685740', '9791161571188', 'MO'); return false;">
							<img src="https://image.aladin.co.kr/product/26942/84/cover/k582730818_1.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="불편한 편의점: 김호연 장편소설">
						</a>
					</span>
					<span class="txt">불편한 편의점: 김호연 장편소설</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="" onclick="fnPopularBookMonthDetail('100359716', '9791158362836', 'MO'); return false;">
							<img src="https://bookthumb-phinf.pstatic.net/cover/213/959/21395909.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="연이와 버들 도령">
						</a>
					</span>
					<span class="txt">연이와 버들 도령</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="" onclick="fnPopularBookMonthDetail('93685740', '9791161571188', 'MO'); return false;">
							<img src="https://image.aladin.co.kr/product/26942/84/cover/k582730818_1.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="불편한 편의점: 김호연 장편소설">
						</a>
					</span>
					<span class="txt">불편한 편의점: 김호연 장편소설</span>
				</li>
			
				<li>
					<span class="cover">
						<a href="" onclick="fnPopularBookMonthDetail('95775822', '9791165343996', 'MO'); return false;">
							<img src="https://image.aladin.co.kr/product/27794/22/cover/k862734063_1.jpg" onerror="javascript:fnNoImgBook(this); return false;" alt="(서울 자가에 대기업 다니는) 김 부장 이야기. 1, 김 부장 편">
						</a>
					</span>
					<span class="txt">(서울 자가에 대기업 다니는) 김 부장 이야기. 1, 김 부장 편</span>
				</li>
</ul>
<div class="more mobileHide"><a href="/seoksu/popularBookMonthList.do"><span class="blind">더보기</span></a></div></div>
</div>

<script>
	$(function(){
		$("#accessionBook").load("/seoksu/main/include/bookAccession.do");
		$("#popularBookMonth").load("/seoksu/main/include/bookPopularMonth.do");
		$("#recommendBook").load("/seoksu/main/include/bookRecommend.do");
	});
</script>

				</div>
			</section>
		</div>
		


<!-- footer -->
<footer id="footer">
    <div class="fnbWrap">
        <div class="footerInner clearfix">
            <ul class="fnb clearfix">
                <li><a href="/etc/personalinfo"><span>개인정보처리방침</span></a></li>
                <li><a href="/etc/emailinfo">이메일추출방지정책</a></li>
                <li><a href="/intro/law">도서관관련법규</a></li>
            </ul>
            <div class="familySite mobileHide">
                <select name="relateSite" id="relateSite" title="관련기관 사이트 바로가기 선택">
                    <option value="" selected="selected">관련기관 사이트</option>
                    <option value="https://www.nl.go.kr/">국립중앙도서관</option>
                    <option value="http://www.dlibrary.go.kr/">국가전자도서관</option>
                    <option value="https://www.nlcy.go.kr/NLCY/main/index.do">국립어린이청소년도서관</option>
                    <option value="https://www.nanet.go.kr/main.do">국회도서관</option>
                    <option value="https://www.library.kr/cyber/index.do">경기도사이버도서관</option>
                    <option value="https://memory.library.kr/">경기도메모리</option>
                    <option value="https://www.nld.go.kr/ableFront/index.jsp">국립중앙장애인도서관</option>
                </select>
                <a href="#go" id="btnRelateSite" class="btnGo" title="새창열림">이동</a>
            </div>
        </div>
    </div>
    <div class="faddWrap">
        <div class="footerInner clearfix">
            <div class="fadd">
            	<address><span>씨앗도서관</span><span>08506 서울특별시 금천구 가산디지털1로 151 이노플렉스 1차 306호</span><span>전화번호 : 02-1234-5555, 6666</span></address>
                <cite>Copyright 2022. Seed Library All Rights Reserved.</cite>
            </div>
        </div>
    </div>
    <div>
        <p id="post-result"></p>
    </div>
    
</footer>

<!-- //footer -->

<script type="text/javascript">
    $(function () {
        $("#btnRelateSite").click(function () {
            var url = $("#relateSite").val();
            if (!$("#relateSite").val()) {
                alert("관련기관을 선택하세요.");
                $("#relateSite").focus();
            } else {
                window.open(url, "_blank");
            }
            return false;
        });
    });
</script>

<!-- <input type="hidden" name="pbInitNo1" id="pbInitNo1" value="0">
<input type="hidden" name="pbInitNo2" id="pbInitNo2" value="0">
<input type="hidden" name="pbInitNo3" id="pbInitNo3" value="0">
<input type="hidden" name="pbInitNo4" id="pbInitNo4" value="0">
<input type="hidden" name="pbInitNo5" id="pbInitNo5" value="0">
<iframe name="hiddenFrame" id="hiddenFrame" title="빈프레임" style="display:none;"></iframe> -->




</body>

</html>