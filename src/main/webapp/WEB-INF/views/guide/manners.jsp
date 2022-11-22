<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/css/sub.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/layout.css">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>

</head>
<body>

    <div class="wrap">
     <!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
     <!-- header -->


    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>도서관예절</h3>
            </div>
        </div>
                <div id="contentGroup">
                    
        <div id="lnbNav" class="navArea">
            <h2> 이용안내 </h2>
            <ul id="lnb" class="lnb"> 
          <li id="lnb4_1"><a href="#">도서관소식</a> </li> 
          <li id="lnb4_2"><a href="#">자주하는질문</a> </li> 
          <li id="lnb4_3"><a href="/guide/manners" class="current on">도서관이용안내</a> 
           <ul class="MkSub submenu" style="display: block;"> 
            <li id="lnb4_3_1"><a href="/guide/manners" class="current">도서관예절</a> </li> 
            <li id="lnb4_3_2"><a href="/guide/time">이용시간</a> </li> 
            <li id="lnb4_3_3"><a href="#">휴관일안내</a> </li> 
            <li id="lnb4_3_4"><a href="/member/agree">회원가입</a> </li> 
            <li id="lnb4_3_5"><a href="/guide/rule">대여규칙</a> </li> 
            <li id="lnb4_3_6"><a href="/guide/convenience">편의시설</a> </li> 
           </ul> </li> 
          <li id="lnb4_4"><a href="#">상호대차</a> </li> 
          <li id="lnb4_5"><a href="#">모바일앱</a> </li> 
          <li id="lnb4_6"><a href="#">스마트도서관</a> </li> 
          <li id="lnb4_7"><a href="#" class="on">책배달서비스</a> 
           <ul class="MkSub submenu" style="display: none;"> 
            <li id="lnb4_7_1"><a href="#">책바다</a> </li> 
            <li id="lnb4_7_2"><a href="#">책나래</a> </li> 
            <li id="lnb4_7_3"><a href="#">두루두루</a> </li> 
            <li id="lnb4_7_4"><a href="#">내생애첫도서관</a> </li> 
           </ul> </li> 
          <li id="lnb4_8"><a href="#" class="on">전자도서관</a> 
           <ul class="MkSub submenu" style="display: none;"> 
            <li id="lnb4_8_1"><a href="#">전자책</a> </li> 
            <li id="lnb4_8_2"><a href="#">오디오북</a> </li> 
            <li id="lnb4_8_3"><a href="#">학술논문</a> </li> 
            <li id="lnb4_8_4"><a href="#">한국학</a> </li> 
            <li id="lnb4_8_5"><a href="#">도서요약</a> </li> 
            <li id="lnb4_8_6"><a href="#">인문학강의</a> </li> 
            <li id="lnb4_8_7"><a href="#">이러닝</a> </li> 
            <li id="lnb4_8_8"><a href="#">전자잡지</a> </li> 
            <li id="lnb4_8_9"><a href="#">IT강좌</a> </li> 
           </ul> </li> 
          <li id="lnb4_9"><a href="#">도서관에바란다</a> </li> 
          <li id="lnb4_10"><a href="#">분실물센터</a> </li> 
         </ul>
        </div>
        
                    <div id="contentcore">
                        
        
        
        
        <div class="naviandtitle">
            <h3>도서관예절</h3>
            <div class="navi"><a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 이용안내 <i class="arrow"></i>도서관이용안내<i class="arrow"></i>도서관예절</div>
            <div class="snsFarm">
                <ul class="snsBtnArea clearfix">
                    <li>
                        <a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
                        <div id="snsGroup" class="snsList clearfix">
                            <a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
                            <a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
                            <a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/seoksu/menu/12141/contents/41161/contents.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
                            <a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/seoksu/menu/12141/contents/41161/contents.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
                            <a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/seoksu/menu/12141/contents/41161/contents.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
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
                            <!-- 이용안내_도서관예절 -->
        <h4 class="htitle"><span class="themeFC">도서관 예절</span></h4>
        &nbsp;
        
        <h5 class="stitle"><span class="themeFC">자료실</span>을 이용하실 때</h5>
        
        <ul class="dot-list">
            <li>음료, 과자, 껌 등의 음식물은 자료가 손상될 수 있으므로, 갖고 들어오지 마세요.</li>
            <li>휴대폰은 다른 이용자들을 위하여 무음으로 설정하고, 도서관 밖에서 이용해 주세요.</li>
            <li>보신 책은 서가에 꽂지 말고, 북 트럭에 놓아 주세요.</li>
            <li>부모님께서는 자녀가 떠들거나 뛰지 않도록 해주시고, 도서관예절을 지킬 수 있도록 지도해 주세요.</li>
            <li>책을 여러분의 몸처럼 소중하게 다루세요.</li>
            <li>미취학아동은 부모님이나 보호자와 동행하여주시고, 미취학아동을 방치하는 경우가 없도록 하여 주세요.</li>
            <li>미취학아동의 방치 또는 이용자의 과실로 발생한 사고에 대해서는 해당 이용자와 그 보호자의 책임입니다.</li>
            <li>개인 소지품 관리의 책임은 이용자 본인에게 있으며 분실 시 책임지지 않습니다.</li>
            <li>도서관 운영자는 다른 이용자에게 불편을 주는 행위자에게 퇴실을 명할 수 있습니다.</li>
            <li>누구나 자기가 좋아하는 것을 소중히 여기고 아끼듯이 다 함께 쓰는 도서관을 소중히 여겨주세요.</li>
        </ul>
        
        <h5 class="stitle"><span class="themeFC">열람실</span>을 이용하실 때</h5>
        
        <ul class="dot-list">
            <li>다른 이용자에게 방해가 되지 않도록 질서와 정숙을 유지하여 주세요.</li>
            <li>음료를 제외한 음식물은 반입할 수 없습니다.</li>
            <li>휴대폰은 무음으로 설정하고 통화는 도서관 밖에서 사용하여 주세요.</li>
            <li>열람석과 의자 등에 낙서를 하거나 스티커를 부착하지 마세요.</li>
            <li>노트북은 노트북실을 이용하시고, 부득이 열람실을 이용할 경우 마우스와 키보드의 사용은 금합니다.</li>
            <li>음향기기의 이어폰, 헤드폰은 조용한 분위기를 해치지 않을 정도로 볼륨을 낮춰 주세요.</li>
            <li>옆 사람과의 잡담, 공부 지도 등은 금하며 타인에게 불쾌감을 주는 행동을 해서는 안 됩니다.</li>
            <li>개인 소지품 보관에 주의하시고 분실이나 도난에 책임지지 않습니다.</li>
            <li>열람석의 독점사용은 금지하며, 퇴실 시 개인물품은 치워주시기 바랍니다.</li>
            <li>다른 이용자에게 불편을 주는 행위를 자제하여 주세요.</li>
            <li>타인을 위한 배려는 도서관예절의 근본으로 모든 이용자는 도서관의 운영규정을 준수하여 주시기 바랍니다.</li>
            <li>도서관 운영자는 다른 이용자에게 불편을 주는 행위자에게 퇴실을 명할 수 있습니다.</li>
            <li>기타 특별사항(코로나 등)에 따라 도서관 운영자의 안내에 적극 협조해 주시기 바랍니다.</li>
        </ul>
        
                            <!-- End Of the Real Contents-->
        
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        


        <!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->
        
           <script src="/include/js/clipboard.min.js"></script>
        <script>
            $('#sns').click(function(e) {
                $.ajax({
                    type: "POST",
                    url: "/cmmn/share/shortUrl.do",
                    dataType : "json",
                    data: { "url" : "https://lib.anyang.go.kr/seoksu/menu/12141/contents/41161/contents.do"},
                    async: false,
                    error : function (request, status, error){
                        //alert("에러코드: " + request.status + "\r\n메시지: " + request.responseText);
                    },
                    success: function(data) {
                        //$("#shortUrl").html(data.url);
                        $("#qrcodeImg").html('<img src="' + data.url + '.qr" alt="QR코드 : https://lib.anyang.go.kr/seoksu/menu/12141/contents/41161/contents.do" >');
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

</body>
</html>