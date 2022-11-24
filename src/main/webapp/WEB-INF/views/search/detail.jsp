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
                
                <!-- 레이어팝업 -->
                <div class="chart-pop chartSns" tabindex="0" data-tooltip-con="chartSns" data-focus="chartSns" data-focus-prev="chartSns-close">
                    <div class="layer-content">
                        <h4>QR코드</h4>
                        <div class="layer-content">
                            <div class="conTxt ta_c" id="qrcodeImg"></div>
                            <div class="conTxt">
                                <p>QR코드 이미지 저장</p>
                                QR코드 &gt; 우측 클릭 &gt; 저장 &gt; 확장자 변경(png, jpg) 후 저장
                            </div>
                        </div>
                        <a href="#close" class="chart-close01 tooltip-close" data-focus="chartSns-close" data-focus-next="chartSns"><span class="blind">닫기</span></a>
                    </div>
                </div>
                <!-- //레이어팝업 -->
                
                <script src="/include/js/clipboard.min.js"></script>
                <script>
                    $('#sns').click(function(e) {
                        $.ajax({
                            type: "POST",
                            url: "/cmmn/share/shortUrl.do",
                            dataType : "json",
                            data: { "url" : "https://lib.anyang.go.kr/seoksu/menu/10096/program/30002/searchDetail.do"},
                            async: false,
                            error : function (request, status, error){
                                //alert("에러코드: " + request.status + "\r\n메시지: " + request.responseText);
                            },
                            success: function(data) {
                                //$("#shortUrl").html(data.url);
                                $("#qrcodeImg").html('<img src="' + data.url + '.qr" alt="QR코드 : https://lib.anyang.go.kr/seoksu/menu/10096/program/30002/searchDetail.do" >');
                                $("#sns1").attr('data-clipboard-text', data.url);
                            }
                        });
                    });
                
                    function fnShorturlCopy() {
                        var clipboard = new ClipboardJS('#sns1');
                        alert('단축주소가 복사되었습니다.');
                        return false;
                    }
                </script>
                                <div id="contents" class="contentArea">
                                    
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
                
                                    <form id="searchForm" name="searchForm" method="post">
                                        <input type="hidden" name="searchType" value="DETAIL">
                                        <div class="searchWrap">
                                            <div class="searchToparea">
                                                <div class="searchBardiv detail">
                                                    <dl class="detailSearch">
                                                        <dt>검색어</dt>
                                                        <dd><input type="text" name="searchAdvSearchKeywordA" id="searchAdvSearchKeywordA" title="포함할 단어 입력" placeholder="다음 단어 모두 포함"></dd>
                                                        <dd><input type="text" name="searchAdvSearchKeywordB" title="포함할 문구 입력" placeholder="다음 문구 정확하게 포함"></dd>
                                                        <dd><input type="text" name="searchAdvSearchKeywordC" title="적어도 하나 포함할 단어 입력" placeholder="다음 단어 적어도 하나 포함"></dd>
                                                        <dd><input type="text" name="searchAdvSearchKeywordD" title="제외할 단어 입력" placeholder="다음 단어 제외"></dd>
                                                    </dl>
                                                </div>
                
                                                <div class="searchUtilWrap high-searcform">
                                                    <ol>
                                                        <li><a href="javascript:;" data-tab="sh_util01" class="sh_util01">다국어 입력</a></li>
                                                        <!-- 도서관 선택은 모바일에서 보이지 않게 함. line 1632 에 id="sh_util03" 도 안보이게 -->
                                                        <li><a href="javascript:;" data-tab="sh_util03" class="sh_util03">도서관 선택</a></li>
                                                    </ol>
                                                </div>
                                            </div>
                
                                            <div class="searchBotarea">
                                                <div class="divSelect" id="sh_util01">
                                                    <div class="worldwordWrap">
                                                        
                                                    </div>
                                                </div>
                
                                                <div class="divSelect" id="sh_util03">
                                                    <!-- 도서관 정보 -->
                                                    
                
                
                
                <div>
                    <div class="box_check">
                        <input type="checkbox" name="searchManageCode" id="searchManageCode" value="ALL" class="check"> <label for="searchManageCode">전체 도서관</label>
                    </div>
                    <div class="box_check">
                        <ol>
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr1" value="MA" class="check" checked="checked">
                                        <label for="searchManageCodeArr1">석수도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr2" value="MI" class="check">
                                        <label for="searchManageCodeArr2">만안도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr3" value="MH" class="check">
                                        <label for="searchManageCodeArr3">삼덕도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr4" value="ME" class="check">
                                        <label for="searchManageCodeArr4">박달도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr5" value="MB" class="check">
                                        <label for="searchManageCodeArr5">평촌도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr6" value="MG" class="check">
                                        <label for="searchManageCodeArr6">관양도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr7" value="MC" class="check">
                                        <label for="searchManageCodeArr7">비산도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr8" value="MD" class="check">
                                        <label for="searchManageCodeArr8">호계도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr9" value="MJ" class="check">
                                        <label for="searchManageCodeArr9">어린이도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr10" value="MF" class="check">
                                        <label for="searchManageCodeArr10">벌말도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr11" value="MK" class="check">
                                        <label for="searchManageCodeArr11">안양역스마트도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr12" value="ML" class="check">
                                        <label for="searchManageCodeArr12">동안구청스마트도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr13" value="MM" class="check">
                                        <label for="searchManageCodeArr13">범계스마트도서관</label>
                                    </li>
                                
                            
                                
                                    <li>
                                        <input type="checkbox" name="searchManageCodeArr" id="searchManageCodeArr14" value="MN" class="check">
                                        <label for="searchManageCodeArr14">인덕원역스마트도서관</label>
                                    </li>
                                
                            
                        </ol>
                    </div>
                </div>
                                                    <!-- 도서관 정보 -->
                                                </div>
                
                                            </div>
                                        </div>
                
                                        <div class="searchdetailWrap">
                                            <div class="detailSettingWrap">
                                                <dl class="data-type-select">
                                                    <dt>자료유형</dt>
                                                    <dd><input type="checkbox" name="searchAdvContentsType" id="Allbook" value="ALL" class="check" checked="checked"> <label for="Allbook">전체</label></dd>
                                                    <dd><input type="checkbox" name="searchAdvContentsTypeArr" id="book1" value="단행본" class="check"> <label for="book1">단행본</label></dd>
                                                    <dd><input type="checkbox" name="searchAdvContentsTypeArr" id="book2" value="멀티미디어" class="check"> <label for="book2">멀티미디어</label></dd>
                                                    <dd><input type="checkbox" name="searchAdvContentsTypeArr" id="book3" value="연속간행물" class="check"> <label for="book3">연속간행물</label></dd>
                                                </dl>
                
                                                <div class="detailDataInput">
                                                    <dl>
                                                        <dt>자료명</dt>
                                                        <dd><input type="text" name="searchAdvTitle" title="자료명 입력" placeholder="예: 책제목"></dd>
                                                    </dl>
                                                    <dl>
                                                        <dt>저자명</dt>
                                                        <dd><input type="text" name="searchAdvAuthor" title="저자명 입력" placeholder="예: 홍길동"></dd>
                                                    </dl>
                                                    <dl>
                                                        <dt>발행처</dt>
                                                        <dd><input type="text" name="searchAdvPublisher" title="발행처 입력" placeholder="예: 가나출판사"></dd>
                                                    </dl>
                                                    <dl class="halfWidth1">
                                                        <dt>ISBN</dt>
                                                        <dd><input type="text" name="searchAdvIsbn" title="ISBN 입력" placeholder="예: 9788912345678"></dd>
                                                    </dl>
                                                    <dl class="halfWidth2">
                                                        <dt>ISSN</dt>
                                                        <dd><input type="text" name="searchAdvIssn" title="ISSN 입력" placeholder="예: 12345678"></dd>
                                                    </dl>
                                                    <dl class="devideWidth1">
                                                        <dt>발행년</dt>
                                                        <dd>
                                                            <input type="text" name="searchAdvFromPubYear" maxlength="4" class="numeric" title="시작 발행년 입력" placeholder="발행년(시작)">
                                                            <span>-</span>
                                                            <input type="text" name="searchAdvToPubYear" maxlength="4" class="numeric" title="종료 발행년 입력" placeholder="발행년(종료)">
                                                        </dd>
                                                    </dl>
                                                    <dl class="devideWidth2">
                                                        <dt>분류기호</dt>
                                                        <dd><input type="text" name="searchAdvClassNo" title="분류기호 입력" placeholder="예: 813.6"></dd>
                                                    </dl>
                                                    <dl class="devideWidth3">
                                                        <dt>언어</dt>
                                                        <dd>
                                                            <select name="searchAdvTextLang" title="언어 선택">
                                                                <option value="ALL">전체</option>
                                                                <option value="한국어, 영어">한국어, 영어</option>
                                                                <option value="중국어">중국어</option>
                                                                <option value="일본어">일본어</option>
                                                                <option value="프랑스어">프랑스어</option>
                                                                <option value="독일어">독일어</option>
                                                                <option value="이탈리아어">이탈리아어</option>
                                                                <option value="스페인어">스페인어</option>
                                                                <option value="기타">기타</option>
                                                            </select>
                                                        </dd>
                                                    </dl>
                                                </div>
                                            </div>
                
                
                                            <div class="btnGroup">
                                                <a href="#btn" id="resetBtn" class="btn white">입력초기화</a>
                                                <a href="#btn" id="searchBtn" class="btn themeBtn">검색</a>
                                            </div>
                
                                        </div>
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
</body>
</html>