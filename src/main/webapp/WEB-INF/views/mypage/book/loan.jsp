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
    
    <link rel="stylesheet" href="/css/new_search.css">
    <link rel="stylesheet" href="/css/book/mypage.css">
    
    <script type="text/javascript" defer src="/js/common.js"></script>
    <script type="text/javascript" defer src="/js/bookDetail.js"></script>
    <script type="text/javascript" defer src="/js/bookLoan.js"></script>
    <script type="text/javascript" defer src="/js/bookLikeShelf.js"></script>
    
    <link rel="icon" href="/images/favicon.png">
	<title>대출 이력 : 씨앗도서관 ☘️ </title>
	
	<c:import url="../../temp/header.jsp"></c:import>
</head>


<body>
	<input type="hidden" id="userName" value="${member.userName}">
	<div id="container" class="sub">	
		<div class="sVisualWrap">
			<div class="sVisual">
			</div>
		</div>
		
		<div id="contentGroup">
			<c:import url="../../sideBar/FsideBar.jsp"></c:import>
		
			<div class="content">
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
		                    <p id="divTitle" class="fl">대출 현황</p>
                        </div>
                        
                        <div>
                        	<div class="divTabMenu1">
                        		<div>
                        			<ul>
                        				<li class="selected tab-li"><a href="/mypage/book/loan" title="대출">대출</a></li>
                        				<li class="tab-li"><a href="/mypage/book/reservation" title="예약">예약</a></li>
                        				<li class="tab-li"><a href="/mypage/book/mutual" title="상호대차">상호대차</a></li>
                        			
                        				<li class="tab-li"><a href="/mypage/program" title="프로그램 신청내역">프로그램 신청내역</a></li>
                        				
                        				<li class="tab-li"><a href="/shelf/list" title="책꽂이">책꽂이</a></li>
                        				<li class="tab-li"><a href="mypage/infographics" title="독서통계">독서통계</a></li>
                        			</ul>
                        		</div>
                        	</div>
                        	
                        	<div class="divTabMenu2">
                        		<ul class="tab">
                        			<li class="on"><a href="/mypage/book/loan">대출 현황</a></li>
                        			<li><a href="/mypage/book/loanHistory">이전 대출내역</a></li>
                        		</ul>
                        	</div>
                        </div>
                        
                        <div class="divContent">
                        	<div class="loanSearch">
                        		<p>선택조건으로 조회</p>
                        		<form id="form" name="form" action="/mypage/book/loan" method="get">
                        			<span class="bunch">
	                                    <select id="si" name="si" class="selectBox1" title="검색항목">
	                                        <option value="title">제목</option>
	                                        <option value="writer">저자</option>
	                                    </select>
	                                    <input id="sw" name="sw" class="inputTextType1 sw" title="검색어 입력" type="text" value="" size="20" maxlength="100">
	                                </span>
	                                <span class="bunch">
	                                    <input id="dateA" name="dtf" class="datePicker hasDatepicker" title="대출기간검색 시작일(20160101)" type="text" value="" size="8" maxlength="8"> ~
	                                    <input id="dateB" name="dtt" class="datePicker hasDatepicker" title="대출기간검색 종료일(20160131)" type="text" value="" size="8" maxlength="8">
	                                </span>
	                                <span class="bunch">
	                                    <select id="oi" name="oi" class="selectBox1" title="정렬 검색항목">
	                                        <option value="title">제목</option>
	                                        <option value="author">저자</option>
	                                        <option value="loan_date">대출일</option>
	                                    </select>
	                                    <select id="sort" name="os" class="selectBox1" title="정렬 순서">
	                                        <option value="asc">오름차순</option>
	                                        <option value="desc">내림차순</option>
	                                    </select>
	                                </span>
	                                <input type="submit" class="btnType5" title="조회" value="조회">
                        		</form>
                        	</div>
                        	
                        	<div class="loanList">
                        		<div class="listInfo">
                                    <div class="listInfo1">
                                        <p class="totalCnt">총 <span class="totalcount">${count}</span> 건</p>
                                    </div>
                                </div>
                                
                                <div class="listTable">
	                                <table class="listTable-t">
	                                    <thead>
	                                        <tr>
	                                            <th scope="col" data-class="expand">제목</th>
	                                            <th scope="col" data-hide="phone">저자</th>
	                                            <th scope="col" data-hide="phone">isbn</th>
	                                            <th scope="col" data-hide="phone">대출일</th>
	                                            <th scope="col" data-hide="phone">반납 예정일</th>
	                                            <th></th>
	                                            <th scope="col" data-hide="phone" class="">연장횟수</th>
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
	                                                	<td class="message footable-last-column footable-first-column" colspan="11">대출 중인 도서가 없습니다.</td>
	                                        		</c:otherwise>
	                                         </tr>
	                                        </c:forEach>
	                                    </tbody>
	                                </table>
                        		
                        	</div>
                        </div>
                        
                        
                    </section>
				</div>
			</div>
		</div>
	</div>

</body>
</html>