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
					<a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/seoksu/menu/10157/bbs/20003/bbsPostList.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
					<a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/seoksu/menu/10157/bbs/20003/bbsPostList.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
					<a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/seoksu/menu/10157/bbs/20003/bbsPostList.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
				</div>
			</li>
			<li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('seoksu'); return false;"><span class="blind">현재화면 프린트</span></a></li>
		</ul>
	</div>
</div>



	<div id="contents" class="contentArea">
					

					<!--Real Contents Start-->

					
						<div class="summaryDesc">
							<div class="innerBox noImg">
								<div class="desc">
									<ul class="dot-list clearfix">
                                        <li>이곳은 도서관운영에 대한 건의사항을 접수하는 곳입니다.</li>
                                        <li>글쓰기는 홈페이지 회원만이 가능하며 7일 이내에 답변 받으실 수 있습니다.<br>
                                            (단, 관련법령 해석이 요구되는 글은 14일 이내)</li>
                                        <li>상업성 광고, 불건전한 내용, 특정인에 대한 비방, 명예훼손의 우려가 있는 게시물과 동일인이 유사한 내용을 반복게시 및 게시판의 운영취지에 맞지 않는 게시물은 「안양시 인터넷시스템 설치 및 운영 조례 제6조」에 따라 관리자가 임의로 삭제할 수 있습니다.</li>
                                        <li>개인정보 보호를 위해 이용시민께서는 이메일, 주민번호, 전화번호, 주소 등의 개인정보가 글 내용에 포함되지 않도록 주의하시기 바랍니다.</li>
                                    </ul>
								</div>
							</div>
						</div>
					

					<!-- 게시판 검색 -->
					<form name="searchForm" id="searchForm" method="get">
					<fieldset>
						<legend class="blind">게시글 검색 영역</legend>
						<div class="pageSearch">
							<div class="schForm w1">
								
								<select name="searchCondition" id="searchCondition" title="검색방법 선택" class="schSel">
									<option value="title">제목</option>
									<option value="contents">내용</option>
								</select>
								<input type="text" name="searchKeyword" id="searchKeyword" value="" title="검색어 입력" class="schKwd" placeholder="검색어 입력">
								<a href="#link" id="searchBtn" class="btn input">검색</a>
							</div>
						</div>
					</fieldset>
					</form>
					<!-- //게시판 검색 -->
					<!-- 게시판 목록 -->
					<div class="boardWrap">
						<table class="board-list">
							<caption>묻고답하기 목록</caption>
							<colgroup>
								<col class="no mobileHide">
								
								<col>
								<col style="width:12%">
								<col class="date mobileHide">
								
								<col style="width:70px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="mobileHide">번호</th>
									
									<th scope="col">제목</th>
									<th scope="col">작성자</th>
									<th scope="col" class="mobileHide">작성일</th>
									
									<th scope="col">답변</th>
								</tr>
							</thead>
							<tbody>
								
									
										<tr>
											<td class="mobileHide">
												2159
											</td>
											
											<td class="title">
												<a href="#javascript" onclick="javascript:fnDetail('23077'); return false;">3,4층 복도 소음</a>
												
												 <img src="/include/image/board/ico_lock.png" alt="비밀글">
											</td>
											<td>
												김*정
											</td>
											<td class="mobileHide">2022-12-14</td>

											

											<td class="state">
												
														완료
													
											</td>
										</tr>
									
										<tr>
											<td class="mobileHide">
												2158
											</td>
											
											<td class="title">
												<a href="#javascript" onclick="javascript:fnDetail('23037'); return false;">안녕하세요. 책구입 관련 문의드립니다.</a>
												
												 <img src="/include/image/board/ico_lock.png" alt="비밀글">
											</td>
											<td>
												박*주
											</td>
											<td class="mobileHide">2022-12-09</td>

											

											<td class="state">
												
														완료
													
											</td>
										</tr>
									
			
							</tbody>
						</table>
					</div>
					
					<!-- //게시판 목록 -->
					<!-- 페이징 -->
					<div class="pagingWrap">
						
							<p class="paging">
								<a href="javascript:fnList(1);" class="btn-paging first"><span class="blind">맨 첫 페이지로 가기</span></a>
<a href="javascript:fnList(1);" class="btn-paging prev"><span class="blind">이전 10개 보기</span></a>
<span class="current">1</span>
<a href="javascript:fnList(2);">2</a>
<a href="javascript:fnList(3);">3</a>
<a href="javascript:fnList(4);">4</a>
<a href="javascript:fnList(5);">5</a>
<a href="javascript:fnList(6);">6</a>
<a href="javascript:fnList(7);">7</a>
<a href="javascript:fnList(8);">8</a>
<a href="javascript:fnList(9);">9</a>
<a href="javascript:fnList(10);">10</a>
<a href="javascript:fnList(11);" class="btn-paging next"><span class="blind">다음 10개 보기</span></a>
<a href="javascript:fnList(216);" class="btn-paging last"><span class="blind">맨 마지막 페이지로 가기</span></a>


							</p>
						

						<a href="./add" id="registBtn" class="btn write themeBtn">글쓰기</a>
					</div>
					<!-- //페이징 -->

					<!-- End Of the Real Contents-->

				</div>
			</div>
		</div>
	</div>
		<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>