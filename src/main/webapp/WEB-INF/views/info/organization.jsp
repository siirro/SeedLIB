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

    <title>조직정보 : 씨앗도서관 ☘</title>
</head>
<body>
<div id="wrap">
    <!-- 헤더 -->
    <c:import url="../temp/header.jsp"></c:import>
    <!-- 헤더 -->

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>조직정보</h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/DsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>조직정보</h3>
                <div class="navi">
                    <a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
                    <i class="arrow"></i> 도서관소개 <i class="arrow"></i>조직정보
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
                
                                    
                                            <div class="organWrap pt0">
                                                <h4>씨앗도서관</h4>
                                                <div class="organList col-2">
                                                    <ul>
                                                        <li>
                                                            <div class="box">
                                                                <h5>도서관운영<br class="mobileShow4">위원회</h5>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="box">
                                                                <h5>자료선정<br class="mobileShow4">위원회</h5>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="organList col-5">
                                                    <ul>
                                                        <li><div class="box1"><p>도서관<br class="mobileShow3">정책팀</p></div></li>
                                                        <li><div class="box1"><p>관리<br class="mobileShow3">개발팀</p></div></li>
                                                        <li><div class="box1"><p>씨앗<br class="mobileShow3">도서관팀</p></div></li>
                                                        <li><div class="box1"><p>새싹<br class="mobileShow3">도서관팀</p></div></li>
                                                        <li><div class="box1"><p>쑥쑥<br class="mobileShow3">도서관팀</p></div></li>
                                                        <li><div class="box1"><p>나무<br class="mobileShow3">도서관팀</p></div></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        
                
                                    
                                        
                                            <h4 class="htitle">씨앗도서관</h4>
                                            <div class="tblWrap">
                                                <table class="tbl">
                                                    <caption>씨앗도서관 직원정보 안내 : 직책, 담당자, 업무, 전화로 구성된 표</caption>
                                                    <colgroup>
                                                        <col width="11%">
                                                        <col width="13%">
                                                        <col>
                                                        <col width="18%">
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">직책</th>
                                                            <th scope="col">담당자</th>
                                                            <th scope="col">업무</th>
                                                            <th scope="col">전화</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        
                                                            <tr>
                                                                <td>관장</td>
                                                                <td>송지혜</td>
                                                                <td class="ta_l pl20">씨앗도서관 업무 총괄</td>
                                                                <td><a href="tel:02-5555-8888">02-5555-8888</a></td>
                                                            </tr>
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                        
                                    
                                        
                                            <h4 class="htitle">도서관정책팀</h4>
                                            <div class="tblWrap">
                                                <table class="tbl">
                                                    <caption>도서관정책팀 직원정보 안내 : 직책, 담당자, 업무, 전화로 구성된 표</caption>
                                                    <colgroup>
                                                        <col width="11%">
                                                        <col width="13%">
                                                        <col>
                                                        <col width="18%">
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">직책</th>
                                                            <th scope="col">담당자</th>
                                                            <th scope="col">업무</th>
                                                            <th scope="col">전화</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        
                                                            <tr>
                                                                <td>팀장</td>
                                                                <td>서소영</td>
                                                                <td class="ta_l pl20">도서관정책팀 업무 총괄</td>
                                                                <td><a href="tel:02-1111-9999">02-1111-9999</a></td>
                                                            </tr>
                                                        
                                                            <tr>
                                                                <td>주무관</td>
                                                                <td>멍멍이</td>
                                                                <td class="ta_l pl20">예산 및 회계</td>
                                                                <td><a href="tel:02-2222-8888">02-2222-8888</a></td>
                                                            </tr>
                                                        
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                        
                                    
                                        
                                            <h4 class="htitle">관리팀</h4>
                                            <div class="tblWrap">
                                                <table class="tbl">
                                                    <caption>관리팀 직원정보 안내 : 직책, 담당자, 업무, 전화로 구성된 표</caption>
                                                    <colgroup>
                                                        <col width="11%">
                                                        <col width="13%">
                                                        <col>
                                                        <col width="18%">
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">직책</th>
                                                            <th scope="col">담당자</th>
                                                            <th scope="col">업무</th>
                                                            <th scope="col">전화</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        
                                                            <tr>
                                                                <td>팀장</td>
                                                                <td>구효경</td>
                                                                <td class="ta_l pl20">관리팀 업무 총괄</td>
                                                                <td><a href="tel:02-3333-8888">02-3333-8888</a></td>
                                                            </tr>
                                                        
                                                            <tr>
                                                                <td>주무관</td>
                                                                <td>깡깡이</td>
                                                                <td class="ta_l pl20">정기도서 구입 관리, 마을서점 인증 등</td>
                                                                <td><a href="tel:02-7777-8888">02-7777-8888</a></td>
                                                            </tr>
                                                        
                                                            
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                        
                                    
                                        
                                            <h4 class="htitle">씨앗도서관팀</h4>
                                            <div class="tblWrap">
                                                <table class="tbl">
                                                    <caption>석수도서관팀 직원정보 안내 : 직책, 담당자, 업무, 전화로 구성된 표</caption>
                                                    <colgroup>
                                                        <col width="11%">
                                                        <col width="13%">
                                                        <col>
                                                        <col width="18%">
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">직책</th>
                                                            <th scope="col">담당자</th>
                                                            <th scope="col">업무</th>
                                                            <th scope="col">전화</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        
                                                            <tr>
                                                                <td>팀장</td>
                                                                <td>안다은</td>
                                                                <td class="ta_l pl20">씨앗도서관팀 업무총괄</td>
                                                                <td><a href="tel:02-3333-9999">02-3333-9999</a></td>
                                                            </tr>
                                                        
                                                            <tr>
                                                                <td>주무관</td>
                                                                <td>김유리</td>
                                                                <td class="ta_l pl20">도서관 홈페이지 관리</td>
                                                                <td><a href="tel:02-3333-9999">02-3333-9999</a></td>
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