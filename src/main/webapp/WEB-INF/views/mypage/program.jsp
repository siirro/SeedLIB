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
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    <link rel="stylesheet" href="/css/new_search.css">
 
    
    <script type="text/javascript" defer src="/js/common.js"></script>
    
    <link rel="icon" href="/images/favicon.png">
	<title>문화행사 : 씨앗도서관 ☘️ </title>
	
	<c:import url="../temp/header.jsp"></c:import>
</head>


<body>
	<input type="hidden" id="userName" value="${member.userName}">
	<div id="container" class="sub">	
		<div class="sVisualWrap">
			<div class="sVisual">
			</div>
		</div>
		
		<div id="contentGroup">
			<c:import url="../sideBar/FsideBar.jsp"></c:import>
		
			<div class="content">
				<div class="naviandtitle">
					<h3>문화행사 신청 내역</h3>
					<div class="navi">
						<a href="../" title="홈으로 이동" class="home">
							<span class="blind">홈</span>
						</a>
						<i class="arrow"></i> 마이페이지
						<i class="arrow"></i>문화행사 신청 내역
					</div>
				</div>
				
				<div id="divWrapper">
                    <section id="divContents">
                        <div class="sub-title cf box">
		                    <p id="divTitle" class="fl">신청한 문화행사</p>
                        </div>
                        
                        <div class="divContent">
                        	<div class="loanSearch">
                        		<p>선택조건으로 조회</p>
                        		<form id="form" name="form" action="/mypage/book/loan" method="get">
                        			<span class="bunch">
	                                    <select id="select" name="select" class="selectBox1" title="검색항목">
	                                        <option value="title">제목</option>
	                                        <option value="writer">저자</option>
	                                    </select>
	                                    <input id="search" name="search" class="inputTextType1 sw loan-search" title="검색어 입력" type="text" value="" size="20" maxlength="300">
	                                </span>
	                                <span class="bunch">
	                                    <input id="dateA" name="dtf" class="datePicker hasDatepicker" title="대출기간검색 시작일(20160101)" type="text" value="" size="8" maxlength="8"> ~
	                                    <input id="dateB" name="dtt" class="datePicker hasDatepicker" title="대출기간검색 종료일(20160131)" type="text" value="" size="8" maxlength="8">
	                                </span>
	                                <span class="bunch loan-search">
	                                    <select id="sortHow" name="sortHow" class="selectBox1" title="정렬 검색항목">
	                                        <option value="title">제목</option>
	                                        <option value="isbn">ISBN</option>
	                                        <option value="loan_date">대출일</option>
	                                    </select>
	                                    <select id="sort" name="sort" class="selectBox1" title="정렬 순서">
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
                                
                                <div class="thisBook-libraryList">
                                	<div class="tblWrap tblScroller scrollTable">
		                                <table class="tbl">
		                                    <thead>
		                                        <tr>
		                                            <th scope="col" class="th-title">행사명</th>
		                                            <th scope="col" >강사</th>
		                                            <th scope="col" >장소</th>
		                                            <th scope="col" >기간</th>
		                                            <th scope="col" >신청 상태</th>
		                                            <th></th>
		                                            <th scope="col">승인 상태</th>
		                                        </tr>
		                                    </thead>
		                                    <tbody>
		                                      	<c:forEach items="${li}" var="p">
		                                      		<c:set var="m" value="${p.mpVO}" />
		                                        	<tr>
	                                        			<td>${p.proTitle}</td>
	                                        			<td>${p.proTeacher}</td>
	                                        			<td>${p.proPlace}</td>
	                                        			<td>${p.psDate} ~ ${p.plDate}</td>
	                                        			<td>
	                                        				<c:choose>
																<c:when test="${m.proState eq 0}">신청 취소</c:when>
																<c:when test="${m.proState eq 1}">신청 중</c:when>
																<c:when test="${m.proState eq 2}">신청 완료</c:when>
															</c:choose>
	                                        			</td>
	                                        			<td>
	                                        				<c:if test="${m.proState > 0}">
	                                        					<button type="button" class="btn white small ProDelAlretBtn" data-res-num="${p.proNum}" title="신청 취소">신청 취소</button>
	                                        				</c:if>
	                                        				<c:if test="${m.proState eq 0}">-</c:if>
	                                        			</td>
	                                        			<td>
	                                        				<c:choose>
																<c:when test="${m.proCheck eq 0}">대기</c:when>
																<c:when test="${m.proCheck eq 1}">거부</c:when>
																<c:when test="${m.proCheck eq 2}">완료</c:when>
															</c:choose>
	                                        			</td>
		                                         	</tr>
			                                	</c:forEach>
		                                    </tbody>
		                                </table>
		                        	</div>
	                            </div>
                        	</div>
                        </div>
                        
                        
                    </section>
				</div>
			</div>
		</div>
	</div>
	<c:import url="../temp/footer.jsp"></c:import> 
	<script type="text/javascript" src="/js/program.js"></script>
</body>
</html>