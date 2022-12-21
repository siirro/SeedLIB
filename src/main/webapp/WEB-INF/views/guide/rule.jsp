<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <link rel="stylesheet" href="/css/sub.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/layout.css">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
 <link rel="shortcut icon" href="/images/favicon.png">
    <title>대여규칙 : 씨앗도서관 ☘</title>
</head>
<body>
    <div class="wrap">
         <!-- header -->
        <c:import url="../temp/header.jsp"></c:import>
     <!-- header -->
     
     
     <div id="container" class="sub">
		
<div class="sVisualWrap">
	<div class="sVisual">
		<h3>대출/반납/예약</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	<c:import url="../sideBar/CsideBar.jsp"></c:import>

</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>대출/반납/예약</h3>
	<div class="navi"><a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 이용안내 <i class="arrow"></i>도서관이용안내<i class="arrow"></i>대출/반납/예약</div>
	
</div>


				<div id="contents" class="contentArea">


<div id="popblackBG"></div>

					<!--Real Contents Start-->
					<!-- 이용안내_도서관이용안내_대출/반납/예약 -->
<h4 class="htitle"><span class="themeFC">대출/반납</span> 안내</h4>

<table class="tbl">
	<caption>대출/반납 안내 : 대출기한 및 권수, 동일도서 재대출, 대출정지로 구성된 표</caption>
	<colgroup>
		<col style="width: 20%;">
		<col>
		<col>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">구분</th>
			<th scope="col">개인회원</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>대출조건</td>
			<td class="ta_l" colspan="2">씨앗 도서관 회원</td>
		</tr>
		<tr>
			<td>대출기한 및 권수</td>
			<td class="ta_l">
			<ul class="dot-list">
				<li>1인 5권 이내</li>
				<li>14일간 (2주)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>도서 연장</td>
			<td class="ta_l" colspan="2">예약이 없을 시 1주일 연장 가능</td>
		</tr>
		<tr>
			<td>반납</td>
			<td class="ta_l" colspan="2">
			<ul class="dot-list">
				<li>공공도서관 대출도서 → 공공도서관 반납(타 공공도서관 반납가능)</li>
			</ul>
			<div>&nbsp;&nbsp;※ 작은도서관 반납불가</div>
			<ul class="dot-list">
				<li>스마트도서관 대출도서 → 해당 스마트도서관 반납</li>
			</ul>
			<div>&nbsp;&nbsp;※ 공공·작은도서관 반납불가</div>
			</td>
		</tr>
		<tr>
			<td>대출정지</td>
			<td class="ta_l" colspan="2">
			<ul class="dot-list">
				<li>대출기한 연체시 연체한 일수</li>
				<li>회원증 분실시 재발급 신청일로부터 1일</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>

<h4 class="htitle"><span class="themeFC">반납연기</span> 안내</h4>

<table class="tbl">
	<caption>반납연기 안내 : 횟수 및 기간, 방법, 제한사항으로 구성된 표</caption>
	<colgroup>
		<col style="width: 20%;">
		<col>
		<col>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">구분</th>
			<th scope="col">내용</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>횟수 및 기간</td>
			<td class="ta_l">
			<ul class="dot-list">
				<li>1회 반납예정일로부터 7일 연기 가능</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>방법</td>
			<td class="ta_l">
			<ul class="dot-list">
				<li>홈페이지 마이페이지&gt;도서이용내역&gt;대출현황에서 반납연기(대출 후 다음날부터 가능)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>제한사항</td>
			<td class="ta_l">
			<ul class="dot-list">
				<li>다른 이용자가 대출예약한 경우</li>
				<li>반납일이 경과했거나 반납일이 경과한 다른 연체도서가 있는 경우</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>

<h4 class="htitle"><span class="themeFC">도서 예약</span> 안내</h4>

<div class="tblWrap">
<table class="tbl">
	<caption>도서 예약 안내 : 가능 권수, 예약방법으로 구성된 표</caption>
	<colgroup>
		<col style="width: 20%;">
		<col>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">구분</th>
			<th>내용</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>가능 권수</td>
			<td class="ta_l pl20">
			<ul class="dot-list">
				<li>3권<br>
				※대출을 원하는 책이 대출중인 경우 예약가능(대출가능도서는 예약불가)</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>예약방법</td>
			<td class="ta_l pl20">
			<ul class="dot-list">
				<li>홈페이지 로그인, 자료검색 후 도서예약신청 버튼 눌러서 예약</li>
			</ul>
			</td>
		</tr>
		<tr>
			<td>제한사항</td>
			<td class="ta_l pl20">
			<ul class="dot-list">
				<li>대출가능도서는 예약불가</li>
				<li>가족회원의 경우 가족구성원이 대출중인 도서는 예약불가</li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>
</div>

					<!-- End Of the Real Contents-->

				</div>
			</div>
		</div>
	</div>
     
     </div>
\  <!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->    

</body>
</html>