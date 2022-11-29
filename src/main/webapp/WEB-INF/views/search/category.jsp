<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/search/category.css">
    <link rel="shortcut icon" href="/images/favicon.png">
    <title>주제별검색 : 씨앗도서관 ☘</title>
</head>
<body>
<div id="wrap">
    <!-- 헤더 -->
    <c:import url="../temp/header.jsp"></c:import>
    <!-- 헤더 -->

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>주제별검색</h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/AsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>주제별검색</h3>
                <div class="navi">
                    <a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
                    <i class="arrow"></i> 자료검색 <i class="arrow"></i>주제별검색
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
    
            <div id="contents" class="contentArea" style="padding: 40px 0 0;">
					
                <!--Forced tab Show Que-->
                <div class="ttabWrap">
                    <div id="virtSelect"><a href="#script">탭메뉴</a></div>
                    <ul id="ttab3" class="tnb clearfix">
                        <li class="ttabLast"></li>
                    </ul>
                </div>
                <!--Forced tab Show Que-->
                
                <div id="popblackBG">

                </div>
                <!--Real Contents Start-->
                
                <c:if test="${empty list}">
                <div class="kdcSearch">
                    <ul id="kdcDepth1List" class="kdcDepth1List clearfix">
							
                        <li class="kdc000">
                            <a href="./categoryResult?category=0" id="000"><span class="ico" style="background: url(/images/searchCategory/sc_books.png);"><span class="blind">총류</span></span></a>
                            <span class="txt">총류</span>
                        </li>
                    
                        <li class="kdc100">
                            <a href="./categoryResult?category=1" id="100"><span class="ico" style="background: url(/images/searchCategory/sc_philosophy.png);"><span class="blind">철학</span></span></a>
                            <span class="txt">철학</span>
                        </li>
                    
                        <li class="kdc200">
                            <a href="./categoryResult?category=2" id="200"><span class="ico" style="background: url(/images/searchCategory/sc_religion.png);"><span class="blind">종교</span></span></a>
                            <span class="txt">종교</span>
                        </li>
                    
                        <li class="kdc300">
                            <a href="./categoryResult?category=3" id="300"><span class="ico" style="background: url(/images/searchCategory/sc_society.png);"><span class="blind">사회과학</span></span></a>
                            <span class="txt">사회과학</span>
                        </li>
                    
                        <li class="kdc400">
                            <a href="./categoryResult?category=4" id="400"><span class="ico" style="background: url(/images/searchCategory/sc_science.png);"><span class="blind">자연과학</span></span></a>
                            <span class="txt">자연과학</span>
                        </li>
                    
                        <li class="kdc500">
                            <a href="./categoryResult?category=5" id="500"><span class="ico" style="background: url(/images/searchCategory/sc_tech.png);"><span class="blind">기술과학</span></span></a>
                            <span class="txt">기술과학</span>
                        </li>
                    
                        <li class="kdc600">
                            <a href="./categoryResult?category=6" id="600"><span class="ico" style="background: url(/images/searchCategory/sc_art.png);"><span class="blind">예술</span></span></a>
                            <span class="txt">예술</span>
                        </li>
                    
                        <li class="kdc700">
                            <a href="./categoryResult?category=7" id="700"><span class="ico" style="background: url(/images/searchCategory/sc_languages.png);"><span class="blind">언어</span></span></a>
                            <span class="txt">언어</span>
                        </li>
                    
                        <li class="kdc800">
                            <a href="./categoryResult?category=8" id="800"><span class="ico" style="background: url(/images/searchCategory/sc_literature.png);"><span class="blind">문학</span></span></a>
                            <span class="txt">문학</span>
                        </li>
                    
                        <li class="kdc900">
                            <a href="./categoryResult?category=9" id="900"><span class="ico" style="background: url(/images/searchCategory/sc_history.png);"><span class="blind">역사</span></span></a>
                            <span class="txt">역사</span>
                        </li>
                    
                    </ul>

                </div>
                </c:if>
                <!-- End Of the Real Contents-->

                <form action="./categoryResult" id="searchForm" name="searchForm" method="get">

                    <input type="hidden" name="category" value="${param.category}">

                    <!-- 검색설정랩 -->
                    <div class="searchResultWrap" style="margin-top: 0px;">
                        <div class="result_box">
                            <div class="listSetting" >
                                <c:if test="${not empty list}">
                                <div class="result_screen">검색결과 총 
                                    <span id="totalCnt">${count}</span> 건
                                </div>
                                </c:if>
                                <div style="display: flex;">
                                    <c:if test="${not empty message}">
                                        <div class="result_screen" style="margin: 0px auto;">'<strong>${message}</strong>'
                                        </div>
                                    </c:if>
                                </div>

                                <c:if test="${not empty list}">
                                    <div class="listStyleType">
                                        <select id="kind" name="kind" title="정렬조건 선택">
                                            <option class="kinds" value="num">대출수 순</option>
                                            <option class="kinds" value="title">서명 순</option>
                                            <option class="kinds" value="writer">저자 순</option>
                                            <option class="kinds" value="publisher">발행처 순</option>
                                        </select>

                                        <input type="submit" id="searchBtn1" class="btn" value="확인">
                                    </div>
                                </c:if>
                            </div>

                        </div>
                    </div>
                    <!-- 검색설정랩 -->

                    <!-- 리스트 -->
                    <div id="bookList">
                        <div class="bookList listViewStyle">
                            <ul class="listWrap">
                                <c:forEach items="${list}" var="list" varStatus="status">
                                    <li>
                                        <div class="bookArea">
                                            <div class="bookImg"><a href="#link" onclick="location.href='../book/detail?isbn=${list.isbn}'");"><img alt="${list.title}" src="${list.image}"></a></div>
                        
                                            <div class="bookData">
                                                <div class="book_dataInner">
                                                    <!-- <span class="book_kind">단행본</span> -->
                                                    <a href="#link" onclick="location.href='../book/detail?isbn=${list.isbn}'" class="book_name kor on"><span class="highlight word">${list.title}</span></a>
                                                    <ul class="dot-list clearfix">
                                                        <li class="kor on"><span>저자</span> : ${list.writer}</li>
                                                        <li class="kor on"><span>발행처</span> : ${list.publisher}</li>
                                                        
                                                                <li><span>발행년도</span> : ${list.bookDate}</li>
                                                                <li><span>ISBN</span> : ${list.isbn}</li>
                                                            
                                                    </ul>
                                                </div>
                        
                                                <div class="bookDetailInfo">
                                                    <ol>
                                                        <li class="tlqkf"><a id="btn_haveInfo${status.count}" class="btn_haveInfo" title="소장정보 축소됨" data-id="${status.count}">소장정보</a></li>
                                                        <li><a id="btn_sergeInfo${status.count}" class="btn_sergeInfo" title="서지정보 축소됨">서지정보</a></li>
                                                        <li><button class="btn" title="찜하기 새창열림" style="padding: 0px 15px; height: 30px; background-color: #fff; color: #00e3ae; border: 1px solid #00e3ae;">찜</a></li>
                                                    </ol>
                                                </div>

                                                
                                            </div>
                                        </div>
                        
                                        <!-- 소장정보 -->
                                        <div id="collectionInfo${status.count}" class="roqkrcla bookDetailLayer whereLibrary" tabindex="0">
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
                                                                    <td></td>
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
                                        </div>

                                        
                                        <!-- 서지정보 -->
                                        <div id="bookInfo${status.count}" class="bookDetailLayer bookInfo" tabindex="0">

                                            <div class="thisBook-bibliographicInfo">
                                                <div class="tblWrap">
                                                    <table class="tbl">
                                                        <colgroup>
                                                            <col style="width:15%">
                                                            <col>
                                                        </colgroup>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row">자료유형</th>
                                                                <td class="ta_l">인쇄자료(책자형) 형태의 자료입니다</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">독자유형</th>
                                                                <td class="ta_l">일반</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">저자사항</th>
                                                                <td class="ta_l">나넷 스톤 지음;, 고유경 옮김</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">발행사항</th>
                                                                <td class="ta_l">서울:프런티어,2018</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">형태사항</th>
                                                                <td class="ta_l">
                                                                        <p>248page</p>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">ISBN사항</th>
                                                                <td class="ta_l">9788947544320 03190 ￦14000</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">수상주기</th>
                                                                <td class="ta_l"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>

                            <script>

                            $(".btn_haveInfo").on("click", function () {
                                $(".whereLibrary").removeClass("open");
                                $(".bookInfo").removeClass("open");
                                $(".btn_sergeInfo").removeClass("on");
                                if (!$(this).hasClass("on")) {
                                    $(".btn_haveInfo").removeClass("on");
                                    $(this).addClass("on");
                                    $(this).parents("li").children(".whereLibrary").addClass("open").attr("tabIndex", "0");
                                    $(this).attr("title", "소장정보 확장됨");
                                } else {
                                    $(this).removeClass("on");
                                    $(".whereLibrary").removeClass("open").removeAttr("tabIndex", "0");
                                    $(this).attr("title", "소장정보 축소됨");
                                }
                            });
                            // 서지정보 view/hide
                            $(".btn_sergeInfo").on("click", function () {
                                $(".whereLibrary").removeClass("open");
                                $(".bookInfo").removeClass("open");
                                $(".btn_haveInfo, .btn_bkdanbi").removeClass("on");
                                if (!$(this).hasClass("on")) {
                                    $(".btn_sergeInfo").removeClass("on");
                                    $(this).addClass("on");
                                    $(this).parents("li").children(".bookInfo").addClass("open").attr("tabIndex", "0");
                                    $(this).attr("title", "서지정보 확장됨");
                                } else {
                                    $(this).removeClass("on");
                                    $(".bookInfo").removeClass("open").removeAttr("tabIndex", "0");
                                    $(this).attr("title", "서지정보 축소됨");
                                }
                            });
                            </script>

                        </div>
                        <c:if test="${not empty list}">
                        <div class="pagingWrap">
                            <input type="hidden" name="page" value="${pager.page}">
                            <p class="paging">
                                <a href="./categoryResult?category=${category}&kind=${pager.kind}&page=1" class="btn-paging first ${pager.page eq 1?'disabledLink':''}"><span class="blind">맨 첫 페이지로 가기</span></a>
                                
                                <a href="./categoryResult?category=${category}&kind=${pager.kind}&page=${pager.startNum-1}" class="btn-paging prev ${pager.page eq 1?'disabledLink':''}"><span class="blind">이전 10개 보기</span></a>
                                
                                <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                    <!-- <span class="current">1</span> -->
                                    <a href="./categoryResult?category=${category}&kind=${pager.kind}&page=${i}" id="ppaaggeee${i}">${i}</a>
                                    
                                </c:forEach>
                                <a href="./categoryResult?category=${category}&kind=${pager.kind}&page=${pager.lastNum+1}" class="btn-paging next ${pager.next?'':'disabledLink'}"><span class="blind">다음 10개 보기</span></a>
                                <a href="./categoryResult?category=${category}&kind=${pager.kind}&page=${pager.totalPage1}" class="btn-paging last ${pager.page eq pager.totalPage1?'disabledLink':''}"><span class="blind">맨 마지막 페이지로 가기</span></a>
                                </p>
                        </div>
                        </c:if>
                        <!-- //페이징 -->

                        
                        
                    </div>
                    <!-- 리스트 -->
                </form>
            </div>
        </div>
    </div>






    <!-- footer -->
    <c:import url="../temp/footer.jsp"></c:import>
    <!-- //footer -->
</div>

<script>

    try {

        let disables = document.querySelectorAll(".disabledLink")
    
        disables.forEach(element => {
            element.removeAttribute('href');
        });

        let urll = window.location.href;
        let urlnn = urll.lastIndexOf('=')+1;
        urllastt = urll.substring(urlnn);


        let page1sb = urll.lastIndexOf('=')-1;
        console.log(page1sb);
        if(page1sb==49){
            document.querySelector('#ppaaggeee1').style.background="#9be15d";
            document.querySelector('#ppaaggeee1').style.color="#fff";
        }

        let ppaaggeee = document.querySelector('#'+"ppaaggeee"+'${param.page}');
        ppaaggeee.style.background="#9be15d";
        ppaaggeee.style.color="#fff";

        let k = '${param.kind}'

        const kinds = document.getElementsByClassName('kinds');
        for(let i=0;i<kinds.length;i++){
            if(k==kinds[i].value) {
                kinds[i].setAttribute('selected','selected');
                break;
            }
        }
        
    } catch (error) {
        
    }


    
    



</script>
</body>
</html>