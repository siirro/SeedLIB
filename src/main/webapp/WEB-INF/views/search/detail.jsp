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
    
    <title>고급검색 : 씨앗도서관 ☘</title>
    

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
                    <h3>고급검색</h3>
                    <div class="navi"><a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 자료검색 <i class="arrow"></i>소장자료검색<i class="arrow"></i>고급검색</div>
                    <div class="snsFarm">
                        <ul class="snsBtnArea clearfix">
                            <li>
                                <a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
                                <div id="snsGroup" class="snsList clearfix">
                                    <a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
                                    <a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
                                    <a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/seoksu/menu/10096/program/30002/searchDetail.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
                                    <a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/seoksu/menu/10096/program/30002/searchDetail.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
                                    <a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/seoksu/menu/10096/program/30002/searchDetail.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
                                </div>
                            </li>
                            <li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('seoksu'); return false;"><span class="blind">현재화면 프린트</span></a></li>
                        </ul>
                    </div>
                </div>
                
                
                <div id="contents" class="contentArea" style="padding: 0px 0 0;">
                                    
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
                    <form action="./detailResult" name="searchForm" method="get" id="detailForm">
                        <div class="searchdetailWrap">
                            <div class="detailSettingWrap">
                                <div class="detailDataInput" style="margin-top: 0px;">
                                    <dl>
                                        <dt>자료명</dt>
                                        <dd><input type="text" class="resee" value="${param.searchTitle}" name="searchTitle" title="자료명 입력" placeholder="예: 책제목"></dd>
                                    </dl>
                                    <dl>
                                        <dt>저자명</dt>
                                        <dd><input type="text" class="resee" value="${param.searchWriter}" name="searchWriter" title="저자명 입력" placeholder="예: 신짱구"></dd>
                                    </dl>
                                    <dl>
                                        <dt>발행처</dt>
                                        <dd><input type="text" class="resee" value="${param.searchPublisher}" name="searchPublisher" title="발행처 입력" placeholder="예: 구디출판사"></dd>
                                    </dl>
                                    <dl>
                                        <dt>ISBN</dt>
                                        <dd><input type="text" class="resee" value="${param.searchISBN}" name="searchISBN" title="ISBN 입력" placeholder="예: 9788912345678"></dd>
                                    </dl>
                                    
                                    <dl class="devideWidth1">
                                        <dt>발행년</dt>
                                        <dd>
                                            <input type="text" class="resee" value="${param.searchDate1}" name="searchDate1" id="searchDate1" maxlength="4" class="numeric" title="시작 발행년 입력" placeholder="발행년(시작)">
                                            <span>-</span>
                                            <input type="text" class="resee" value="${param.searchDate2}" name="searchDate2" id="searchDate2" maxlength="4" class="numeric" title="종료 발행년 입력" placeholder="발행년(종료)">
                                        </dd>
                                    </dl>
                                    <dl class="devideWidth2">
                                        <dt>분류기호</dt>
                                        <dd>
                                            <!-- <input type="text" class="resee" value="${param.searchCategory}" name="searchCategory" title="분류기호 입력" placeholder="예: 8"> -->
                                            <select id="cateSelect" class="resee" name="searchCategory" title="정렬조건 선택" placeholder="분류기호를 선택하세요" value="">
                                                <option selected value="">분류기호 선택</option>
                                                <option class="cates" value="0">0: 총류</option>
                                                <option class="cates" value="1">1: 철학</option>
                                                <option class="cates" value="2">2: 종교</option>
                                                <option class="cates" value="3">3: 사회과학</option>
                                                <option class="cates" value="4">4: 자연과학</option>
                                                <option class="cates" value="5">5: 기술과학</option>
                                                <option class="cates" value="6">6: 예술</option>
                                                <option class="cates" value="7">7: 언어</option>
                                                <option class="cates" value="8">8: 문학</option>
                                                <option class="cates" value="9">9: 역사</option>
                                            </select>
                                        </dd>
                                    </dl>
                                </div>
                            </div>

                            <div class="btnGroup">
                                <input type="button" id="resetBtn" class="btn white" value="입력초기화"></a>
                                <input type="button" id="searchBtn" class="btn themeBtn" value="검색"></a>
                            </div>

                          

                        </div>

                        <!-- 검색결과 -->
                        <div class="searchResultWrap">
                            <div class="result_box">
                                <div class="listSetting" >
                                    <c:if test="${not empty list}">
                                    <div class="result_screen">'<strong>자료명:${param.searchTitle}</strong>', 
                                        '<strong>저자명:${param.searchWriter}</strong>', 
                                        '<strong>발행처:${param.searchPublisher}</strong>', 
                                        '<strong>ISBN:${param.searchISBN}</strong>', 
                                        '<strong>발행년:${param.searchDate1}<c:if test="${not empty param.searchDate1}">~</c:if>${param.searchDate2}</strong>', 
                                        '<strong>분류기호:${param.searchCategory}
                                            <!-- <c:choose>
                                                <c:when test="${param.searchCategory eq 0}">총류</c:when>
					                        <c:when test="${param.searchCategory eq 1}">철학</c:when>
					                        <c:when test="${param.searchCategory eq 2}">종교</c:when>
					                        <c:when test="${param.searchCategory eq 3}">사회과학</c:when>
					                        <c:when test="${param.searchCategory eq 4}">자연과학</c:when>
					                        <c:when test="${param.searchCategory eq 5}">기술과학</c:when>
					                        <c:when test="${param.searchCategory eq 6}">예술</c:when>
					                        <c:when test="${param.searchCategory eq 7}">언어</c:when>
					                        <c:when test="${param.searchCategory eq 8}">문학</c:when>
                                            <c:otherwise>역사</c:otherwise>
                                            </c:choose> -->
                                        </strong>'
                                        에 대한 검색결과 총 
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
                                                <option class="kinds" value="score">정확도 순</option>
                                                <option class="kinds" value="title">서명 순</option>
                                                <option class="kinds" value="writer">저자 순</option>
                                                <option class="kinds" value="publisher">발행처 순</option>
                                                <option class="kinds" value="num">대출수 순</option>
                                            </select>

                                            <!-- <a href="" id="sortListBtn" class="btn">확인</a> -->
                                            <input type="button" id="searchBtn1" class="btn" value="확인">
                                            <!-- <input type="button" id="searchBtn" title="검색" class="unifiedSearchbtn"> -->
                                            
                                        </div>
                                    </c:if>
                                </div>

                            </div>
                        </div>
                        <!-- 검색설정랩 -->

                        <!-- <script src="/js/search.js"></script> -->

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
                                                        <a href="#link" onclick="location.href='../book/detail?isbn=${list.isbn}'" class="book_name kor on">${list.title}</a>
                                                        <ul class="dot-list clearfix">
                                                            <li class="kor on"><span>저자</span> : ${list.writer}</li>
                                                            <li class="kor on"><span>발행처</span> : ${list.publisher}</li>
                                                            
                                                                    <li><span>발행년도</span> : ${list.bookDate}</li>
                                                                    <li><span>ISBN</span> : ${list.isbn}</li>
                                                                
                                                        </ul>
                                                    </div>
                            
                                                    <div class="bookDetailInfo">
                                                        <ol>
                                                            <li class="tlqkf"><a id="btn_haveInfo${status.count}" onclick="bookInfo1(${list.isbn})" class="btn_haveInfo" title="소장정보 축소됨" data-id="${status.count}">소장정보</a></li>
                                                            <li><a id="btn_sergeInfo${status.count}" class="btn_sergeInfo" title="서지정보 축소됨">서지정보</a></li>
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
                                                                    <th scope="col">자료실</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody class="cnrkgktpdy">
                                                                    <tr class="MA">
                                                                        <td></td>
                                                                        <td>
                                                                            대출중
                                                                            <br>(예약가능)
                                                                            <br>(예약:1명)
                                                                        </td>
                                                                        <td>2022.11.25</td>
                                                                        <td></td>
                                                                        <td>
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
                                                                    <td class="ta_l">${list.writer}</td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">발행사항</th>
                                                                    <td class="ta_l">서울:${list.publisher},${list.bookDate}</td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">형태사항</th>
                                                                    <td class="ta_l"><p>?page</p></td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">ISBN사항</th>
                                                                    <td class="ta_l">${list.isbn} 03190(이건모지) ￦1000000</td>
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

                                    // $(".btn_haveInfo").on("click", function(){
                                    //     let id=$(this).attr("data-id")
                                    //     if(!$(this).hasClass("on")) {
                                    //         $(this).addClass("on");
                                    //         $(".whereLibrary").addClass("open");
                                    //         $(".bookInfo").removeClass("open");
                                    //         $(this).prop("title","소장정보 확장됨");
                                    //     }
                                    // })
                                    // $(".tlqkf").on("click", ".btn_haveInfo", function () {
                                    //     if ($(this).hasClass("on")) {
                                    //         $(this).removeClass("on");
                                    //         $(".whereLibrary").removeClass("open");
                                    //         $(".bookInfo").removeClass("open");
                                    //         $(".btn_sergeInfo").removeClass("on");
                                    //     let id=$(this).attr("data-id")
                                    //     }else {
                                    //         $(this).addClass("on");
                                    //         let id=$(this).attr("data-id")
                                    //         id = "#collectionInfo"+id;
                                    //         $(id).addClass("open");
                                    //     }
                                    // });

                                    // for(let i=1;i<=10;i++) {
                                    //     $('#'+"btn_haveInfo"+i).click(function(){            
                                            
                                    //         if(!$('#'+"collectionInfo"+i).hasClass("open")) {
                                    //             $('#'+"collectionInfo"+i).addClass("open");
                                    //             $(this).addClass("on");
                                    //             $('#'+"bookInfo"+i).hide();
                                    //         } else {
                                    //             $('#'+"collectionInfo"+i).removeClass("open");
                                    //             $(this).removeClass("on");
                                                
                                    //         }

                                            
                                    //     });
                                    // } 

                                    // for(let i=1;i<=10;i++) {
                                    //     $('#'+"btn_sergeInfo"+i).click(function(){            
                                            
                                    //         if(!$('#'+"bookInfo"+i).hasClass("open")) {
                                    //             $('#'+"bookInfo"+i).addClass("open");
                                    //             $(this).addClass("on");
                                    //             $('#'+"collectionInfo"+i).hide();
                                    //         } else {
                                    //             $('#'+"bookInfo"+i).removeClass("open");
                                    //             $(this).removeClass("on");
                                                
                                    //         }
                                    //     });
                                    // } 

                                    
                                    // for(let i=1;i<=10;i++) {
                                    //     $('#'+"btn_haveInfo"+i).click(function(){            
                                    //         console.log("아");
                                    //         $('#'+"collectionInfo"+i).toggle();
                                    //         $('#'+"bibliographicInfo"+i).removeClass("open");
                                    //     });
                                    // } 

                                    // for(let i=1;i<=10;i++) {
                                    //     $('#'+"btn_sergeInfo"+i).click(function(){            
                                    //         console.log("아");
                                    //         $('#'+"bibliographicInfo"+i).toggle();
                                    //         $('#'+"collectionInfo"+i).removeClass("open");
                                    //     });
                                    // } 


                                    // for(let i=1;i<=10;i++) {
                                    //     $('#'+"btn_haveInfo"+i).click(function(){
                                    //             if($('#'+"collectionInfo"+i).hasClass("open") === true) {
                                    //                 $('#'+"collectionInfo"+i).removeClass("open");
                                    //                 $(this).prop("title","소장정보 축소됨");
                                    //                 return false;
                                    //             }
                                    //     });
                                    // } 
                                    

                                </script>

                            </div>
                            <c:if test="${not empty list}">
                            <div class="pagingWrap">
                                <input type="hidden" name="page" value="${pager.page}">
                                <p class="paging">
                                    <a href="./detailResult?searchTitle=${pager.searchTitle}&searchWriter=${pager.searchWriter}&searchPublisher=${pager.searchPublisher}&searchISBN=${pager.searchISBN}&searchdate1=${pager.searchDate1}&searchdate2=${pager.searchDate2}&searchCategory=${pager.searchCategory}&kind=${pager.kind}&page=1" class="btn-paging first ${pager.page eq 1?'disabledLink':''}"><span class="blind">맨 첫 페이지로 가기</span></a>
                                    
                                    <a href="./detailResult?searchTitle=${pager.searchTitle}&searchWriter=${pager.searchWriter}&searchPublisher=${pager.searchPublisher}&searchISBN=${pager.searchISBN}&searchdate1=${pager.searchDate1}&searchdate2=${pager.searchDate2}&searchCategory=${pager.searchCategory}&kind=${pager.kind}&page=${pager.startNum-1}" class="btn-paging prev ${pager.page eq 1?'disabledLink':''}"><span class="blind">이전 10개 보기</span></a>
                                    
                                    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                        <!-- <span class="current">1</span> -->
                                        <a href="./detailResult?searchTitle=${pager.searchTitle}&searchWriter=${pager.searchWriter}&searchPublisher=${pager.searchPublisher}&searchISBN=${pager.searchISBN}&searchdate1=${pager.searchDate1}&searchdate2=${pager.searchDate2}&searchCategory=${pager.searchCategory}&kind=${pager.kind}&page=${i}" id="ppaaggee${i}">${i}</a>
                                        
                                    </c:forEach>
                                    <a href="./detailResult?searchTitle=${pager.searchTitle}&searchWriter=${pager.searchWriter}&searchPublisher=${pager.searchPublisher}&searchISBN=${pager.searchISBN}&searchdate1=${pager.searchDate1}&searchdate2=${pager.searchDate2}&searchCategory=${pager.searchCategory}&kind=${pager.kind}&page=${pager.lastNum+1}" class="btn-paging next ${pager.next?'':'disabledLink'}"><span class="blind">다음 10개 보기</span></a>
                                    <a href="./detailResult?searchTitle=${pager.searchTitle}&searchWriter=${pager.searchWriter}&searchPublisher=${pager.searchPublisher}&searchISBN=${pager.searchISBN}&searchdate1=${pager.searchDate1}&searchdate2=${pager.searchDate2}&searchCategory=${pager.searchCategory}&kind=${pager.kind}&page=${pager.totalPage1}" class="btn-paging last ${pager.page eq pager.totalPage1?'disabledLink':''}"><span class="blind">맨 마지막 페이지로 가기</span></a>
                                    </p>
                            </div>
                            </c:if>
                            <!-- //페이징 -->

                        
                            
                        </div>
                        <!-- 리스트 -->
                        <!-- 검색결과 -->


                    </form>
                    <!-- End Of the Real Contents-->
                </div>
            </div>

        </div>
    </div>

    <!-- footer -->
    <c:import url="../temp/footer.jsp"></c:import>
    <!-- //footer -->
</div>

<script>

    //페이징 js
    try {

        // 화살표들 disabledLink 클래스 걸려있으면 누를수없게 a태그에서 href 속성을 삭제시킴
        let disables = document.querySelectorAll(".disabledLink")
        disables.forEach(element => {
            element.removeAttribute('href');
        });

        //모델앤뷰.pager로 받은 페이지 번호에 해당하는 id를 찾아서 걔를 초록색으로 바꿈.
        let ppaaggee = document.querySelector('#'+"ppaaggee"+'${pager.page}');
        ppaaggee.style.background="#9be15d";
        ppaaggee.style.color="#fff";

    } catch (error) {
        
    }

    

    // 종료년도만 입력시 검색불가
    $("#searchBtn").click(function(){
        if($("#searchDate2").val()!=''){
            if($("#searchDate1").val()=='') {
                alert("시작 발행년도를 입력해주세요.")
                return false;
            }
        }
        $("#detailForm").submit();
    })

    // 정렬 확인버튼
    $("#searchBtn1").click(function(){
        $("#detailForm").submit();
    })

    // 정렬 선택한것 표시
    let k = '${param.kind}'
    const kinds = document.getElementsByClassName('kinds');
    for(let i=0;i<kinds.length;i++){
        if(k==kinds[i].value) {
            kinds[i].setAttribute('selected','selected');
            break;
        }
    }

    //카테고리 고정
    let sc = '${param.searchCategory}'
    console.log(sc);
    const cates = document.getElementsByClassName('cates');
    for(let i=0;i<cates.length;i++){
        if(sc==cates[i].value) {
            cates[i].setAttribute('selected','selected');
            break;
        }
    }

    // 입력초기화
    $("#resetBtn").click(function(){
        $(".resee").each(function(index, item){
            $(this).val("");
            for(let i=0;i<cates.length;i++){
                if(sc==cates[i].value) {
                    cates[i].removeAttribute('selected','selected');
                }
            }
        })
    })


</script>
<script defer>

    let kw = '${param.searchTitle}'
        $(".book_dataInner>a:contains('"+kw+"')").each(function (d, f) {
            var regex = new RegExp(kw, 'gi');
            f.innerHTML=f.innerHTML.replace(regex, '<span class="highlight word">'+kw+'</span>');
        });
    let kw2 = '${param.searchWriter}'
    if(kw2!='') {
        $(".book_dataInner>ul>li:nth-child(1):contains('"+kw2+"')").each(function (d, f) {
            var regex = new RegExp(kw2, 'gi');
            f.innerHTML=f.innerHTML.replace(regex, '<span class="highlight word">'+kw2+'</span>');
        });
    }
    let kw3 = '${param.searchPublisher}'
    if(kw3!='') {
        $(".book_dataInner>ul>li:nth-child(2):contains('"+kw3+"')").each(function (d, f) {
            var regex = new RegExp(kw3, 'gi');
            f.innerHTML=f.innerHTML.replace(regex, '<span class="highlight word">'+kw3+'</span>');
        });
    }
    </script>

<script>

    function bookInfo1(isbn) {

        $.ajax({
            type:"GET",
            url :"./simpleresultInfo1",
            traditional:true, //배열을 전송할 때 사용, true
            data:{
                isbn:isbn
            },
            success : function(data){
                // console.log("성공");
                // console.log("그냥데이터",data.detail);

                const detail = data.detail;
                //let str = JSON.stringify(data);
                //console.log(str);
                
                $.each(detail, function(index, item) { // 데이터 =item
                    let ableMsg = "";
                    let cc = "";
                    let cnrk = "";
                    let cnrkgktpdy = document.querySelectorAll(".cnrkgktpdy");

                    for(let i=0;i<item.libVOs.length; i++) {
                        
                        if(item.bookLibVOs[i].quantity!=0) {
                            ableMsg = "대출 가능<br>(대출 가능 권수 : "+item.bookLibVOs[i].quantity+"권)";
                        } else {
                            ableMsg = "대출 불가능"
                        }
                        
                        if(item.libVOs[i].libNum == 0) {
                            if(item.bookLibVOs[i].able == 1) {
                                cc = '<button type="button" class="btn white small" id="LoanAlretBtn" title="대출신청">대출신청</button>';
                            } else {
                                cc = '<button type="button" class="btn white small" id="ResAlretBtn" title="예약신청">예약신청</button>';
                            }
                        } else {
                            if(item.bookLibVOs[i].able == 1) {
                                cc = '<button type="button" id="MuAlretBtn" class="btn white small">상호대차</button>';
                            }
                        }
                        
                        // let dsffs = '<tr class="MA"><td></td><td>대출중<br>(예약가능)<br>(예약:1명)</td><td>2022.11.25</td><td></td><td></td></tr>';
                        // cnrk += '<tr class="MA"><td>'+item.libVOs[i].libName+'</td><td>'+ableMsg+'</td><td>반납예정일</td><td>'+cc+'</td><td></td></tr>';
                        cnrk += '<tr class="MA"><td>'+item.libVOs[i].libName+'</td><td>'+ableMsg+'</td><td>2층 일반 자료실</td></tr>';
                        
                    }
                    $(".cnrkgktpdy").html(cnrk);

                });
            },
            error   : function(){
                console.log("실패");
            }
        })
    }

</script>
</body>
</html>