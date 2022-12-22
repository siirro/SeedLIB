<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/images/favicon.png">
    <title>문화행사 : 씨앗도서관 ☘</title>
    
    <style type="text/css">
    	.pro-logo {
    		padding:10px;
    		padding-right : 10px;
    	}
    </style>
</head>

<body>
	<div id="wrap">
    	<c:import url="../temp/header.jsp"></c:import>

	    <div id="container" class="sub">
			
	        <div class="sVisualWrap">
	            <div class="sVisual">
	                <h3>문화행사 신청</h3>
	            </div>
	        </div>
	        <div id="contentGroup">
		        <c:import url="../sideBar/BsideBar.jsp"></c:import>
		        
		        <div id="contentcore">
		            <div class="naviandtitle">
		                <h3>문화행사 신청</h3>
		                <div class="navi">
		                    <a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
		                    <i class="arrow"></i> 문화행사/참여 <i class="arrow"></i>문화행사 신청
		                </div>
		            </div>
		            
		            	<form name="searchForm" id="searchForm" method="get">
							<fieldset>
								<legend class="blind">수강신청 검색 영역</legend>
								<div class="pageSearch">
									<ul class="selList clearfix">
										<li>
											<select name="searchStatusCd" id="statusCd" title="접수상태 선택" class="form-ele">
												<option value="">접수상태</option>
												<option value="ready">예정</option>
												<option value="apply">접수중</option>
												<option value="finish">마감</option>
												<option value="end">종료</option>
											</select>
										</li>
										<li>
											<select name="targetCd" id="targetCd" title="대상 선택" class="form-ele">
												<option value="">대상</option>
													<option value="infant">유아</option>
													<option value="child">어린이</option>												
													<option value="teen">청소년</option>												
													<option value="adult">성인</option>											
													<option value="all">누구나</option>
												
											</select>
										</li>
										<li>
											<select name="categoryIdx" id="categoryIdx" title="행사구분 선택" class="form-ele">
												<option value="">행사구분</option>												
													<option value="6">정기강좌</option>												
													<option value="7">특강</option>												
													<option value="8">이벤트</option>												
													<option value="9">독서회</option>												
													<option value="10">기타</option>												
											</select>
										</li>
									</ul>
									<div class="schForm mt05">
										<select name="searchCondition" id="searchCondition" title="검색유형 선택" class="schSel">
											<option value="title">행사명</option>
											<option value="contents">내용</option>
										</select>
										<input type="text" name="searchKeyword" id="searchKeyword" title="검색어 입력" class="schKwd3" placeholder="검색어를 입력해 주세요" value="">
										<a href="#javascript" id="searchBtn" class="btn input">검색</a>
									</div>
								</div>
							</fieldset>
						</form>
		            	
		            	
		            	<div class="lectureWrap">
								<ul class="lecture-list">	
									<c:forEach var="p" items="${li}">								
										<li>
											<div class="title">
												<a href="/program/detail?proNum=${p.proNum}"><i class="type themeBG themeBD">기타</i>
													${p.proTitle}</a>
												<i>${p.target}</i>	
											</div>
											<div class="info">
												<span>행사기간 : ${p.psDate} ~ ${p.plDate}
												</span>
											</div>
											<div class="info">
												<span>접수기간 : ${p.prsDate} ~ ${p.prlDate}
												</span>
											</div>
											<div class="info">
												<span>신청현황 : 833/${p.total}</span>
											</div>
											<div class="tblBtn sFinish">${p.recStatus}</div>	
										</li>
									</c:forEach>
								</ul>
							</div>
		            </div>
		            
		            
		            
		   
		            
		            <div>
		            	<c:if test="${not empty li}">
	                        <div class="pagingWrap">
	                            <!-- <input type="hidden" name="page" value="${pager.page}"> -->
	                            <p class="paging">
	                                <a href="?select=${pager.select}&search=${pager.search}&kind=${pager.kind}&page=1" class="btn-paging first ${pager.page eq 1?'disabledLink':''}"><span class="blind">맨 첫 페이지로 가기</span></a>
	                                
	                                <a href="?select=${pager.select}&search=${pager.search}&kind=${pager.kind}&page=${pager.startNum-1}" class="btn-paging prev ${pager.page eq 1?'disabledLink':''}"><span class="blind">이전 10개 보기</span></a>
	                                
	                                <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	                                    <!-- <span class="current">1</span> -->
	                                    <a href="?search=${pager.search}&kind=${pager.kind}&page=${i}" id="ppaaggee${i}">${i}</a>
	                                    
	                                </c:forEach>
	                                <a href="?search=${pager.search}&kind=${pager.kind}&page=${pager.lastNum+1}" class="btn-paging next ${pager.next?'':'disabledLink'}"><span class="blind">다음 10개 보기</span></a>
	                                <a href="?search=${pager.search}&kind=${pager.kind}&page=${pager.totalPage1}" class="btn-paging last ${pager.page eq pager.totalPage1?'disabledLink':''}"><span class="blind">맨 마지막 페이지로 가기</span></a>
	                                </p>
	                        </div>
                        </c:if>
		            </div>
		        </div>
		    </div>
		</div>
	</div>