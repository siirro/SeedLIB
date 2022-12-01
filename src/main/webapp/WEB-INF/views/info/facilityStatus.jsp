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
    <title>시설현황 : 씨앗도서관 ☘</title>
</head>
<body>
<div id="wrap">
    <!-- 헤더 -->
    <c:import url="../temp/header.jsp"></c:import>
    <!-- 헤더 -->

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>시설현황</h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/DsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>시설현황</h3>
                <div class="navi">
                    <a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
                    <i class="arrow"></i> 도서관소개 <i class="arrow"></i>시설현황
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
					
                
                <!--Real Contents Start-->
                <!-- 도서관소개_일반현황_시설현황_전체현황 -->
                <h4 class="htitle"><span class="themeFC">시설</span> 현황</h4>
                
                <ul class="dot-list">
                    <li><span>부지면적</span> : 12,345㎡</li>
                    <li><span>건축면적</span> : 1,987.65㎡</li>
                    <li><span>연 면 적</span> : 10,000㎡</li>
                    <li><span>시설규모</span> : 지하12층, 지상34층</li>
                </ul>
                
                <h4 class="htitle"><span class="themeFC">층별</span> 주요시설</h4>
                
                <div class="tblWrap">
                <table class="tbl">
                    <caption>층별 주요시설 안내</caption>
                    <colgroup>
                        <col style="width: 20%;">
                        <col>
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">구분</th>
                            <th scope="col">자료실명</th>
                            <th scope="col">면적(㎥)</th>
                            <th scope="col">좌석수(석)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="5" scope="row">지상4층</th>
                            <td>일반열람실(여)</td>
                            <td>295</td>
                            <td>238</td>
                        </tr>
                        <tr>
                            <td class="bdr">노트북실</td>
                            <td>216</td>
                            <td>88</td>
                        </tr>
                        <tr>
                            <td class="bdr">시청각실</td>
                            <td>268</td>
                            <td>143</td>
                        </tr>
                        <tr>
                            <td class="bdr">멀티미디어체험실</td>
                            <td>179</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td class="bdr">다문화자료실</td>
                            <td>161</td>
                            <td>35</td>
                        </tr>
                        <tr>
                            <th rowspan="3" scope="row">지상3층</th>
                            <td class="bdr">일반열람실(남)</td>
                            <td>432</td>
                            <td>238</td>
                        </tr>
                        <tr>
                            <td class="bdr">청소년열람실(남,여)</td>
                            <td>216</td>
                            <td>148</td>
                        </tr>
                        <tr>
                            <td class="bdr">디지털도서관</td>
                            <td>612</td>
                            <td>164</td>
                        </tr>
                        <tr>
                            <th rowspan="4" scope="row">지상2층</th>
                            <td>참고,연속간행물실</td>
                            <td>432</td>
                            <td>72</td>
                        </tr>
                        <tr>
                            <td class="bdr">종합자료실</td>
                            <td>726</td>
                            <td>140</td>
                        </tr>
                        <tr>
                            <td class="bdr">석수도서관팀</td>
                            <td>84</td>
                            <td>26</td>
                        </tr>
                        <tr>
                            <td class="bdr">문화교실</td>
                            <td>76</td>
                            <td>42</td>
                        </tr>
                        <tr>
                            <th rowspan="8" scope="row">지상1층</th>
                            <td>관외대출실</td>
                            <td>432</td>
                            <td>75</td>
                        </tr>
                        <tr>
                            <td class="bdr">어린이도서관</td>
                            <td>324</td>
                            <td>72</td>
                        </tr>
                        <tr>
                            <td class="bdr">유아방</td>
                            <td>54</td>
                            <td>12</td>
                        </tr>
                        <tr>
                            <td class="bdr">이야기방</td>
                            <td>54</td>
                            <td>30</td>
                        </tr>
                        <tr>
                            <td class="bdr">어린이문화교실</td>
                            <td>84</td>
                            <td>48</td>
                        </tr>
                        <tr>
                            <td class="bdr">도서관정책팀</td>
                            <td>105</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td class="bdr">장서개발팀</td>
                            <td>76</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td class="bdr">당직실</td>
                            <td>57</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <th rowspan="3" scope="row">지하1층</th>
                            <td>보존서고</td>
                            <td>324</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td class="bdr">식당</td>
                            <td>438</td>
                            <td>154</td>
                        </tr>
                        <tr>
                            <td class="bdr">주차장</td>
                            <td>608</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <th scope="row">지하2층</th>
                            <td>전기실, 기계실, 주차장</td>
                            <td>2,014</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <th rowspan="3" scope="row">기타</th>
                            <td>복도, 휴게공간</td>
                            <td>2,522</td>
                            <td>207</td>
                        </tr>
                        <tr>
                            <td class="bdr">장애인화장실 : 각층 2개소</td>
                            <td>280</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td class="bdr">수유실 : 1층 어린이실 1개소</td>
                            <td>3.3</td>
                            <td>-</td>
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