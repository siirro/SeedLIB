<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>꿈이 싹트는 정원 : 씨앗도서관</title>
</head>
<body>
<div id="wrap">
    <!-- 헤더 -->
    <c:import url="../temp/header.jsp"></c:import>
    <!-- 헤더 -->

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>통합검색</h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/AsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>통합검색</h3>
                <div class="navi">
                    <a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
                    <i class="arrow"></i> 자료검색 <i class="arrow"></i>소장자료검색<i class="arrow"></i>통합검색
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
    
            <div id="contents" class="contentArea">
                        
                <!-- Contents Start-->
                <form id="searchForm" name="searchForm" method="get">
                    <input type="hidden" name="searchType" value="SIMPLE">

                    <!-- 서치랩 -->
                    <div class="searchWrap">
                        <div class="searchFormWeb">

                            <div class="searchToparea">

                                <div class="searchBardiv">
                                    <div class="searchTit">통합자료

                                    </div>
                                    <div class="searchInputbox">
                                        <input type="text" id="totalSearchValue" name="searchKeyword" title="검색어를 입력하세요." value="" placeholder="검색어를 입력하세요." autocomplete="off">
                                        <input type="button" id="searchBtn" title="검색" class="unifiedSearchbtn">
                                    </div>

                                    <a href="./detail" class="btn input" title="고급검색 페이지 이동">고급검색</a>
                                </div>
                            </div>
                        </div>
                    </div>
                
                    <!-- 서치랩끝 -->

                    <!-- 검색설정랩 -->
                    <div class="searchResultWrap">
                        <div class="result_box">
                            <div class="listSetting">
                                <div class="result_screen">'<strong>키워드:나</strong>'에 대한 검색결과 총 
                                    <span id="totalCnt">5,168</span> 건
                                </div>

                                <div class="listStyleType">
                                    <select name="searchArticle" title="정렬조건 선택">
                                        <option value="SCORE" selected="selected">인기도</option>
                                        <option value="TITLE">서명</option>
                                        <option value="AUTHOR">저자</option>
                                        <option value="PUBLISHER">발행처</option>
                                        <option value="PUBYEAR">발행일</option>
                                        <option value="LOANCOUNT">대출수</option>
                                        <option value="WDATE">등록일</option>
                                    </select>
                                    <select name="searchOrder" class="orderSel" style="display:none" title="정렬순서 선택">
                                        <option value="ASC" selected="selected">오름차순</option>
                                        <option value="DESC">내림차순</option>
                                    </select>
                                    <select name="searchDisplay" class="numSel" title="한페이지에 보여줄 건수 선택">
                                            <option value="20" selected="selected">20건</option>
                                            <option value="40">40건</option>
                                            <option value="60">60건</option>
                                            <option value="80">80건</option>
                                    </select>
                                    <a href="#btn" id="sortListBtn" class="btn">확인</a>
                                    
                                    <div class="btnSetWeb">
                                        <a href="#list" class="listTypeList on" id="viewTypeList" title="선택됨"><span class="blind">리스트형</span></a>
                                        <a href="#img" class="listTypeCard " id="viewTypeCard"><span class="blind">이미지형</span></a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- 검색설정랩 -->

                    <!-- 서치리스트 -->
                    <div id="bookList">
                        <div class="bookList listViewStyle">
                            <ul class="listWrap">
                                <li>
                                    <div class="bookArea">
                                        <div class="bookImg"><a href="#link" onclick="fnDetail('19263465', '8990878306', 'MO');"><img alt="나" src="https://image.aladin.co.kr/product/64/23/cover500/8990878306_3.jpg" onerror="javascript:fnNoImgBook(this); return false;"></a></div>
                    
                                        <div class="bookData">
                                            <div class="book_dataInner">
                                                <span class="book_kind">단행본</span>
                                                <a href="#link" onclick="fnDetail('19263465', '8990878306', 'MO');" class="book_name kor on"><span class="highlight word">나</span></a>
                                                <a href="#link" onclick="fnDetail('19263465', '8990878306', 'MO');" class="book_name han"><span class="highlight word">나</span></a>
                                                <ul class="dot-list clearfix">
                                                    <li class="kor on"><span>저자</span> : 이경화 지음</li>
                                                    <li class="han"><span>저자</span> : 이경화 지음</li>
                                                    <li class="kor on"><span>발행처</span> : 바람의 아이들,</li>
                                                    <li class="han"><span>발행처</span> : 바람의 아이들,</li>
                                                    
                                                            <li><span>발행년도</span> : 2006</li>
                                                            <li><span>ISBN</span> : 8990878306</li>
                                                        
                                                </ul>
                                            </div>
                    
                                            <div class="bookDetailInfo">
                                                <ol>
                                                    <li><a href="#link" id="btn_haveInfo1" onclick="fnCollectionInfo('1', '19263465', 'MO');" class="btn_haveInfo" title="소장정보 축소됨">소장정보</a></li>
                                                    <li><a href="#link" id="btn_sergeInfo1" onclick="fnBibliographicInfo('1', '19263465', 'MO');" class="btn_sergeInfo" title="서지정보 축소됨">서지정보</a></li>
                                                    
                                                        <li><a href="#apply" onclick="javascript:fnLibraryMyLibPop('8990878306', 'MO'); return false" class="btn_mylibrary themeFC themeBD" title="내서재 담기 새창열림">내서재 담기</a></li>
                                                    
                                                </ol>
                                            </div>
                                        </div>
                                    </div>
                    
                                    <!-- 소장정보 -->
                                    <div id="collectionInfo1" class="bookDetailLayer whereLibrary"></div>
                    
                                    <!-- 서지정보 -->
                                    <div id="bibliographicInfo1" class="bookDetailLayer bibliographicInfo"></div>
                    
                                </li>
                            </ul>
                        </div>
                        <!-- 페이징 -->
                        <div class="pagingWrap">
                            <p class="paging"><a href="javascript:fnList(1);" class="btn-paging first"><span class="blind">맨 첫 페이지로 가기</span></a>
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
                        <a href="javascript:fnList(259);" class="btn-paging last"><span class="blind">맨 마지막 페이지로 가기</span></a>
                        
                        </p>
                        </div>
                        <!-- //페이징 -->
                        
                                            </div>
                    <!-- 서치리스트 -->

                </form>
                <!-- End Of the Real Contents-->
                
            </div>
        </div>
    </div>

    
    <!-- footer -->
    <c:import url="../temp/footer.jsp"></c:import>
    <!-- //footer -->
</div>

<script>
$("#liboption").click(function(){
    let check = $("#sh_util03").attr("class");
    if(check=="divSelect") {
        console.log("클릭");
        $("#sh_util03").attr("class","divSelect current");
        $("#liboptionicon").attr("class","sh_util03 on");
        $("#liboptionicon").attr("title","확장됨");
    } else{
        $("#sh_util03").attr("class","divSelect");
        $("#liboptionicon").attr("class","축소됨");
    }
    
})

</script>

</body>
</html>