<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/images/favicon.png">
    <title>신착자료 : 씨앗도서관 ☘</title>
</head>
<body>
<div id="wrap">
    <!-- 헤더 -->
    <c:import url="../temp/header.jsp"></c:import>
    <!-- 헤더 -->

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>신착자료</h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/AsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>신착자료</h3>
                <div class="navi">
                    <a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
                    <i class="arrow"></i> 자료검색 <i class="arrow"></i>신착자료
                </div>
                <div class="snsFarm">
                    <ul class="snsBtnArea clearfix">
                        <li>
                            <a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
                            <div id="snsGroup" class="snsList clearfix">
                                <a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
                            </div>
                        </li>
                        <li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('seoksu'); return false;"><span class="blind">현재화면 프린트</span></a></li>
                    </ul>
                </div>
            </div>
    
            <div id="contents" class="contentArea" style="padding: 20px;">
					
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
                <!-- 게시판 검색 -->
                <form action="./newBook" name="searchForm" id="searchForm" method="get">
                    <fieldset>
                        <legend class="blind">게시글 검색 영역</legend>
                        <div class="pageSearch" style="background-color: #fff; text-align: right; margin: 0px 0px 20px 0px; padding: 0px;">
                            <div class="schForm w1">
                                <select name="perPage" class="numSel">
                                    <option class="kinds" value="20">20건</option>
                                    <option class="kinds" value="40">40건</option>
                                    <option class="kinds" value="60">60건</option>
                                    <option class="kinds" value="80">80건</option>
                                </select>
                                <input type="submit" id="searchBtn1" class="btn" value="확인">
                                <!-- <a href="#btn" id="sortListBtn" class="btn">확인</a> -->
                            </div>
                        </div>
                    </fieldset>
                </form>
                <!-- //게시판 검색 -->
                
                                    
                
                <!--  신착도서 list  -->
                <div class="qrationBookList intrestOnly">
                    <ul class="listWrap clearfix">
                        <c:forEach items="${list}" var="list" varStatus="status">
                            <li>
                                <div class="kdcNum">
                                    <h5>
                                        <c:choose>
                                            <c:when test="${list.category eq 0}">총류</c:when>
                                            <c:when test="${list.category eq 1}">철학</c:when>
                                            <c:when test="${list.category eq 2}">종교</c:when>
                                            <c:when test="${list.category eq 3}">사회과학</c:when>
                                            <c:when test="${list.category eq 4}">자연과학</c:when>
                                            <c:when test="${list.category eq 5}">기술과학</c:when>
                                            <c:when test="${list.category eq 6}">예술</c:when>
                                            <c:when test="${list.category eq 7}">언어</c:when>
                                            <c:when test="${list.category eq 8}">문학</c:when>
                                            <c:otherwise>역사</c:otherwise>
                                        </c:choose>
                                    </h5>
                                </div>
                                <div class="bookImg" style="height: 302px;"><a href="#" onclick="location.href='../book/detail?isbn=${list.isbn}'";"><img src="${list.image}" onerror="javascript:fnNoImgBook(this); return false;" alt="${list.title}"></a></div>

                                <div class="bookData">
                                    <a href="#" onclick="location.href='../book/detail?isbn=${list.isbn}'"><span class="blind">${list.title}</span></a>
                                    <div class="book_dataInner">
                                        <p class="book_name" title="${list.title}"><strong>${list.title}</strong></p>
                                        <p class="book_writers">
                                            <span class="bk_writer">${list.writer}</span>
                                            <span class="bk_publish">${list.publisher}<br>2022</span>
                                        </p>
                                    </div>
                                    <!-- <div class="bookEventWrap">
                                        <ol>
                                            <li><a href="#apply" onclick="javascript:fnLibraryMyLibPop('9791167070791', 'MO'); return false" class="btn_sergeInfo" title="내서재 담기"><span class="blind">내서재 담기</span></a></li>
                                        </ol>
                                    </div> -->
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                
                
                
                <!-- End Of the Real Contents-->
            </div>
        </div>
    </div>






    <!-- footer -->
    <c:import url="../temp/footer.jsp"></c:import>
    <!-- //footer -->
</div>

<script>
    let k = '${param.perPage}'

    const kinds = document.getElementsByClassName('kinds');
    for(let i=0;i<kinds.length;i++){
        if(k==kinds[i].value) {
            kinds[i].setAttribute('selected','selected');
            break;
        }
    }

</script>
</body>
</html>