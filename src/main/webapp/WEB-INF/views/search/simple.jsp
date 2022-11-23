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
                <form action="./simpleresult" id="searchForm" name="searchForm" method="get">

                    <!-- 서치랩 -->
                    <div class="searchWrap">
                        <div class="searchFormWeb">

                            <div class="searchToparea">

                                <div class="searchBardiv">
                                    <div class="searchTit">통합자료

                                    </div>
                                    <div class="searchInputbox">
                                        <input hidden="hidden" />
                                        <input type="text" onkeyup="enterkey()" id="totalSearchValue" name="search" title="검색어를 입력하세요." value="" placeholder="검색어를 입력하세요." autocomplete="off">
                                        <input type="button" id="searchBtn" title="검색" class="unifiedSearchbtn">
                                    </div>
                                    <div>
                                        <a href="./detail" class="btn input" title="고급검색 페이지 이동">고급검색</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <script src="/js/search.js"></script>
                
                    <!-- 서치랩끝 -->

                    <!-- 검색설정랩 -->
                    <div class="searchResultWrap">
                        <div class="result_box">
                            <div class="listSetting">
                                <c:if test="${not empty list}">
                                <div class="result_screen">'<strong>키워드:${param.search}</strong>'에 대한 검색결과 총 
                                    <span id="totalCnt">${count}</span> 건
                                </div>
                                </c:if>

                                <c:if test="${not empty message}">
                                    <div class="result_screen">'<strong>${message}</strong>'
                                    </div>
                                </c:if>

                                <!-- <div class="listStyleType">
                                    <select name="searchArticle" title="정렬조건 선택">
                                        <option value="SCORE" selected="selected">인기도</option>
                                        <option value="TITLE">서명</option>
                                        <option value="WRITER">저자</option>
                                        <option value="PUBLISHER">발행처</option>
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
                                </div> -->
                            </div>

                        </div>
                    </div>
                    <!-- 검색설정랩 -->

                    <!-- 리스트 -->
                    <div id="bookList">
                        <div class="bookList listViewStyle">
                            <ul class="listWrap">
                                <c:forEach items="${list}" var="list">
                                    <li>
                                        <div class="bookArea">
                                            <div class="bookImg"><a href="#link" onclick="location.href='../detail?isbn=${list.isbn}'");"><img alt="${list.title}" src="${list.image}"></a></div>
                        
                                            <div class="bookData">
                                                <div class="book_dataInner">
                                                    <!-- <span class="book_kind">단행본</span> -->
                                                    <a href="#link" onclick="location.href='../book/detail?ISBN=${list.isbn}'" class="book_name kor on"><span class="highlight word">${list.title}</span></a>
                                                    <ul class="dot-list clearfix">
                                                        <li class="kor on"><span>저자</span> : ${list.writer}</li>
                                                        <li class="kor on"><span>발행처</span> : ${list.publisher}</li>
                                                        
                                                                <li><span>발행년도</span> : ${list.bookDate}</li>
                                                                <li><span>ISBN</span> : ${list.isbn}</li>
                                                            
                                                    </ul>
                                                </div>
                        
                                                <div class="bookDetailInfo">
                                                    <ol>
                                                        <li><a href="#link" id="btn_haveInfo1" onclick="fnCollectionInfo('1', '19263465', 'MO');" class="btn_haveInfo" title="소장정보 축소됨">소장정보</a></li>
                                                        <li><a href="#link" id="btn_sergeInfo1" onclick="fnBibliographicInfo('1', '19263465', 'MO');" class="btn_sergeInfo" title="서지정보 축소됨">서지정보</a></li>
                                                        
                                                            <li><a href="#apply" onclick="javascript:fnLibraryMyLibPop('8990878306', 'MO'); return false" class="btn_mylibrary themeFC themeBD" title="찜하기 새창열림">찜하기</a></li>
                                                        
                                                    </ol>
                                                </div>
                                            </div>
                                        </div>
                        
                                        <!-- 소장정보 -->
                                        <div id="collectionInfo1" class="bookDetailLayer whereLibrary open" tabindex="0">
                                            <div class="thisBook-libraryList">
                                                <div class="tblWrap scrollTable">
                                                    <table class="tbl">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">도서관</th>
                                                                <th scope="col">대출상태</th>
                                                                <th scope="col">반납예정일</th>
                                                                <th scope="col">청구기호</th>
                                                                <th scope="col">예약</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                                <tr class="MA">
                                                                    <td>석수도서관</td>
                                                                    <td>
                                                                        대출중
                                                                        <br>(예약가능)
                                                                        <br>(예약:1명)
                                                                    </td>
                                                                    <td>2022.11.25</td>
                                                                    <td>833.6-히12나=c.2 <a href="#print" onclick="javascript:fnCallNoPrintPop('101783087', 'MO'); return false" class="print" title="청구기호 출력 새창열림"><span class="blind">청구기호 출력</span></a></td>
                                                                    <td>
                                                                        
                                                                            <a href="javascript:;" onclick="javascript:reservationApplyProc('101783087','EM0000167633'); return false" class="btn white small">대출예약</a>
                                                                        
                                                                        
                                                                        
                                                                    </td>
                                                                </tr>
                                                            
                                                            
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <a href="#close" class="btn whereLibClose small ta_c">닫기</a>
                                        </div>
                                        <!-- 서지정보 -->
                                        <div id="bibliographicInfo1" class="bookDetailLayer bibliographicInfo"></div>
                        
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <c:if test="${not empty list}">
                        <div class="pagingWrap">
                            <p class="paging">
                                <a href="./simpleresult?search=${pager.search}&page=1" class="btn-paging first ${pager.page eq 1?'disabledLink':''}"><span class="blind">맨 첫 페이지로 가기</span></a>
                                
                                <a href="./simpleresult?search=${pager.search}&page=${pager.startNum-1}" class="btn-paging prev ${pager.page eq 1?'disabledLink':''}"><span class="blind">이전 10개 보기</span></a>
                                
                                <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                    <!-- <span class="current">1</span> -->
                                    <a href="./simpleresult?search=${pager.search}&page=${i}" id="ppaaggee${i}">${i}</a>
                                    
                                </c:forEach>
                                <a href="./simpleresult?search=${pager.search}&page=${pager.lastNum+1}" class="btn-paging next ${pager.next?'':'disabledLink'}"><span class="blind">다음 10개 보기</span></a>
                                <a href="./simpleresult?search=${pager.search}&page=${pager.totalPage1}" class="btn-paging last ${pager.page eq pager.totalPage1?'disabledLink':''}"><span class="blind">맨 마지막 페이지로 가기</span></a>
                                </p>
                        </div>
                        </c:if>
                        <!-- //페이징 -->

                        <script>
                            let disables = document.querySelectorAll(".disabledLink")
                            
                            disables.forEach(element => {
                                element.removeAttribute('href');
                            });

                            let urll = window.location.href;
                            let urlnn = urll.lastIndexOf('=')+1;
                            urllastt = urll.substring(urlnn);

                            console.log(urllastt);

                            let page1sibal = urll.lastIndexOf('=')-1;
                            console.log(page1sibal);
                            if(page1sibal==45){
                                document.querySelector('#ppaaggee1').style.background="#9be15d";
                                document.querySelector('#ppaaggee1').style.color="#fff";
                            }

                            let ppaaggee = document.querySelector('#'+"ppaaggee"+urllastt);
                            ppaaggee.style.background="#9be15d";
                            ppaaggee.style.color="#fff";
                          
                          
                        </script>
                        
                    </div>
                    <!-- 리스트 -->

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