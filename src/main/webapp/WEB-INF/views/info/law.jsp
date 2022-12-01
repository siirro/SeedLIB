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

    <title>도서관관련법규 : 씨앗도서관 ☘</title>
</head>
<body>
<div id="wrap">
    <!-- 헤더 -->
    <c:import url="../temp/header.jsp"></c:import>
    <!-- 헤더 -->

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>도서관관련법규</h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/DsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>도서관관련법규</h3>
                <div class="navi">
                    <a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
                    <i class="arrow"></i> 도서관소개 <i class="arrow"></i>도서관관련법규
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
                                    <!-- 도서관소개_도서관관련법규 -->
                <dl class="lawBox">
                    <dt class="txtArea">도서관법</dt>
                    <dd class="btnArea"><a class="btn" href="https://www.law.go.kr/LSW/lsSc.do?section=&amp;menuId=1&amp;subMenuId=15&amp;tabMenuId=81&amp;eventGubun=060101&amp;query=%EB%8F%84%EC%84%9C%EA%B4%80%EB%B2%95#undefined" target="_blank" title="새 창 열기">바로가기</a></dd>
                </dl>
                
                <dl class="lawBox">
                    <dt class="txtArea">도서관법 시행령</dt>
                    <dd class="btnArea"><a class="btn" href="https://www.law.go.kr/LSW/lsSc.do?section=&amp;menuId=1&amp;subMenuId=15&amp;tabMenuId=81&amp;eventGubun=060101&amp;query=%EB%8F%84%EC%84%9C%EA%B4%80%EB%B2%95%EC%8B%9C%ED%96%89%EB%A0%B9#undefined" target="_blank" title="새 창 열기">바로가기</a></dd>
                </dl>
                
                <dl class="lawBox">
                    <dt class="txtArea">도서관법 시행규칙</dt>
                    <dd class="btnArea"><a class="btn" href="https://www.law.go.kr/LSW/lsSc.do?section=&amp;menuId=1&amp;subMenuId=15&amp;tabMenuId=81&amp;eventGubun=060101&amp;query=%EB%8F%84%EC%84%9C%EA%B4%80%EB%B2%95+%EC%8B%9C%ED%96%89%EA%B7%9C%EC%B9%99+#undefined
                " target="_blank" title="새 창 열기">바로가기</a></dd>
                </dl>
                
                <dl class="lawBox">
                    <dt class="txtArea">도서관 행정 서비스 헌장</dt>
                    <dd class="btnArea"><a class="btn" href="#link" onclick="fnAdminLink();">바로가기</a></dd>
                </dl>
                
                <dl class="lawBox">
                    <dt class="txtArea">안양시평생교육원 운영에 관한 조례</dt>
                    <dd class="btnArea"><a class="btn" href="http://jachilaw.com/DATA/GG-AY/PDF/1-11-01-00-009-20200331.PDF" target="_blank" title="새 창 열기">바로가기</a></dd>
                </dl>
                
                <dl class="lawBox">
                    <dt class="txtArea">안양시평생교육원 운영에 관한 조례 시행규칙</dt>
                    <dd class="btnArea"><a class="btn" href="http://jachilaw.com/DATA/GG-AY/PDF/1-11-01-00-010-20191122.PDF" target="_blank" title="새 창 열기">바로가기</a></dd>
                </dl>
                
                <dl class="lawBox">
                    <dt class="txtArea">안양시작은도서관 설치 및 운영 지원에 관한 조례</dt>
                    <dd class="btnArea"><a class="btn" href="http://jachilaw.com/DATA/GG-AY/PDF/1-10-02-00-001-20181228.PDF" target="_blank" title="새 창 열기">바로가기</a></dd>
                </dl>
                
                <dl class="lawBox">
                    <dt class="txtArea">안양시 독서문화 진흥 조례</dt>
                    <dd class="btnArea"><a class="btn" href="http://jachilaw.com/DATA/GG-AY/PDF/1-10-01-00-011-20160106.PDF" target="_blank" title="새 창 열기">바로가기</a></dd>
                </dl>
                
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