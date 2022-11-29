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
		<h3>도서관소식</h3>
	</div>
</div>
		<div id="contentGroup">
			
<div id="lnbNav" class="navArea">
	<h2> 이용안내 </h2>
	<ul id="lnb" class="lnb"> 
  <li id="lnb4_1"><a href="/intro/menu/10037/bbs/20001/bbsPostList.do" class="current">도서관소식</a> </li> 
  <li id="lnb4_2"><a href="/intro/menu/10038/bbs/20002/bbsPostList.do">자주하는질문</a> </li> 
  <li id="lnb4_3"><a href="/intro/menu/12140/contents/41161/contents.do" class="on">도서관이용안내</a> 
   <ul class="MkSub submenu" style="display: none;"> 
    <li id="lnb4_3_1"><a href="/intro/menu/12140/contents/41161/contents.do">도서관예절</a> </li> 
    <li id="lnb4_3_2"><a href="/intro/menu/10040/contents/40027/contents.do">이용시간</a> </li> 
    <li id="lnb4_3_3"><a href="/intro/menu/10041/program/30019/calendar.do">휴관일안내</a> </li> 
    <li id="lnb4_3_4"><a href="/intro/menu/10042/contents/40008/contents.do">회원가입</a> </li> 
    <li id="lnb4_3_5"><a href="/intro/menu/10043/contents/40009/contents.do">대출/반납/예약</a> </li> 
   </ul> </li> 
  <li id="lnb4_4"><a href="/intro/menu/10044/contents/40010/contents.do">상호대차</a> </li> 
  <li id="lnb4_5"><a href="/intro/menu/10045/contents/40011/contents.do">모바일앱</a> </li> 
  <li id="lnb4_6"><a href="/intro/menu/10046/contents/40012/contents.do">스마트도서관</a> </li> 
  <li id="lnb4_7"><a href="/intro/menu/10048/contents/40013/contents.do" class="on">책배달서비스</a> 
   <ul class="MkSub submenu" style="display: none;"> 
    <li id="lnb4_7_1"><a href="/intro/menu/10048/contents/40013/contents.do">책바다</a> </li> 
    <li id="lnb4_7_2"><a href="/intro/menu/10049/contents/40014/contents.do">책나래</a> </li> 
    <li id="lnb4_7_3"><a href="/intro/menu/10050/contents/40015/contents.do">두루두루</a> </li> 
    <li id="lnb4_7_4"><a href="/intro/menu/10051/contents/40016/contents.do">내생애첫도서관</a> </li> 
   </ul> </li> 
  <li id="lnb4_8"><a href="/intro/menu/10053/contents/40017/contents.do" class="on">전자도서관</a> 
   <ul class="MkSub submenu" style="display: none;"> 
    <li id="lnb4_8_1"><a href="/intro/menu/10053/contents/40017/contents.do">전자책</a> </li> 
    <li id="lnb4_8_2"><a href="/intro/menu/12203/contents/41221/contents.do">구독형 전자책 (경기도)</a> </li> 
    <li id="lnb4_8_3"><a href="/intro/menu/10054/contents/40018/contents.do">오디오북</a> </li> 
    <li id="lnb4_8_4"><a href="/intro/menu/10057/contents/40021/contents.do">학술논문</a> </li> 
    <li id="lnb4_8_5"><a href="/intro/menu/10058/contents/40022/contents.do">한국학</a> </li> 
    <li id="lnb4_8_6"><a href="/intro/menu/10056/contents/40020/contents.do">도서요약</a> </li> 
    <li id="lnb4_8_7"><a href="/intro/menu/10055/contents/40019/contents.do">인문학강의</a> </li> 
    <li id="lnb4_8_8"><a href="/intro/menu/10059/contents/40023/contents.do">이러닝</a> </li> 
    <li id="lnb4_8_9"><a href="/intro/menu/11105/contents/40109/contents.do">전자잡지</a> </li> 
    <li id="lnb4_8_10"><a href="/intro/menu/11106/contents/40110/contents.do">IT강좌</a> </li> 
   </ul> </li> 
 </ul>
</div>

			<div id="contentcore">
				



<div class="naviandtitle">
	<h3>도서관소식</h3>
	<div class="navi"><a href="/intro/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 이용안내 <i class="arrow"></i>도서관소식</div>
	<div class="snsFarm">
		<ul class="snsBtnArea clearfix">
			<li>
				<a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
				<div id="snsGroup" class="snsList clearfix">
					<a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
					<a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
					<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/intro/menu/10037/bbs/20001/bbsPostDetail.do?searchCategory=&amp;manageCd=ALL&amp;currentPageNo=1&amp;postIdx=22986'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
					<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/intro/menu/10037/bbs/20001/bbsPostDetail.do?searchCategory=&amp;manageCd=ALL&amp;currentPageNo=1&amp;postIdx=22986'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
					<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/intro/menu/10037/bbs/20001/bbsPostDetail.do?searchCategory=&amp;manageCd=ALL&amp;currentPageNo=1&amp;postIdx=22986'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
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

<script src="/include/js/clipboard.min.js"></script>
<script>
	$('#sns').click(function(e) {
		$.ajax({
			type: "POST",
			url: "/cmmn/share/shortUrl.do",
			dataType : "json",
			data: { "url" : "https://lib.anyang.go.kr/intro/menu/10037/bbs/20001/bbsPostDetail.do?searchCategory=%26manageCd=ALL%26currentPageNo=1%26postIdx=22986"},
			async: false,
			error : function (request, status, error){
				//alert("에러코드: " + request.status + "\r\n메시지: " + request.responseText);
			},
			success: function(data) {
				//$("#shortUrl").html(data.url);
				$("#qrcodeImg").html('<img src="' + data.url + '.qr" alt="QR코드 : https://lib.anyang.go.kr/intro/menu/10037/bbs/20001/bbsPostDetail.do?searchCategory=%26manageCd=ALL%26currentPageNo=1%26postIdx=22986" >');
				$("#sns1").attr('data-clipboard-text', data.url);
			}
		});
	});

	function fnShorturlCopy() {
		var clipboard = new ClipboardJS('#sns1');
		alert('단축주소가 복사되었습니다.');
		return false;
	}
</script>
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
					<!-- 게시글 상세화면 -->
					<div class="boardWrap">
						<table class="board-view">
							<caption>도서관소식 상세화면 : 제목, 도서관, 작성일, 조회수, 첨부파일, 내용으로 구성</caption>
							<colgroup>
							<col style="width:20%">
							<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">제목</th>
									<td>2022년 호계도서관 송년의 달 행사 안내 </td>
								</tr>
								
									<tr>
										<th scope="row">도서관</th>
										<td>호계도서관</td>
									</tr>
								
								<tr>
									<th scope="row">작성일</th>
									<td>2022-11-24</td>
								</tr>
								
								<tr>
									<th scope="row">조회수</th>
									<td>146</td>
								</tr>
								
									<tr>
										<th scope="row">첨부파일</th>
										<td>
											
										</td>
									</tr>
								
								<tr>
									<td colspan="2" class="content">
										<strong>2022년 송년의 달을 맞이하여 호계도서관에서는 다양한 행사를 준비하였습니다.<br>
이용자분들의 많은 관심 부탁드립니다. 감사합니다.</strong><br>
<br>
<strong><span style="background-color:#f1c40f;">ㅁ '계묘년(</span></strong><span style="background-color:#f1c40f;">癸卯年</span><strong><span style="background-color:#f1c40f;">)' 맞이 토끼책 대출하고 책표지 종이가방 만들기</span></strong><br>
&nbsp; &nbsp; - 일시 : 12.6.(화) ~ 재료 소진 시까지<br>
&nbsp; &nbsp; - 대상 : 안양시민 100명<br>
&nbsp; &nbsp; - 장소 : 호계도서관 별관 1층 어린이자료실<br>
&nbsp; &nbsp; - 내용 : 계묘년의 주인공인 토끼가 등장하는 책을 대출하는 이용자에게 책표지 가방을 만들어 볼 수 있는 기회를 제공<br>
<br>
<strong><span style="background-color:#f1c40f;">ㅁ 2023, 나의 북(book)킷리스트 소개하기&nbsp;</span></strong><br>
&nbsp; &nbsp; - 일시 : 12.6.(화) ~ 12.25.(일)<br>
&nbsp; &nbsp; - 대상 : 안양시민<br>
&nbsp; &nbsp; - 장소 : 본관 1층 로비<br>
&nbsp; &nbsp; - 내용 : 새해에는 꼭 읽고 싶은 나만의 책 목록을 적고 설치된 게시판에 붙여 내용 공유하기&nbsp;<br>
<br>
<b><span style="background-color:#f1c40f;">ㅁ 『아빠 쉬는 날』 그림책 원화전시&nbsp;</span></b><br>
&nbsp; &nbsp; - 일시 : 12.6.(화) ~ 12.25.(일)<br>
&nbsp; &nbsp; - 대상 : 안양시민<br>
&nbsp; &nbsp; - 장소 : 본관 1층 로비<br>
&nbsp; &nbsp; - 내용 : 상상만발 책그림전 당선 및 북스타트 도서 선정작. 차야다 작가의 아빠 쉬는 날 원화전시<br>
&nbsp;
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //게시글 상세화면 -->

					<div class="openInfo">
						<dl>
							<dt><img src="../../../../images/public.jpg" alt="open 공공누리 공공저작물 자유이용허락"></dt>
							<dd>본 공공저작물은 "공공누리" <strong>제 4유형 : 출처표시 + 상업적 이용금지 + 변경금지</strong> 조건에 따라 이용 할 수 있습니다.</dd>
						</dl>
					</div>

					<div class="btnGroup">
						<a href="#none" id="listBtn" class="btn list">목록</a>
					</div>
					
					

















<dl class="prevNext">
	
			<dt class="prev">이전글</dt>
			<dd class="listx">이전글이 없습니다.</dd>
		
	
			<dt class="next"><a href="#javascript" onclick="fnDetail('22983');">다음글</a></dt>
			<dd class="listx"><a href="#javascript" onclick="fnDetail('22983');">어린이도서관 ★송년의 달★ 행사 운영 안내</a></dd>
		
</dl>

					<!-- End Of the Real Contents-->
				</div>
			</div>
		</div>
	</div>


<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>

</div>


</body>
</html>