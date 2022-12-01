<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/images/favicon.png">
    <title>자료현황 : 씨앗도서관 ☘</title>
</head>
<body>
<div id="wrap">
    <!-- 헤더 -->
    <c:import url="../temp/header.jsp"></c:import>
    <!-- 헤더 -->

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>자료현황</h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/DsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>자료현황</h3>
                <div class="navi">
                    <a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
                    <i class="arrow"></i> 도서관소개 <i class="arrow"></i>자료현황
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
            
            <!-- 컨텐츠넣어 -->
            <div id="contents" class="contentArea" style="padding: 40px 0 0;">
					
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
                <div class="summaryDesc mb30">
                    <div class="innerBox">
                        <div class="img">&nbsp;</div>
                        <div class="desc">
                            <p class="tit">도서관 자료현황</p>
                            <p class="mb05">씨앗도서관의 소장 자료현황입니다.</p>
                            <ul class="dot-list themeFC">
                                <li>기준일: ${today} </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- <script>
                    let today = new Date();   

                    let year = today.getFullYear();
                    let month = ('0' + (today.getMonth() + 1)).slice(-2);
                    let day = ('0' + today.getDate()).slice(-2);
                    let dateString = year + '.' + month  + '.' + day;

                    document.write(dateString);
                    
                </script> -->
            
                <h4 class="htitle"><span class="themeFC">씨앗도서관</span> 장서현황</h4>
                
                <p class="dot">도서현황<span>[단위 : 권]</span></p>
                
                <div class="tblWrap tblScroller">
                <table class="tbl">
                    <caption>도서현황</caption>
                    <colgroup>
                        <col span="11">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">소계</th>
                            <th scope="col">총류</th>
                            <th scope="col">철학</th>
                            <th scope="col">종교</th>
                            <th scope="col">사회<br>과학</th>
                            <th scope="col">자연<br>과학</th>
                            <th scope="col">기술<br>과학</th>
                            <th scope="col">예술</th>
                            <th scope="col">언어</th>
                            <th scope="col">문학</th>
                            <th scope="col">역사</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><fmt:formatNumber value="${total}" pattern="#,###"/> </td>

                            <c:forEach items="${ar}" var="dd">
                                <td><fmt:formatNumber value="${dd}" pattern="#,###"/> </td>
                                
                            
                            </c:forEach>
                        </tr>
                    </tbody>
                </table>
                </div>
                
                
                
                <!-- End Of the Real Contents-->

            </div>
            <!-- 컨텐츠넣어 -->
        </div>
    </div>






    <!-- footer -->
    <c:import url="../temp/footer.jsp"></c:import>
    <!-- //footer -->
</div>
</body>
</html>