<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>소장 도서 기증</title>
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
	<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 문화참여 <i class="arrow"></i>소장도서기증<i class="arrow"></i>신청안내
	</div>
</div>



				<div id="contents" class="contentArea">
					
<!--Forced tab Show Que-->
<div class="ttabWrap" style="display: block;">
	<div id="virtSelect" style="display: none;"><a href="#script">탭메뉴</a></div>
	<ul id="ttab3" class="tnb clearfix"> 
    <li id="tnb1_7_1" class="choiced"><a href="/donation/donInfo" class="current" title="선택된 탭" style="min-width: 479px;">신청안내</a> </li> 
    <li id="tnb1_7_2"><a href="/donation/setDon" style="min-width: 479px;">신청하기</a> </li> 
   </ul>
</div>
<!--Forced tab Show Que-->
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
						<!-- 독서정보_도서기증안내 -->
	<h4 class="htitle"><span class="themeFC">도서관 기증자료</span> 운영기준</h4>
	
	<h5 class="stitle">목적 및 정의</h5>
	<ul class="decimal-list">
		<li>이 기준은 “씨앗도서관”(이하 “도서관”이라 한다) 장서관리의 효율성과 기증자료 업무의 일관성을 기하기 위하여 관련 기준을 규정하는데 있다.</li>
		<li>기증자료란 개인 또는 단체로부터 무상으로 받은 도서 및 비도서를 말한다.</li>
	</ul>
	
	<h5 class="stitle">대상자료</h5>
	<p>공공도서관의 특성에 맞게 공중의 열람과 이용가치가 높은 자료로써 다음 각 호의 자료로 한다.</p>
	<ul class="decimal-list mt10">
		<li>일반 및 어린이 문학서, 교양˙학술서</li>
		<li>당해년도 기준 5년 이내 출판된 자료</li>
		<li>법률, 컴퓨터, 어학관련 등 최신성이 필요한 도서는 당해연도 기준 2년 이내 출판된 도서(단, 지속적으로 이용 가능한 자료는 예외)</li>
		<li>비도서자료(CD, DVD 등)</li>
		<li>점자도서, 큰 글자 등 장애인을 위한 도서</li>
		<li>다문화자료, 한국을 소개하는 외국어자료</li>
	</ul>
	<p>(단, 다음 각 호의 자료는 기증자료 접수에서 제외한다.)</p>
	<div class="descBox mt10 fsize16">
		<ul class="clearfix">
			<li>① 발행년도가 오래되어 자료의 활용도가 떨어지는 자료</li>
			<li>② 낙서 등 훼손이 심한 자료</li>
			<li>③ 복사하여 제본된 자료</li>
			<li>④ 낱권이 빠진 전집</li>
			<li>⑤ 개정판이 출판되어 효용성이 없는 자료</li>
			<li>⑥ 과년도 연속간행물, 수험서, 초˙중˙고 학습 교재, 성인만화</li>
			<li>⑦ 공공성에 위배되는 내용의 자료</li>
			<li>⑧ 본인저작물로써 도서관장서로 부적합한 경우</li>
			<li>⑨ 종교편향적 자료로써 도서관장서로 부적합한 경우</li>
			<li>⑩ 기타 도서관의 목적에 부합하지 않는 자료 또는 기 소장자료와 다수 중복되는 자료</li>
		</ul>
	</div>
	
	<h5 class="stitle">기증자료의 관리</h5>
	<ul class="decimal-list">
		<li><span>접수 및 등록</span>
			<ul class="dash-list">
				<li>도서관에 기증된 자료는 기증도서부에 등재한 후 자료상태 및 내용을 검토하여 적정한 자료를 선별하여 정리 등록절차를 마친 후 열람하게 한다.</li>
			</ul>
		</li>
		<li><span>재기증</span>
			<ul class="dash-list">
				<li>출판년도와 자료 보존상태가 양호한 기증자료 중 도서관 소장자료와 중복되는 복본자료는 사회복지기관, 군부대, 문고 및 각종 단체에 재기증할 수 있다.</li>
			</ul>
		</li>
		<li><span>교환코너 운영</span>
			<ul class="dash-list">
				<li>기증받은 자료 중 출판년도가 오래된 도서, 또는 다수의 복본이 있는 경우 도서관 여건에 따라 교환코너를 운영하여 시민들에게 자유로운 도서 교환의 장으로 제공 할 수 있다.</li>
			</ul>
		</li>
		<li><span>위의 1-3항에 해당되지 않는 자료</span>는 도서관 행사 및 전시에 활용 가능하며, 기타 자료는 폐기 할 수 있다.</li>
	</ul>
	
	<h5 class="stitle">기증방법 및 기증자 예우</h5>
	<ul class="decimal-list">
		<li>온라인 홈페이지 [메인-소장도서기증-신청하기] 메뉴에서 기증신청을 합니다.</li>
		<li>도서관에 방문(평일 09:00~18:00), 우편 발송, 우체국 택배(착불) 등의 방법으로 자료를 보냅니다.</li>
		<li>기증자료의 양이 많거나, 신체장애 등으로 인하여 기증자의 요구가 있을 경우 도서관측에서 직접 방문하여 자료를 수령할 수 있다.</li>
		<li>기증자료 등록시 기증자의 성명을 표제지 이면 상단에 기재하여 기증의 뜻을 기리도록 한다.</li>
		<li>『도서관 기증자료 운영기준』에 준하는 자료를 기증한 기증자 명단을 매달 홈페이지에 게시하여 그 뜻을 널리 홍보한다.</li>
	</ul>
						<!-- End Of the Real Contents-->
	
					</div>

<dl class="linkBox">
	<dt class="txtArea">소장도서기증 또는 조회를 하려면 버튼을 누르세요</dt>
	<dd class="btnArea"><a class="btn" href="/mypage/donList">신청조회</a> <a class="btn write themeBtn" href="/donation/setDon" onclick="">신청하기</a></dd>
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