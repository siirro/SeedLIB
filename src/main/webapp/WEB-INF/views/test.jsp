<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <title>Document</title>
</head>
<body>
     <div id="contentGroup">
       <c:import url="./sideTest.jsp"></c:import>

<div id="contentcore">
        <div class="naviandtitle">
            <h3>신청하기</h3>
            <div class="navi"><a href="/intro/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 자료검색 <i class="arrow"></i>비치희망도서신청<i class="arrow"></i>신청하기</div>
            <div class="snsFarm">
                <ul class="snsBtnArea clearfix">
                    <li>
                        <a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
                        <div id="snsGroup" class="snsList clearfix">
                            <a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
                            <a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
                            <a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/intro/menu/10016/program/30008/hopeBookApply.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
                            <a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/intro/menu/10016/program/30008/hopeBookApply.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
                            <a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/intro/menu/10016/program/30008/hopeBookApply.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
                        </div>
                    </li>
                    <li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('intro'); return false;"><span class="blind">현재화면 프린트</span></a></li>
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
                    data: { "url" : "https://lib.anyang.go.kr/intro/menu/10016/program/30008/hopeBookApply.do"},
                    async: false,
                    error : function (request, status, error){
                        //alert("에러코드: " + request.status + "\r\n메시지: " + request.responseText);
                    },
                    success: function(data) {
                        //$("#shortUrl").html(data.url);
                        $("#qrcodeImg").html('<img src="' + data.url + '.qr" alt="QR코드 : https://lib.anyang.go.kr/intro/menu/10016/program/30008/hopeBookApply.do" >');
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
        <div class="ttabWrap" style="display: block;">
            <div id="virtSelect" style="display: none;"><a href="#script">신청하기</a></div>
            <ul id="ttab3" class="tnb clearfix" style="display: block;"> 
            <li id="tnb1_7_1"><a href="/intro/menu/10015/contents/40002/contents.do" style="min-width: 479px;">신청안내</a> </li> 
            <li id="tnb1_7_2" class="choiced"><a href="/intro/menu/10016/program/30008/hopeBookSearch.do" class="current" title="선택된 탭" style="min-width: 479px;">신청하기</a> </li> 
           </ul>
        </div>
        <!--Forced tab Show Que-->
        
        <div id="popblackBG"></div>
                            <!--Real Contents Start-->
                            <form id="registForm" name="registForm" method="post">
                                <input type="hidden" name="contentsId" value="">
                                <input type="hidden" name="applicantUserTel" value="">
                                <input type="hidden" name="applicantUserEmail" value="kuroski1111@naver.com">
                                <h4 class="htitle">신청자 정보</h4>
                                <div class="boardWrap">
                                    <table class="board-view">
                                        <caption>희망도서 신청자 정보</caption>
                                        <colgroup>
                                            <col style="width:20%">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">신청자명</th>
                                                <td>NAME</td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><label for="mobileNo1">휴대폰번호</label></th>
                                                <td>
                                                    <div class="numericForm clearfix">
                                                        
                                                        
                                                        <input type="text" id="mobileNo1" name="mobileNo1" value="" maxlength="4" title="휴대폰번호 첫자리" class="form-ele short readonly" style="ime-mode:disabled" readonly="">
                                                        <span class="hyphen">-</span>
                                                        <input type="text" id="mobileNo2" name="mobileNo2" value="" maxlength="4" title="휴대폰번호 중간자리" class="form-ele short readonly" style="ime-mode:disabled" readonly="">
                                                        <span class="hyphen">-</span>
                                                        <input type="text" id="mobileNo3" name="mobileNo3" value="" maxlength="4" title="휴대폰번호 끝자리" class="form-ele short readonly" style="ime-mode:disabled" readonly="">
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">이메일</th>
                                                <td><input type="text" id="email" name="email" title="이메일주소 입력" value="" class="form-ele wide" style="ime-mode:disabled" readonly=""></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
        
                                <div class="boardWrap mt10">
                                    <table class="board-view">
                                        <caption>희망도서 정보</caption>
                                        <colgroup><col style="width:20%">
                                        <col>
                                        </colgroup><tbody>
                                            <tr>
                                                <th scope="row"><label for="libCode"><span class="essential">*</span> 신청도서관</label></th>
                                                <td>
                                                    <select name="libCode" id="libCode" class="form-ele auto">
                                                        <option value="">도서관선택</option>
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="141077">석수도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="141027">만안도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="141573">삼덕도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="141095">박달도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="141036">평촌도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="141571">관양도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="141263">비산도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="141047">호계도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="141132">어린이도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="889999">안양역스마트도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="889998">동안구청스마트도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="889997">범계스마트도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                            
                                                                
                                                                
                                                                        <option value="889996">인덕원역스마트도서관</option>
                                                                    
                                                                
                                                            
                                                        
                                                    </select>
                                                    <p class="emp1 ref" style="display:none;" id="childText">어린이도서관은 <strong class="emp3">어린이도서만</strong> 신청이 가능합니다.</p>
                                                    <p class="emp1 ref">해당 도서관에 소장중 또는 정리중인 도서가 있을 경우 선택 불가</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><label for="title">희망도서명</label><span class="essential themeFC">*</span></th>
                                                <td>
                                                    <input type="text" id="title" name="title" value="" class="form-ele full">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><label for="author">저자</label><span class="essential themeFC">*</span></th>
                                                <td><input type="text" id="author" name="author" value="" class="form-ele wide"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><label for="publisher">발행자</label><span class="essential themeFC">*</span></th>
                                                <td><input type="text" id="publisher" name="publisher" value="" class="form-ele wide"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><label for="publishYear">발행연도</label></th>
                                                <td><input type="text" id="publishYear" name="publishYear" value="" maxlength="4" class="form-ele auto numeric"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><label for="isbn">ISBN</label></th>
                                                <td>
                                                    <input type="text" id="isbn" name="isbn" value="" maxlength="30" class="form-ele auto eng-mode">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><label for="price">정가</label></th>
                                                <td><input type="text" id="price" name="price" value="" class="form-ele auto numeric"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"><label for="requestReason">의견</label><span class="essential themeFC">*</span></th>
                                                <td><textarea name="requestReason" id="requestReason"></textarea></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </form>
                            <div class="btnGroup">
                                <a href="#btn" id="listBtn" class="btn cncl">취소</a>
                                <a href="#btn" id="registBtn" class="btn themeBtn">신청확인</a>
                            </div>
                            <!-- End Of the Real Contents-->
                        </div>
                    </div>
                </div>
    
    </body>
</html>