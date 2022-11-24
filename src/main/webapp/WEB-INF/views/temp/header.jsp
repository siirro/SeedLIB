<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <meta charset="UTF-8">
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    
<!-- CSS & JQUERY -->
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/button.css">
<link rel="stylesheet" href="/css/layout.css">
<link rel="stylesheet" href="/css/sub.css">
<link rel="shortcut icon" href="/images/favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<div id="topheader">
	<div id="indexColumn">
		<div id="snb">
			<div class="siteUtilGroup">

				<div id="libraryShortcut" class="libSite dropdown">
					<a href="#open" class="button" title="도서관 바로가기(축소됨)">도서관 바로가기</a>
					<ul>
						<li><a href="/">새싹도서관</a></li>
						<li><a href="/">쑥쑥도서관</a></li>
						<li><a href="/">새봄도서관</a></li>
						<li><a href="/">도란도란도서관</a></li>
						<li><a href="/">나무도서관</a></li>
					</ul>
				</div>

				<div id="siteMenu" class="siteMenu clearfix">
					<ul class="clearfix" style="text-shadow: 1px 1px 0px rgb(100 136 190 / 67%)">
					
					<c:choose>
						<c:when test="${not empty member}">
						<li><a href="/member/logout">로그아웃</a></li>
						<li><a href="/mypage/myIndex">마이페이지</a></li>
						
						</c:when>
					
					<c:otherwise>
					
						<li><a href="/member/login">로그인</a></li>
						<li><a href="/member/agree">회원가입</a></li>
						
					</c:otherwise>

						</c:choose>
						
						<li class="mobileHide"><a href="/sitemap">사이트맵</a></li>
					</ul>
				</div>
			</div>
		</div>

<script type="text/javascript">
	$(function(){
		$(".dropdown > a").click(function(){
			let $dropdownNav = $(this).siblings("ul");
			if($dropdownNav.css("display") == "none"){
				$(".dropdown > ul").hide();
				$dropdownNav.show();
				$(this).attr("title","도서관 바로가기(확장됨)");
			}else{
				$dropdownNav.hide();
				$(this).attr("title","도서관 바로가기(축소됨)");
			}
			return false;
		});
		$(".dropdown > ul > li:last-child a").focusout(function(){
			$(".dropdown > ul").hide();
		});
	});
</script>


		<div id="headerInner">
			<h1 id="logo"><a href="/"><img src="/images/logo200.png" alt="씨앗도서관"></a></h1>
<!-- 			<a href="#searchBoxOpen" id="btnSearchTop"><span class="blind">검색창열기</span></a>
 -->			<a href="/search" id="btnSearchTop"><span class="blind">검색창열기</span></a>
		</div>


		<div id="indexNavi" style="overflow: hidden;">
			<ul id="topmenu">
				<li id="gnb1" class="hehehe"> <a href="/search/simple"> <em>자료검색</em> </a>
					<ul style="display: none;"> 
						<li id="gnb1_1"><a href="/search/simple">소장자료검색</a></li> 
						<li id="gnb1_2"><a href="/search/category">주제별검색</a> </li> 
						<li id="gnb1_3"><a href="/search/newbook">신착자료검색</a> </li> 
						<li id="gnb1_4"><a href="/seoksu/menu/10141/contents/40010/contents.do">상호대차</a> </li>
					</ul> 
				</li> 

				<li id="gnb2" class="hehehe"> <a href="/seoksu/menu/10123/contents/40005/contents.do"> <em>문화참여</em> </a> 
					<ul style="display: none;"> 
						<li id="gnb2_1"><a href="/seoksu/menu/10124/program/30015/lectureList.do">문화행사신청</a> </li> 
						<li id="gnb2_2"><a href="/hope/hopeInfo">희망도서신청</a></li>
						<li id="gnb2_3"><a href="/donation/donInfo">소장도서기증</a></li> 
						<li id="gnb2_4"><a href="/studyroom/roomList">열람실 조회/예약</a></li> 
					</ul> 
				</li> 
				
				<li id="gnb4" class="hehehe"> <a href="/guide/manners"> <em>도서관안내</em> </a> 
					<ul style="display: none;"> 
						<li id="gnb3_1"><a href="/guide/manners">도서관예절</a> </li> 
						<li id="gnb3_2"><a href="/guide/time">이용시간</a> </li> 
						<li id="gnb3_3"><a href="/seoksu/menu/10137/program/30019/calendar.do">휴관일안내</a> </li> 
						<li id="gnb3_4"><a href="/guide/rule">대여규칙</a> </li> 
						<li id="gnb3_5"><a href="/guide/convenience">편의시설</a> </li> 
					</ul> 
				</li> 

				<li id="gnb4" class="hehehe"> <a href="/seoksu/menu/10133/bbs/20001/bbsPostList.do"> <em>도서관소개</em> </a> 
					<ul style="display: none;"> 
						<li id="gnb4_1"><a href="/seoksu/menu/10161/program/30020/dataStatus.do">자료현황</a> </li> 
						<li id="gnb4_2"><a href="/seoksu/menu/10161/program/30020/dataStatus.do">시설현황</a> </li> 
						<li id="gnb4_3"><a href="/seoksu/menu/10165/program/30021/staffList.do">조직정보</a> </li> 
						<li id="gnb4_4"><a href="/seoksu/menu/10166/contents/40024/contents.do">도서관관련법규</a> </li> 
						<li id="gnb4_5"><a href="/seoksu/menu/10167/contents/40038/contents.do">찾아오시는길</a> </li> 
					</ul> 
				</li> 
					
				<li id="gnb5" class="hehehe"> <a href="/seoksu/menu/10161/program/30020/dataStatus.do"> <em>도서관소식</em> </a> 
					<ul style="display: none;"> 
						<li id="gnb5_1"><a href="/seoksu/menu/10133/bbs/20001/bbsPostList.do">공지사항</a> </li> 
						<li id="gnb5_2"><a href="/seoksu/menu/10134/bbs/20002/bbsPostList.do">자주하는질문</a> </li> 
						<li id="gnb5_3"><a href="/seoksu/menu/10157/bbs/20003/bbsPostList.do">도서관에바란다</a> </li>
						<li id="gnb5_4"><a href="/seoksu/menu/10157/bbs/20003/bbsPostList.do">자유게시판</a> </li>
						<li id="gnb5_5"><a href="/seoksu/menu/10158/bbs/20004/bbsPostList.do">분실물센터</a> </li> 
					</ul> 
				</li> 
					
				<li id="gnb6" class="hehehe"> <a href="/mypage/myIndex"> <em>마이페이지</em> </a> 
					<ul style="display: none;"> 
						<li id="gnb6_1"><a href="#">나의정보</a> </li> 
						<li id="gnb6_2"><a href="/seoksu/menu/10171/program/30024/mypage/loanStatusList.do">도서이용내역</a> </li> 
						<li id="gnb6_4"><a href="/seoksu/menu/10178/program/30027/mypage/libraryOneLillStatusList.do">상호대차조회</a> </li> 
						<li id="gnb6_5"><a href="/seoksu/menu/10180/program/30029/mypage/bookcaseList.do">관심도서목록</a> </li> 
						<li id="gnb6_6"><a href="/mypage/hopeList">희망도서조회</a> </li> 
						<li id="gnb6_7"><a href="/mypage/donList">도서기증조회</a> </li> 
						<li id="gnb6_8"><a href="/seoksu/menu/10183/program/30015/mypage/lectureApplyList.do">문화행사신청조회</a> </li> 
						<li id="gnb6_10"><a href="/seoksu/menu/10186/bbs/20003/mypage/bbsPostList.do">나의게시글조회</a> </li> 
					</ul>
				</li> 
			</ul>
			
			<div id="submenuArea" style="width: 1357px; left: 0px;"></div>
		</div>
	</div>
</div>

<form action="../../search/simpleresult" name="topSearchForm" id="topSearchForm" method="get">
	<fieldset>
		<legend>통합자료 검색영역</legend>
		<div id="searchBox" class="searchBoxWrap">
			<p class="logo"><a href="/"><img src="/images/logo200.png" alt="씨앗도서관"></a></p>
			<div class="searchBox">
				<div class="keywordInput">
					<label for="topSearchKeyword" class="blind">검색어 입력</label>
					<input type="text" onkeyup="enterkey()" title="검색어 입력" id="topSearchKeyword" name="search" placeholder="검색어를 입력하세요.">
					<button type="button" id="topSearchBtn" class="btnSearch">검색</button>
					<!-- <button type="button" id="topSearchBtn" title="검색" class="unifiedSearchbtn btnSearch"> -->
					<a href="./search/detail" class="btnDetail themeBtn mobileHide" style="background: linear-gradient(to right, #9be15d, #00e3ae);">고급검색</a>
				</div>
			</div>
			<div id="topSearchBestKeyword" class="keywordPop mobileHide"></div>
		</div>
	</fieldset>
</form>

<a href="#searchTopClose" id="searchTopClose"><span class="blind">검색창닫기</span></a>

<script>
	$('input[type="text"]').keydown(function() {
		if (event.keyCode === 13) {
			event.preventDefault();
		};
	});

	$("#topSearchBtn").click(function(){

		if($("#topSearchKeyword").val().trim() ==''){
			alert("검색어를 입력해주세요.");
			$("#topSearchKeyword").focus();
			return false;
		}

		$("#topSearchForm").submit();
		// $("#pagingWrap").append('');
	})

	function enterkey(){
		if (window.event.keyCode == 13) {
			$("#topSearchBtn").click();
		}
	}

	// $(function(){
	// 	$("#btnSearchTop").click(fnTopSearchBestKeyword);
	// 	$("#topSearchBestKeyword, #topSearchKeyword").keypress(function (e){
	// 		if((e.keyCode || e.which) == 13){
	// 			fnTopSearch();
	// 			e.preventDefault();
	// 		}
	// 	});

	// 	$("#topSearchBtn").click(fnTopSearch);
	// });

	// function fnTopSearch() {
	// 	var form = document.topSearchForm;
	// 	if(isEmpty(form.searchKeyword.value)){
	// 		alert("검색어를 입력하세요.");
	// 		form.searchKeyword.focus();
	// 		return false;
	// 	}
	// 	if(form.topSearchCondition.value != ''){
	// 		form.action="/search/simpleresult";
	// 	}else {
			
	// 	}
	// 	form.submit();
	// }

	

	
</script>

<script src="/js/indexcopy.js"></script>