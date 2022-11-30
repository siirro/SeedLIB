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
    <link rel="stylesheet" href="/css/contents.css">
    <title>사이트맵 : 씨앗도서관 ☘</title>
</head>
<body>
<div id="wrap">
    <!-- 헤더 -->
    <c:import url="../temp/header.jsp"></c:import>
    <!-- 헤더 -->

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>사이트맵</h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/HsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>사이트맵</h3>
                <div class="navi">
                    <a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
                    <i class="arrow"></i> 홈페이지이용안내 <i class="arrow"></i>사이트맵
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
					
                <!--Forced tab Show Que-->
                <div class="ttabWrap">
                    <div id="virtSelect"><a href="#script">탭메뉴</a>
                    </div>
                    <ul id="ttab3" class="tnb clearfix">
                        <li class="ttabLast"></li>
                    </ul>
                </div>
                <!--Forced tab Show Que-->
                
                <!--Real Contents Start-->
                <div id="sitemap" class="sitemap">
                    <ul id="smapmenu">
                        <li id="smb1"> <a href="/search/simple" class="themeColor"> <em>자료검색</em> </a> 
                            <ul> 
                                <li id="smb1_1"><a href="/search/simple">소장자료검색</a> </li> 
                                <li id="smb1_2"><a href="/search/category">주제별검색</a> </li> 
                                <li id="smb1_3"><a href="/search/newBook">신착자료검색</a> </li>
                                
                            </ul> 
                        </li>
                        <li id="smb3"> <a href="#" class="themeColor"> <em>문화참여</em> </a> 
                            <ul> 
                                
                                <li id="smb3_3"><a href="#">문화행사신청</a> </li> 
                                <li id="smb1_7"><a href="/hope/hopeInfo">희망도서신청</a> </li>
                                <li id="smb2_7"><a href="/donation/donInfo">소장도서기증</a> </li>
                                <li id="smb3_9"><a href="/studyroom/roomList">열람실 조회/예약</a> </li> 
                            </ul> 
                        </li> 
                        <li id="smb4"> <a href="/guide/manners" class="themeColor"> <em>도서관안내</em> </a> 
                            <ul> 
                                <li id="smb4_1"><a href="/guide/manners">도서관예절</a> </li> 
                                <li id="smb4_2"><a href="/guide/time">이용시간</a> </li> 
                                <li id="smb4_3"><a href="/seoksu/menu/10137/program/30019/calendar.do">휴관일안내</a> </li>
                                <li id="smb4_5"><a href="/guide/rule">대여규칙</a> </li> 
                                <li id="smb4_6"><a href="/guide/convenience">편의시설</a> </li>
                            </ul> 
                        </li> 
                        <li id="smb5"> <a href="/info/bookStatus" class="themeColor"> <em>도서관소개</em> </a> 
                            <ul> 
                                <li id="smb5_1_1"><a href="/info/bookStatus">자료현황</a> </li> 
                                <li id="smb5_1_2"><a href="/info/facilityStatus">시설현황</a> </li> 
                                <li id="smb5_2"><a href="/info/organization">조직정보</a> </li> 
                                <li id="smb5_3"><a href="/info/law">도서관관련법규</a> </li> 
                                <li id="smb5_4"><a href="/info/map">찾아오시는길</a> </li> 
                            </ul> 
                        </li>
                        <li id="smb4"> <a href="" class="themeColor"> <em>도서관소식</em> </a> 
                            <ul> 
                                <li id="smb4_1"><a href="">공지사항</a> </li> 
                                <li id="smb4_2"><a href="">자주하는질문</a> </li> 
                                <li id="smb4_9"><a href="/seoksu/menu/10157/bbs/20003/bbsPostList.do">도서관에바란다</a> </li>
                                <li id="smb4_4"><a href="/seoksu/menu/10141/contents/40010/contents.do">자유게시판</a> </li>
                                <li id="smb4_10"><a href="/seoksu/menu/10158/bbs/20004/bbsPostList.do">분실물센터</a> </li> 
                            </ul> 
                        </li> 
                        <li id="smb6"> <a href="/mypage/myIndex" class="themeColor"> <em>마이페이지</em> </a> 
                            <ul> 
                                <li id="smb6_1"><a href="/seoksu/menu/10169/program/30023/mypage/myInfo.do">나의정보</a></li> 
                                <li id="smb6_2"><a href="/seoksu/menu/10171/program/30024/mypage/loanStatusList.do">도서이용내역</a></li> 
                                <li id="smb6_4"><a href="/seoksu/menu/10178/program/30027/mypage/libraryOneLillStatusList.do">상호대차조회</a></li> 
                                <li id="smb6_5"><a href="/seoksu/menu/10180/program/30029/mypage/bookcaseList.do">관심도서목록</a> </li>
                                <li id="smb6_7"><a href="/mypage/hopeList">희망도서조회</a> </li> 
                                <li id="smb6_7"><a href="/mypage/donList">도서기증조회</a> </li> 
                                <li id="smb6_9"><a href="/mypage/seatHistory">열람실 이용 내역</a> </li> 
                                <li id="smb6_8"><a href="/seoksu/menu/10183/program/30015/mypage/lectureApplyList.do">문화행사신청조회</a> </li> 
                                <li id="smb6_10"><a href="/seoksu/menu/10186/bbs/20003/mypage/bbsPostList.do">나의게시글조회</a> </li> 
                            </ul> 
                        </li> 
                        <li id="smb9"><a href="/seoksu/memberLogin.do" class="themeColor"><strong>회원정보</strong></a>
                            <ul>
                                <li id="smb9_1"><a href="/member/login">로그인</a></li>
                                <li id="smb9_2"><a href="/seoksu/memberFindIdCertify.do">아이디찾기</a></li>
                                <li id="smb9_3"><a href="/seoksu/memberFindPwdCertify.do">비밀번호 재발급</a></li>
                                <li id="smb9_4"><a href="/seoksu/memberJoin.do">회원가입</a></li>
                            </ul>
                        </li>
                        <li id="smb7" class=""> <a href="/policy/siteMap" class="themeColor"> <em>홈페이지이용안내</em> </a> 
                            <ul> 
                                <li id="smb7_1"><a href="/policy/siteMap">사이트맵</a> </li> 
                                <li id="smb7_2"><a href="/policy/personal">개인정보처리방침</a> </li> 
                                <li id="smb7_3"><a href="/policy/email">이메일추출방지정책</a> </li> 
                            </ul> 
                        </li>
                    </ul>
                </div>           
                <!-- End Of the Real Contents-->

            </div>
            <!-- 컨텐츠끝 -->

        </div>
    </div>

    <!-- footer -->
    <c:import url="../temp/footer.jsp"></c:import>
    <!-- //footer -->
</div>
</body>
</html>