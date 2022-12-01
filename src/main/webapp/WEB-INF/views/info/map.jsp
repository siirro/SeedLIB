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
            <div id="contents" class="contentArea" style="padding: 40px 0 0;">
					
                <!--Real Contents Start-->

                <!-- 로케이션맵 전체랩 열기 -->
                <div class="locationMap">

                    <!-- <div class="root_daum_roughmap root_daum_roughmap_landing" id="daumRoughmapContainer1591089872318" style="width:100%"> -->

                    <!-- 맵 시작 -->
                    <div id="mapdddd" style="width:960px;height:400px;">
                    </div>
                    <!-- 맵 끝 -->

                

                    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3dd2d8a1eee0360b4b043a76255852a4"></script>
                    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>

                    <script>
                        let container = document.getElementById('mapdddd'); //지도를 담을 영역의 DOM 레퍼런스
                        let options = { //지도를 생성할 때 필요한 기본 옵션
                            center: new kakao.maps.LatLng(37.478871, 126.881153), //지도의 중심좌표.
                            level: 3, //지도의 레벨(확대, 축소 정도)
                            mapTypeId : kakao.maps.MapTypeId.ROADMAP 
                        };

                        let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

                        // 지도 타입 변경 컨트롤을 생성한다
                        let mapTypeControl = new kakao.maps.MapTypeControl();

                        // 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
                        map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
                        // 지도에 확대 축소 컨트롤을 생성한다
                         var zoomControl = new kakao.maps.ZoomControl();

                        // 지도의 우측에 확대 축소 컨트롤을 추가한다
                        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

                        var marker = new kakao.maps.Marker({
                            position: new kakao.maps.LatLng(37.478871, 126.881153), // 마커의 좌표
                            map: map // 마커를 표시할 지도 객체
                        });

                        // 마커 위에 표시할 인포윈도우를 생성한다
                        var infowindow = new kakao.maps.InfoWindow({
                            content : '<div style="padding:10px 35px;">씨앗도서관</div>' // 인포윈도우에 표시할 내용
                        });

                        // 인포윈도우를 지도에 표시한다
                        infowindow.open(map, marker);
                    </script>
                    <!-- </div> -->

                </div>
                <!-- 로케이션맵 전체랩 닫기 -->
                
                <h4 class="htitle" style="padding: 40px 0 0; font-weight: bold;">주소 및 연락처</h4>
                
                <ul class="locationList">
                    <li><span>주소</span> : 서울 금천구 가산디지털1로 151 이노플렉스 1차 3층 (가산동) (우)08506</li>
                    <li><span>전화번호</span> : 02)1234-5678</li>
                </ul>
                
                <h4 class="htitle" style="font-weight: bold;">교통편</h4>
                <ul class="dot-list location">
                    <li><strong>전철을 이용하실 경우</strong>
                        <ul class="dash-list">
                            <li><span>- 1호선 가산디지털단지역(마리오아울렛) 하차(도보 5분, 휠체어 12분)</span></li>
                            <li><span>- 7호선 가산디지털단지역(마리오아울렛) 하차(도보 3분, 휠체어 7분)</span></li>
                        </ul>
                    </li>
                    <li style="padding: 5px 0 0;"><strong>버스를 이용하실 경우</strong>
                        <ul class="dash-list">
                            <li><span>- 7호선가산디지털단지역 하차(도보 4분, 휠체어 6분)</span>&nbsp;:&nbsp;21번, 75번, 금천05번</li>
                            <li><span>- 디지털3단지.(주)로옴코리아 하차(도보 7분, 휠체어 10분)</span>&nbsp;571번, 652번, 653번, 5012번, 5528번</li>
                            <li>정류장 번호 : 7호선가산디지털단지역(<a href="https://map.naver.com/v5/bus/bus-station/%EA%B0%80%EC%82%B0%EB%94%94%EC%A7%80%ED%84%B8%EB%8B%A8%EC%A7%80/bus-station/162754?c=14123531.1278704,4506161.6397319,15,0,0,0,dh" title="새창열림" target="_blank" class="themeFC">18999</a>), 디지털3단지.(주)로옴코리아(<a href="https://map.naver.com/v5/bus/bus-station/%EB%A1%9C%EC%98%B4%EC%BD%94%EB%A6%AC%EC%95%84/bus-station/101783?c=14124217.3841467,4506047.1071504,16.48,0,0,0,dh" title="새창열림" target="_blank" class="themeFC">18109</a>)</li>
                        </ul>
                    </li>
                    
                    <li style="padding: 25px 0 0;"><strong>휠체어 이용 시 도서관 진입로의 가파른 경사에 주의하시길 바랍니다.</strong></li>
                </ul>

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