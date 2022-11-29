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
                <h3>사이트맵/h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/GsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>신착자료</h3>
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
                        <li id="smb1"> <a href="/seoksu/menu/10095/program/30001/searchSimple.do" class="themeColor"> <em>자료검색</em> </a> 
                            <ul> 
                                <li id="smb1_1"><a href="/seoksu/menu/10095/program/30001/searchSimple.do">소장자료검색</a> 
                                    <ul class="MkSub"> 
                                        <li id="smb1_1_1"><a href="/seoksu/menu/10095/program/30001/searchSimple.do">통합검색</a> </li> 
                                        <li id="smb1_1_2"><a href="/seoksu/menu/10096/program/30002/searchDetail.do">고급검색</a> </li> 
                                </ul> 
                                </li> 
                                <li id="smb1_2"><a href="/seoksu/menu/10097/program/30003/searchKdc.do">주제별검색</a> </li> 
                                <li id="smb1_3"><a href="/seoksu/menu/10098/program/30004/accessionBookList.do">신착자료검색</a> </li> 
                                <li id="smb1_6"><a href="/seoksu/menu/10104/program/30006/magazineList.do">정기간행물검색</a> 
                                    <ul class="MkTab"> 
                                        <li id="smb1_6_1"><a href="/seoksu/menu/10104/program/30006/magazineList.do">잡지</a> </li> 
                                        <li id="smb1_6_2"><a href="/seoksu/menu/10105/program/30007/newspaperList.do">신문</a> </li> 
                                    </ul> 
                                </li> 
                                <li id="smb1_7"><a href="/seoksu/menu/10107/contents/40002/contents.do">비치희망도서신청</a> 
                                    <ul class="MkTab"> 
                                        <li id="smb1_7_1"><a href="/seoksu/menu/10107/contents/40002/contents.do">신청안내</a> </li> 
                                        <li id="smb1_7_2"><a href="/seoksu/menu/10108/program/30008/hopeBookSearch.do">신청하기</a> </li> 
                                    </ul> 
                                </li>
                            </ul> 
                        </li> 
                        <li id="smb2"> <a href="/seoksu/menu/10110/program/30009/recommendBookList.do" class="themeColor"> <em>독서정보</em> </a> 
                        <ul> 
                        <li id="smb2_1"><a href="/seoksu/menu/10110/program/30009/recommendBookList.do">사서추천도서</a> </li> 
                        <li id="smb2_2"><a href="/seoksu/menu/10112/program/30010/popularBookMonthList.do">도서대출베스트</a> 
                        <ul class="MkSub"> 
                            <li id="smb2_2_1"><a href="/seoksu/menu/10112/program/30010/popularBookMonthList.do">이달의 인기도서</a> </li> 
                            <li id="smb2_2_2"><a href="/seoksu/menu/10113/program/30011/popularBookAgeList.do">연령별 인기도서</a> </li> 
                            <li id="smb2_2_3"><a href="/seoksu/menu/10114/program/30012/popularBookResvList.do">예약 인기도서</a> </li> 
                            <li id="smb2_2_4"><a href="/seoksu/menu/10115/program/30013/popularBookSubjectList.do">주제별 인기도서</a> </li> 
                        </ul> </li> 
                        <li id="smb2_3"><a href="/seoksu/menu/10116/contents/40003/contents.do">원문/학술정보</a> </li> 
                        <li id="smb2_4"><a href="https://memory.library.kr/konan-search?type=keyword&amp;field=creator&amp;query=%EC%95%88%EC%96%91%EC%8B%9C" target="_blank" title="새창열림">향토자료(경기도메모리)</a> </li> 
                        <li id="smb2_5"><a href="/seoksu/menu/10119/contents/40032/contents.do">도서관특성화</a> 
                        <ul class="MkSub"> 
                            <li id="smb2_5_1"><a href="/seoksu/menu/10119/contents/40032/contents.do">다문화/실버</a> </li> 
                        </ul> </li> 
                        <li id="smb2_6"><a href="/seoksu/menu/10120/program/30014/libraryPopularBookList.do">공공도서관 인기도서</a> </li> 
                        <li id="smb2_7"><a href="/seoksu/menu/10121/contents/40004/contents.do">도서기증안내</a> </li> 
                        </ul> 
                        </li> 
                <li id="smb3"> <a href="/seoksu/menu/10123/contents/40005/contents.do" class="themeColor"> <em>문화행사/참여</em> </a> 
                 <ul> 
                  <li id="smb3_1"><a href="/seoksu/menu/10123/contents/40005/contents.do">독서마라톤</a> </li> 
                  <li id="smb3_2"><a href="/seoksu/menu/12223/contents/41241/contents.do">한 도시 한책 읽기</a> </li> 
                  <li id="smb3_3"><a href="/seoksu/menu/10124/program/30015/lectureList.do">문화행사신청</a> </li> 
                  <li id="smb3_4"><a href="/seoksu/menu/10125/program/30016/movieList.do">영화상영</a> </li> 
                  <li id="smb3_5"><a href="/seoksu/menu/12180/contents/41201/contents.do">미디어 창작실</a> </li> 
                  <li id="smb3_6"><a href="/seoksu/menu/10126/contents/40006/contents.do">스마트영어도서관</a> </li> 
                  <li id="smb3_7"><a href="/seoksu/menu/10127/contents/40007/contents.do">북스타트</a> </li> 
                  <li id="smb3_8"><a href="/seoksu/menu/10129/contents/40033/contents.do">견학신청</a> 
                   <ul class="MkTab"> 
                    <li id="smb3_8_1"><a href="/seoksu/menu/10129/contents/40033/contents.do">신청안내</a> </li> 
                    <li id="smb3_8_2"><a href="/seoksu/menu/10130/program/30017/visitCalendar.do">신청하기</a> </li> 
                   </ul> </li> 
                  <li id="smb3_9"><a href="/seoksu/menu/10131/program/30018/surveyList.do">설문조사</a> </li> 
                 </ul> </li> 
                <li id="smb4"> <a href="/seoksu/menu/10133/bbs/20001/bbsPostList.do" class="themeColor"> <em>이용안내</em> </a> 
                 <ul> 
                  <li id="smb4_1"><a href="/seoksu/menu/10133/bbs/20001/bbsPostList.do">도서관소식</a> </li> 
                  <li id="smb4_2"><a href="/seoksu/menu/10134/bbs/20002/bbsPostList.do">자주하는질문</a> </li> 
                  <li id="smb4_3"><a href="/seoksu/menu/12141/contents/41161/contents.do">도서관이용안내</a> 
                   <ul class="MkSub"> 
                    <li id="smb4_3_1"><a href="/seoksu/menu/12141/contents/41161/contents.do">도서관예절</a> </li> 
                    <li id="smb4_3_2"><a href="/seoksu/menu/10136/contents/40034/contents.do">이용시간</a> </li> 
                    <li id="smb4_3_3"><a href="/seoksu/menu/10137/program/30019/calendar.do">휴관일안내</a> </li> 
                    <li id="smb4_3_4"><a href="/seoksu/menu/10138/contents/40008/contents.do">회원가입</a> </li> 
                    <li id="smb4_3_5"><a href="/seoksu/menu/10139/contents/40009/contents.do">대출/반납/예약</a> </li> 
                    <li id="smb4_3_6"><a href="/seoksu/menu/10140/contents/40035/contents.do">편의시설</a> </li> 
                   </ul> </li> 
                  <li id="smb4_4"><a href="/seoksu/menu/10141/contents/40010/contents.do">상호대차</a> </li> 
                  <li id="smb4_5"><a href="/seoksu/menu/10142/contents/40011/contents.do">모바일앱</a> </li> 
                  <li id="smb4_6"><a href="/seoksu/menu/10143/contents/40012/contents.do">스마트도서관</a> </li> 
                  <li id="smb4_7"><a href="/seoksu/menu/10145/contents/40013/contents.do">책배달서비스</a> 
                   <ul class="MkSub"> 
                    <li id="smb4_7_1"><a href="/seoksu/menu/10145/contents/40013/contents.do">책바다</a> </li> 
                    <li id="smb4_7_2"><a href="/seoksu/menu/10146/contents/40014/contents.do">책나래</a> </li> 
                    <li id="smb4_7_3"><a href="/seoksu/menu/10147/contents/40015/contents.do">두루두루</a> </li> 
                    <li id="smb4_7_4"><a href="/seoksu/menu/10148/contents/40016/contents.do">내생애첫도서관</a> </li> 
                   </ul> </li> 
                  <li id="smb4_8"><a href="/seoksu/menu/10150/contents/40017/contents.do">전자도서관</a> 
                   <ul class="MkSub"> 
                    <li id="smb4_8_1"><a href="/seoksu/menu/10150/contents/40017/contents.do">전자책</a> </li> 
                    <li id="smb4_8_2"><a href="/seoksu/menu/10151/contents/40018/contents.do">오디오북</a> </li> 
                    <li id="smb4_8_3"><a href="/seoksu/menu/10154/contents/40021/contents.do">학술논문</a> </li> 
                    <li id="smb4_8_4"><a href="/seoksu/menu/10155/contents/40022/contents.do">한국학</a> </li> 
                    <li id="smb4_8_5"><a href="/seoksu/menu/10153/contents/40020/contents.do">도서요약</a> </li> 
                    <li id="smb4_8_6"><a href="/seoksu/menu/10152/contents/40019/contents.do">인문학강의</a> </li> 
                    <li id="smb4_8_7"><a href="/seoksu/menu/10156/contents/40023/contents.do">이러닝</a> </li> 
                    <li id="smb4_8_8"><a href="/seoksu/menu/11107/contents/40109/contents.do">전자잡지</a> </li> 
                    <li id="smb4_8_9"><a href="/seoksu/menu/11108/contents/40110/contents.do">IT강좌</a> </li> 
                   </ul> </li> 
                  <li id="smb4_9"><a href="/seoksu/menu/10157/bbs/20003/bbsPostList.do">도서관에바란다</a> </li> 
                  <li id="smb4_10"><a href="/seoksu/menu/10158/bbs/20004/bbsPostList.do">분실물센터</a> </li> 
                 </ul> </li> 
                <li id="smb5"> <a href="/seoksu/menu/10161/program/30020/dataStatus.do" class="themeColor"> <em>도서관소개</em> </a> 
                 <ul> 
                  <li id="smb5_1"><a href="/seoksu/menu/10161/program/30020/dataStatus.do">일반현황</a> 
                   <ul class="MkSub"> 
                    <li id="smb5_1_1"><a href="/seoksu/menu/10161/program/30020/dataStatus.do">자료현황</a> </li> 
                    <li id="smb5_1_2"><a href="/seoksu/menu/10163/contents/40036/contents.do">시설현황</a> 
                     <ul class="MkTab"> 
                      <li id="smb5_1_2_1"><a href="/seoksu/menu/10163/contents/40036/contents.do">전체현황</a></li> 
                      <li id="smb5_1_2_2"><a href="/seoksu/menu/10164/contents/40037/contents.do">CCTV설치현황</a></li> 
                     </ul> </li> 
                   </ul> </li> 
                  <li id="smb5_2"><a href="/seoksu/menu/10165/program/30021/staffList.do">조직/직원정보</a> </li> 
                  <li id="smb5_3"><a href="/seoksu/menu/10166/contents/40024/contents.do">도서관관련법규</a> </li> 
                  <li id="smb5_4"><a href="/seoksu/menu/10167/contents/40038/contents.do">찾아오시는길</a> </li> 
                 </ul> </li> 
                <li id="smb6"> <a href="/seoksu/menu/10169/program/30023/mypage/myInfo.do" class="themeColor"> <em>마이페이지</em> </a> 
                 <ul> 
                  <li id="smb6_1"><a href="/seoksu/menu/10169/program/30023/mypage/myInfo.do">나의정보</a> </li> 
                  <li id="smb6_2"><a href="/seoksu/menu/10171/program/30024/mypage/loanStatusList.do">도서이용내역</a> 
                   <ul class="MkTab"> 
                    <li id="smb6_2_1"><a href="/seoksu/menu/10171/program/30024/mypage/loanStatusList.do">대출현황</a> </li> 
                    <li id="smb6_2_2"><a href="/seoksu/menu/10172/program/30025/mypage/reservationStatusList.do">예약현황</a> </li> 
                    <li id="smb6_2_3"><a href="/seoksu/menu/10173/program/30026/mypage/loanHistoryList.do">대출이력</a> </li> 
                   </ul> </li> 
                  <li id="smb6_4"><a href="/seoksu/menu/10178/program/30027/mypage/libraryOneLillStatusList.do">상호대차조회</a> 
                   <ul class="MkTab"> 
                    <li id="smb6_4_1"><a href="/seoksu/menu/10178/program/30027/mypage/libraryOneLillStatusList.do">신청현황</a> </li> 
                    <li id="smb6_4_2"><a href="/seoksu/menu/10179/program/30028/mypage/libraryOneLillHistoryList.do">상호대차이력</a> </li> 
                   </ul> </li> 
                  <li id="smb6_5"><a href="/seoksu/menu/10180/program/30029/mypage/bookcaseList.do">관심도서목록</a> </li> 
                  <li id="smb6_6"><a href="/seoksu/menu/10181/program/30030/mypage/myPopularBookList.do">추천도서목록</a> </li> 
                  <li id="smb6_7"><a href="/seoksu/menu/10182/program/30008/mypage/hopeBookList.do">희망도서신청조회</a> </li> 
                  <li id="smb6_8"><a href="/seoksu/menu/10183/program/30015/mypage/lectureApplyList.do">문화행사신청조회</a> </li> 
                  <li id="smb6_9"><a href="/seoksu/menu/10184/program/30017/mypage/visitApplyList.do">견학신청조회</a> </li> 
                  <li id="smb6_10"><a href="/seoksu/menu/10186/bbs/20003/mypage/bbsPostList.do">나의게시글조회</a> 
                   <ul class="MkSub"> 
                    <li id="smb6_10_1"><a href="/seoksu/menu/10186/bbs/20003/mypage/bbsPostList.do">도서관에바란다</a> </li> 
                   </ul> </li> 
                 </ul> </li> 
                <li id="smb7" class=""> <a href="/seoksu/menu/10188/program/30031/siteMap.do" class="themeColor"> <em>홈페이지이용안내</em> </a> 
                 <ul> 
                  <li id="smb7_1"><a href="/seoksu/menu/10188/program/30031/siteMap.do">사이트맵</a> </li> 
                  <li id="smb7_2"><a href="/seoksu/menu/10189/contents/40025/contents.do">개인정보처리방침</a> </li> 
                  <li id="smb7_3"><a href="/seoksu/menu/10190/contents/40026/contents.do">이메일추출방지정책</a> </li> 
                 </ul> </li>
                
                                
                
                                
                                        <li id="smb9"><a href="/seoksu/memberLogin.do" class="themeColor"><strong>회원정보</strong></a>
                                            <ul>
                                                <li id="smb9_1"><a href="/seoksu/memberLogin.do">로그인</a></li>
                                                <li id="smb9_2"><a href="/seoksu/memberFindIdCertify.do">아이디찾기</a></li>
                                                <li id="smb9_3"><a href="/seoksu/memberFindPwdCertify.do">비밀번호 재발급</a></li>
                                                <li id="smb9_4"><a href="/seoksu/memberJoin.do">회원가입</a></li>
                                            </ul>
                                        </li>
                                    
                
                                
                                    <li id="smb10"><a href="/seoksu/jnsearch.do" class="themeColor"><strong>홈페이지검색</strong></a>
                                        <ul>
                                            <li id="smb10_1"><a href="/seoksu/jnsearch.do">홈페이지검색</a></li>
                                        </ul>
                                    </li>
                                
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
</body>
</html>