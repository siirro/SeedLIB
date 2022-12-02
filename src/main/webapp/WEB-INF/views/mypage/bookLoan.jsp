<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    <link rel="stylesheet" href="/css/mypage_book.css">
    
    <script type="text/javascript" defer src="/js/common.js"></script>
    <script type="text/javascript" defer src="/js/bookDetail.js"></script>
    <script type="text/javascript" defer src="/js/bookLikeShelf.js"></script>
    <script type="text/javascript" defer src="/js/bookLoan.js"></script>

    <link rel="icon" href="/images/favicon.png">
	
    <title>도서 이용 내역 : 씨앗도서관 ☘️ </title>
</head>

<c:import url="../temp/header.jsp"></c:import>

<body>
	<div id="container" class="sub">	
		<div class="sVisualWrap">
			<div class="sVisual">
				<h3>신청하기</h3>
			</div>
		</div>
		<div id="contentGroup">
			<c:import url="../sideBar/FsideBar.jsp"></c:import>
		
			<div id="contentcore">
				<div class="naviandtitle">
					<h3>도서 이용 내역</h3>
					<div class="navi">
						<a href="../" title="홈으로 이동" class="home">
							<span class="blind">홈</span>
						</a>
						<i class="arrow"></i> 마이페이지
						<i class="arrow"></i>도서 이용 내역
					</div>
				</div>
				
				<div id="divWrapper">
                    <section id="divContents">
                        <div class="sub-title cf box">
                            <h2 id="divTitle" class="fl">대출 현황</h2>
                            <div class="breadCrumb fr">
                                <ul>	
                                    <li class="home"><span></span></li>
                                    <li><a href="/mypage/myIndex">마이페이지</a></li><li class="currentPage">대출 현황</li>
                                </ul>
                            </div>
                        </div>
                        
                        <div id="divTabMenu" class="mThumbnailScroller _mTS_1 mTS-buttons-out mTS_no_scroll auto-mTS-x-hover-50-none">
                            <div>
                                <div id="mTS_1" class="mTSWrapper mTS_horizontal">
                                    <ul class="mTSContainer" id="mTS_1_container" style="position: relative; top: 0px; left: 0px; width: 1008px;">				
                                        <li class="selected mTSThumbContainer"><a href="/mypage/bookLoan" title="대출">대출</a></li>		
                                        <li class="mTSThumbContainer"><a href="/mypage/bookReserve" title="예약">예약</a></li>
                                        <li class="mTSThumbContainer"><a href="/mypage/bookMutual" title="상호대차">상호대차</a></li>

                                        <li class="mTSThumbContainer"><a href="/lecture/myLecture" title="프로그램신청내역">프로그램신청내역</a></li>
                                        
                                        <li class="mTSThumbContainer"><a href="/shelf/list" title="책꽂이">책꽂이</a></li>
                                        <li class="mTSThumbContainer"><a href="/mypage/infographics" title="독서통계">독서통계</a></li>
                                    </ul>
                                </div>
                            </div>
                        
                            <div class="divTabMenu2">
                                <ul class="tab">
                                    <li class="on"><a href="/mypage/bookLoan">대출현황</a></li>
                                    <li><a href="/mypage/bookLoanHistory">이전 대출내역</a></li>
                                </ul>
                            </div>
                        
                            <div id="divContent">
                                <h3 class="skip">대출현황</h3>
                            
                                <!-- Content Search -->
                                <div class="loanList" id="tab1">
                                    <div class="searchArea">
                                        <p class="limitSearchBtn"><a href="#">선택조건으로 조회</a></p>
                                        <form id="form" name="form" action="/mypage/bookLoan" method="get" onsubmit="return isValidDate(this);">
                                        <input type="hidden" name="pn" value="1">
                                        <fieldset>
                                            <legend>검색</legend>
                                            <span class="bunch">
                                                <label for="si" class="skip">검색어&nbsp;</label>
                                                <select id="si" name="si" class="selectBox1" title="검색항목">
                                                    <option value="title">제목</option>
                                                    <option value="author">저자</option>
                                                </select>
                                                <input id="sw" name="sw" class="inputTextType1 sw" title="검색어 입력" type="text" value="" size="20" maxlength="100">
                                            </span>
                                            <span class="bunch">
                                                <label for="dtf" class="skip">대출일&nbsp;</label>
                                                <input id="dtf" name="dtf" class="datePicker hasDatepicker" title="대출기간검색 시작일(20160101)" type="text" value="" size="8" maxlength="8"> ~
                                                <input id="dtt" name="dtt" class="datePicker hasDatepicker" title="대출기간검색 종료일(20160131)" type="text" value="" size="8" maxlength="8">
                                            </span>
                                            <span class="bunch">
                                                <label for="oi" class="skip">정렬&nbsp;</label>
                                                <select id="oi" name="oi" class="selectBox1" title="정렬 검색항목">
                                                    <option value="title">제목</option>
                                                    <option value="author">저자</option>
                                                    <option value="loan_date">대출일</option>
                                                </select>
                                                <select id="os" name="os" class="selectBox1" title="정렬 순서">
                                                    <option value="asc">오름차순</option>
                                                    <option value="desc">내림차순</option>
                                                </select>
                                            </span>
                                            <input type="submit" class="btnType5" title="조회" value="조회">
                                        </fieldset>
                                        </form>
                                    </div>

                                    <!-- Content Summary -->
                                    <h4 class="skip">목록</h4>
                                    <div class="listInfo">
                                        <div class="listInfo1">
                                            <p class="totalCnt">총 <span class="totalcount">${count}</span> 건</p>
                                        </div>
                                    </div>
                                
                                    <!-- Content List -->
                                    <form id="frm" name="frm" method="post" action="/mypage/bookLoan" onsubmit="return checked(this);">
                                        <div class="listTable">
                                            <table class="mobileTable default">
                                                <thead>
                                                    <tr>
                                                        <th scope="col" class="first_child footable-first-column">
                                                        	<input type="checkbox" name="all" value="checkbox" onclick="checkedAll(this, 'frm', 'checkbox');" title="전체선택">
                                                        </th>
                                                        
                                                        <th scope="col" data-class="expand">제목</th>
                                                        <th scope="col" data-hide="phone">저자</th>
                                                        <th scope="col" data-hide="phone">isbn</th>
                                                        <th scope="col" data-hide="phone">대출일</th>
                                                        <th scope="col" data-hide="phone">반납<br>예정일</th>
                                                        <th></th>
                                                        <th scope="col" data-hide="phone" class="last-child footable-last-column">연장횟수</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                  	<c:forEach items="${li}" var="book">
                                                    	<tr>
                                                    		<c:if test="${book} != null">
                                                    			<td>${book.title}</td>
                                                    			<td>${book.writer}</td>
                                                    			<td>${book.isbn}</td>
                                                    			<td>${book.loanVOs[3].loanSDate}</td>
                                                    			<td>${book.loanVOs[3].loanLDate}</td>
                                                    			<td>
                                                    				<button type="button" class="btn white small" id="Btn" title="도서반납">도서반납</button>
                                                    			</td>
                                                    			<td>${book.loanVOs[7].extension}</td>
                                                    			<td>
                                                    				<button type="button" class="btn white small" id="Btn" title="대출연장">대출연장</button>
                                                    			</td>
                                                    		</c:if>
                                                    		
                                                    		<c:otherwise>
	                                                            <td class="message footable-last-column footable-first-column" colspan="11">등록된 자료가 없습니다.</td>
                                                    		</c:otherwise>
	                                                    </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </form>
                                </div>
                            </div>
                    	</div>
                    </section>
                </div>
            </div>
        </div>
    </div>
        <c:import url="../temp/footer.jsp"></c:import> 
    </body>
</html>