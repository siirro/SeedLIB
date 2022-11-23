<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>희망 도서 신청</title>
</head>
<body>
	<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
<div id="container" class="sub">	
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>신청안내</h3>
	</div>
</div>
<div id="contentGroup">
       <c:import url="../sideBar/BsideBar.jsp"></c:import>
<div id="contentcore">
<div class="naviandtitle">
	<h3>신청안내</h3>
	<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 문화참여 <i class="arrow"></i>희망도서신청<i class="arrow"></i>신청안내
	</div>
</div>

<div id="contents" class="contentArea">
					
<!--Forced tab Show Que-->
<div class="ttabWrap" style="display: block;">
	<div id="virtSelect" style="display: none;"><a href="#script">탭메뉴</a></div>
	<ul id="ttab3" class="tnb clearfix"> 
    <li id="tnb1_7_1" class="choiced"><a href="/hope/hopeInfo" class="current" title="선택된 탭" style="min-width: 479px;">신청안내</a> </li> 
    <li id="tnb1_7_2"><a href="/hope/setHope" style="min-width: 479px;">신청하기</a> </li> 
   </ul>
</div>
<!--Forced tab Show Que-->

<div id="popblackBG"></div>

					<!--Real Contents Start-->
					<!-- 자료검색_비치희망도서신청_신청안내 -->
<div class="summaryDesc">
<div class="innerBox">
<div class="img icoHope">&nbsp;</div>

<div class="desc">
<p>씨앗도서관 대출회원이면 1달에 10개도서관 통합 3권까지 희망도서신청이 가능합니다.<br>
희망도서는 아래의 선정 기준에 의해 선정 제외될 수 있습니다.</p>
</div>
</div>
</div>

<h4 class="htitle"><span class="themeFC">희망도서</span> 신청안내</h4>

<ul class="dot-list">
	<li><span>신청기간</span> : 매년 1월 1일부터 당해연도 예산 소진시 까지(마감일 별도 공지)</li>
	<li><span>신청자격</span> : 씨앗도서관 관외대출회원</li>
	<li><span>신청권수</span> : <span style="color:#ff0000;"><strong>6개 도서관 통합 1인 월 3권</strong></span></li>
	<li><span>소요기간</span> : 2~3주(자료에 따라 달라질 수 있음)</li>
</ul>

<h4 class="htitle"><span class="themeFC">희망도서</span> 신청 제한자료</h4>

<ul class="dot-list">
	<li>소장, 구입, 정리 중인 도서</li>
	<li>서지불명도서, 미간행도서, 비매품</li>
	<li>품절 및 절판도서, 고가도서(5만원 이상)</li>
	<li>발행년이 5년 이상 된 도서 (2017년 이후)<br>
	단, 컴퓨터, 과학, 신학문 분야는 출판된 지 3년 이상 된 도서 (2019년 이후)</li>
	<li>수험서, 학습지, 문제집, 참고서</li>
	<li>판타지소설·무협소설·인터넷소설·로맨스 소설류<br>
	단, 2차저작물로 생산되거나 수상작의 경우 신청 가능</li>
	<li>선정적이고 폭력적인 도서, 오락성이 강한 만화, 라이트노벨</li>
	<li>연감이나 백서·보고서·참고도서·대학교재 및 특정분야 전문도서<br>
	대형 인터넷 서점(교보문고, 알라딘, yes24)중 두 곳 이상에서 분류시 선정 제외</li>
	<li>정기간행물, 전자자료</li>
	<li>전집류, 신청도서관에 소장하고 있지 않은 시리즈의 후속권</li>
	<li>형태부적합도서(스프링제본, 색칠, 스티커, 교구, 리플릿, 입체도서 등)</li>
	<li>특정한 주제, 단체, 출판사 자료만 집중 신청 한 경우</li>
	<li>동일도서를 다수의 도서관에 신청 한 경우</li>
	<li>기존 출판도서에 단순 커버, 양장만 교체된 도서</li>
	<li>대형 인터넷 서점(교보문고, 알라딘, yes24)에서 판매하지 않는 독립출판물, POD도서</li>
	<li>기타 씨앗도서관 자료선정기준에 부적합하다고 판단되는 도서<br>
	※ 제외기준 중 세부적인 부분은 각 도서관 별 장서구성방향에 따라 달라질 수 있습니다.</li>
</ul>

<h4 class="htitle"><span class="themeFC">입고</span> 진행상황 알림</h4>

<ul class="dot-list">
	<li>희망도서의 처리여부는 [마이페이지&gt;희망도서신청조회] 페이지에서 확인가능합니다.
	<ul class="dash-list">
		<li>입고완료 : 구입결정 후 주문된 상태</li>
		<li>신청 중 : 관리자가 신청 내용을 확인하고 검토 중인 상태</li>
		<li>반려 : 희망도서 선정 제외기준에 해당되어 구입 취소 상태(이와 관련 문의사항은 [도서관 소개-도서관에 바란다] 에서 문의 바람)</li>
	</ul>
	</li>
</ul>

<p class="ref mt10">입수 후 등록 및 정리 작업이 완료되면 신청자에게 ‘희망도서 이용 알림’ 문자발송<br>
단, 이용 알림 통보 후 3일 동안 대출가능하며 3회 미대출 시 3개월간 신청정지</p>
&nbsp;

<dl class="linkBox">
	<dt class="txtArea">희망도서신청 또는 조회를 하려면 버튼을 누르세요</dt>
	<dd class="btnArea"><a class="btn" href="/mypage/hopeList">신청조회</a> <a class="btn write themeBtn" href="/hope/setHope" onclick="">신청하기</a></dd>
</dl>

					<!-- End Of the Real Contents-->

				</div>
			</div>
			</div>
</div>
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->			
</body>
</html>