<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="/images/favicon.png">
    <title>소장 도서 기증 : 씨앗도서관 ☘️</title>
</head>
<body>
	<!-- header -->
    <c:import url="../../temp/header.jsp"></c:import>
	<div id="container" class="sub">	
		<div class="sVisualWrap">
			<div class="sVisual">
				<h3>결제내역</h3>
			</div>
		</div>
		<div id="contentGroup">
			<div id="lnbNav" class="navArea">
				<h2> 마이페이지 </h2>
				<ul id="lnb" class="lnb"> 
					<li id="lnb6_1"><a href="/intro/menu/10074/program/30023/mypage/myInfo.do" class="current">나의정보</a> </li> 
					<li id="lnb6_2"><a href="/intro/menu/10076/program/30024/mypage/loanStatusList.do" class="on">도서이용내역</a> 
					<ul class="MkTab submenu" style="display: none;"> 
						<li id="lnb6_2_1"><a href="/intro/menu/10076/program/30024/mypage/loanStatusList.do">대출현황</a> </li> 
						<li id="lnb6_2_2"><a href="/intro/menu/10077/program/30025/mypage/reservationStatusList.do">예약현황</a> </li> 
						<li id="lnb6_2_3"><a href="/intro/menu/10078/program/30026/mypage/loanHistoryList.do">대출이력</a> </li> 
					</ul>
					</li> 
					<li id="lnb6_4"><a href="/intro/menu/10083/program/30027/mypage/libraryOneLillStatusList.do" class="on">상호대차조회</a> 
					<ul class="MkTab submenu" style="display: none;"> 
						<li id="lnb6_4_1"><a href="/intro/menu/10083/program/30027/mypage/libraryOneLillStatusList.do">신청현황</a> </li> 
						<li id="lnb6_4_2"><a href="/intro/menu/10084/program/30028/mypage/libraryOneLillHistoryList.do">상호대차이력</a> </li> 
					</ul>
					</li> 
					<li id="lnb6_5"><a href="/intro/menu/10085/program/30029/mypage/bookcaseList.do">관심도서목록</a> </li> 
					<li id="lnb6_6"><a href="/intro/menu/10086/program/30030/mypage/myPopularBookList.do">추천도서목록</a> </li> 
					<li id="lnb6_7"><a href="/intro/menu/10087/program/30008/mypage/hopeBookList.do">희망도서신청조회</a> </li> 
					<li id="lnb6_8"><a href="/intro/menu/10088/program/30015/mypage/lectureApplyList.do">문화행사신청조회</a> </li> 
				</ul>
			</div>
			<div id="contentcore">
				<div class="naviandtitle">
					<h3>결제내역</h3>
					<div class="navi">
						<a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i>마이페이지<i class="arrow"></i>결제내역
					</div>
				</div>
				<div id="contents" class="contentArea">
					<div id="popblackBG"></div>
					<!--Real Contents Start-->

					<!-- 바구니 제본 신청 서비스 안내 -->
					<h5 class="stitle">🌱바구니 자료 신청 안내</h5>
					<div class="descBox mt10 fsize16">
						<ul class="clearfix">
							<li>① 신청은 1회 최대 5책을 선택하여 신청할 수 있으며, 다운로드 서비스는 제한 없이 이용하실 수 있습니다.</li>
							<li>② 바구니는 신청을 위해 임시보관하며, 자료는 일주일 후 자동 삭제됨</li>
							<li>③ 1983년 이전 발행 자료는 지질이 약하고 산성화가 진행되어 별도의 이용절차로 운영하고 있습니다.
								<!-- 줄바꿈 -->
								<br>
								<!-- 스페이스바 공백 -->
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								씨앗도서관의 자료는 후대에 전승되는 소중한 문화유산입니다. 여러분들의 협력을 부탁 드립니다.
							</li>
						</ul>
					</div>
					<br>
					<br>
					<!-- 테이블 시작 -->
					<div class="boardWrap">
						<table class="board-list">
							<caption>묻고답하기 목록</caption>
							<colgroup>
								<col class="no mobileHide">
								<col>
								<col class="date mobileHide">
								<col style="width:70px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="mobileHide">번호</th>
									<th scope="col">도서 제목</th>
									<th scope="col" class="mobileHide">작성일</th>
									<th scope="col">결제상태</th>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
						</table>
					</div>

					<dl class="linkBox">
						<dt class="txtArea">소장도서기증 또는 조회를 하려면 버튼을 누르세요</dt>
						<dd class="btnArea"><a class="btn" href="/mypage/donList">신청조회</a> <a class="btn write themeBtn" href="/donation/setDon" onclick="">신청하기</a></dd>
					</dl>
				</div>
				<!-- End Of the Real Contents 2 -->
			</div>
		</div>
	</div>			
<!-- footer -->
<c:import url="../../temp/footer.jsp"></c:import>
<!-- footer -->
</body>
</html>