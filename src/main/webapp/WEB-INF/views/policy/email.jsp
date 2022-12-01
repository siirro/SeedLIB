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
    <title>이메일추출방지정책 : 씨앗도서관 ☘</title>
</head>
<body>
<div id="wrap">
    <!-- 헤더 -->
    <c:import url="../temp/header.jsp"></c:import>
    <!-- 헤더 -->

    <div id="container" class="sub">
		
        <div class="sVisualWrap">
            <div class="sVisual">
                <h3>이메일추출방지정책</h3>
            </div>
        </div>
        <div id="contentGroup">
                    
        <!-- 사이드바 -->
        <c:import url="../sideBar/HsideBar.jsp"></c:import>
        <!-- 사이드바 -->

        <div id="contentcore">
            <div class="naviandtitle">
                <h3>이메일추출방지정책</h3>
                <div class="navi">
                    <a href="/seoksu/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
                    <i class="arrow"></i> 홈페이지이용안내 <i class="arrow"></i>이메일추출방지정책
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
				
                <!-- 홈페이지이용안내_이메일추출방지정책 -->
                <div class="policyBox">씨앗도서관 회원에게 무차별적으로 보내지는 타사의 메일을 차단하기 위해,  본 웹사이트에 게시된 이메일주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며,이를 위반시 정보통신망법에 의해 형사처벌됨을 유념하시기 바랍니다.<br>
                정보통신망 이용촉진 및 정보보호 등에 관한 법률 [법률 제18201호, 2021. 6. 8., 일부개정]</div>
                
                <ol class="policy-list mt40">
                    <li>
                    <h5 class="ptitle">제50조(영리목적의 광고성 정보 전송 제한)</h5>
                
                    <p class="fc77">⑤ 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 자는 다음 각 호의 어느 하나에 해당하는 조치를 하여서는 아니 된다.</p>
                
                    <p class="fc77 mt05">1. 광고성 정보 수신자의 수신거부 또는 수신동의의 철회를 회피ㆍ방해하는 조치</p>
                
                    <p class="fc77 mt05">2. 숫자ㆍ부호 또는 문자를 조합하여 전화번호ㆍ전자우편주소 등 수신자의 연락처를 자동으로 만들어 내는 조치</p>
                
                    <p class="fc77 mt05">3. 영리목적의 광고성 정보를 전송할 목적으로 전화번호 또는 전자우편주소를 자동으로 등록하는 조치</p>
                
                    <p class="fc77 mt05">4. 광고성 정보 전송자의 신원이나 광고 전송 출처를 감추기 위한 각종 조치</p>
                
                    <p class="fc77 mt05">5. 영리목적의 광고성 정보를 전송할 목적으로 수신자를 기망하여 회신을 유도하는 각종 조치</p>
                    </li>
                    <li>
                    <h5 class="ptitle">제74조(벌칙)</h5>
                
                    <p class="fc77">① 다음 각 호의 어느 하나에 해당하는 자는 1년 이하의 징역 또는 1천만원 이하의 벌금에 처한다. &lt;개정 2012. 2. 17., 2014. 5. 28.&gt;</p>
                
                    <p class="fc77 mt05">4. 제50조제5항을 위반하여 조치를 한 자</p>
                    </li>
                </ol>
                
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