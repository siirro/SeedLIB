<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" href="/images/favicon.png">
	<title>회원정보수정 : 씨앗도서관 ☘️ </title>
<link rel="stylesheet" href="/css/sub.css">
<link rel="stylesheet" href="/css/default.css">
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
                <h3>회원정보수정</h3>
            </div>
        </div>
                <div id="contentGroup">
                    
        <div id="lnbNav" class="navArea">
            <c:import url="../sideBar/GsideBar.jsp"></c:import>

        </div>
        
                    <div id="contentcore">
                        
        
        
        
        <div class="naviandtitle">
            <h3>회원정보수정</h3>
            <div class="navi"><a href="/intro/index.do" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i>회원정보<i class="arrow"></i>회원정보수정</div>
            <div class="snsFarm">
                <ul class="snsBtnArea clearfix">
                    <li>
                        <a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
                        <div id="snsGroup" class="snsList clearfix">
                            <a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
                            <a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
                            <a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/intro/index.do'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
                            <a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/intro/index.do'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
                            <a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/intro/index.do'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
                        </div>
                    </li>
                    <li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('intro'); return false;"><span class="blind">현재화면 프린트</span></a></li>
                </ul>
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
        
                            <div class="memberWrap">

                                <form action="./memberModify" id="registForm" name="registForm" method="post">
                                
                                <input type="hidden" id="handphone" name="handphone">
                                <input type="hidden" id="eMail" name="eMail">
                                <div class="boardWrap mt30">
                                    <p class="requTxt ftrans"><span class="essential themeFC">*</span>표시가 있는 항목은 필수 입력 항목입니다</p>
                                    <table class="board-view">
                                        <caption>나의정보</caption>
                                        <colgroup>
                                            <col style="width:20%;">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row" class="ta_l pl10">성명</th>
                                                <td>${my.name}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="ta_l pl10"><label for="memId">아이디</label></th>
                                                <td>${my.userName}</td>                                              
                                                  <input type="hidden" name="username" value="${my.userName}">
                                            </tr>
                                            <tr class="mobileShowTr">
                                                <th scope="row" class="ta_l pl10">비밀번호</th>
                                                <td><a href="/intro/mypage/memberPwdModifyCheck.do" class="btn small white">비밀번호변경</a></td>
                                                <input type="hidden" name="password" value="${my.password}">

                                            </tr>
                                            <tr>
                                                <th scope="row" class="ta_l pl10"><label for="cellNumber">핸드폰 번호 <span class="essential themeFC">*</span></label></th>
                                                <td>
                                                    <div class="numericForm clearfix">
                                                        
                                                        
                                                        <select name="phone" value="${my.phone}" id="handphone1" title="핸드폰번호 앞자리" class="form-ele short" required="required">
                                                            
                                                                <option value="010" selected="selected">010</option>
                                                                <option value="011">011</option>
                                                                <option value="016">016</option>
                                                                <option value="017">017</option>
                                                                <option value="018">018</option>
                                                                <option value="019">019</option>
                                                        </select>
                                                        <span class="hyphen">-</span>
                                                        <input type="text" id="handphone2" name="phone" value="${my.phone}" title="휴대폰번호 중간자리" maxlength="4" class="numeric" required="required">
                                                        <span class="hyphen">-</span>
                                                        <input type="text" id="handphone3" name="phone" value="${my.phone}" title="휴대폰번호 끝자리" maxlength="4" class="numeric" required="required">
                                                        <label for="smsUseYn" class="ml10"><input type="checkbox" name="smsUseYn" id="smsUseYn" value="Y" checked="checked"> SMS 수신동의</label>
                                                    </div>
                                                </td>
                                                
                                                <script type="text/javascript">
													let wi = $("#dd").attr("wi")
													console.log(wi);
													
													let hand2 = $("#handphone2").val()
                                                    console.log(hand2);
												</script>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="ta_l pl10"><label for="eMail">이메일 <span class="essential themeFC">*</span></label></th>
                                                <td>
                                                    
                                                    <input type="text" id="email1" name="email" value="${my.email}" title="이메일 입력" class="form-ele auto eng-mode"  required="required">
                                                    @<br class="mobileShow3">
                                                    <input type="text"   id="email2" name="email" value="${my.email}" class="form-ele auto readonly" title="이메일 도메인 입력"  required="required">
                    
                                                    <select name="domainList" id="domainList" title="이메일 도메인 선택" class="form-ele auto min">
                                                        <option value="daum.net">daum.net</option>
                                                        <option value="dreamwiz.com">dreamwiz.com</option>
                                                        <option value="gmail.com">gmail.com</option>
                                                        <option value="hanmail.net">hanmail.net</option>
                                                        <option value="hotmail.com">hotmail.com</option>
                                                        <option value="korea.com">korea.com</option>
                                                        <option value="lycos.co.kr">lycos.co.kr</option>
                                                        <option value="msn.com">msn.com</option>
                                                        <option value="nate.com">nate.com</option>
                                                        <option value="naver.com" selected="selected">naver.com</option>
                                                        <option value="yahoo.co.kr">yahoo.co.kr</option>
                                                        <option value="etc">직접입력</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="ta_l pl10">주소 <span class="essential themeFC">*</span></th>
                                                <td>
                                                    <input type="text" id="postcode" name="post" title="자택 우편번호" value="${my.post}" readonly="readonly" class="form-ele short readonly"  required="required">
                                                    <input type="button" id="idCheckBtn" title="새창 열림" class="btn input btnPop" target="epost"   value= "주소검색" onclick="joinPostcode()"><br>
                                                    <input type="text" id="address" name="address1"  placeholder="기본주소(*)" value="${my.address1}" title="자택 기본 주소" class="form-ele full mt05"  required="required">
                                                       <br> <input type="text" id="detailAddess" name="address2" placeholder="상세주소(*)" title="상세주소" class="textInput textInput2" value="${my.address2}" required="required">                      

                                          
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="btnGroup">
                                    <button type="submit" id="updateBtn" class="btn themeBtn">수정확인</button>
                                    <a href="/member/delete?userame = ${vo.username}" id="deleteAccount" class="btn btn-primary">회원탈퇴</a>
                                    
                                </form>

                                </div>
                            </div>
                            <!-- End Of the Real Contents-->
                        </div>
                    </div>
                </div>
            </div>

          <!-- footer -->
        <c:import url="../temp/footer.jsp"></c:import>
        <!-- //footer --> 
        </div>

        <script src="/js/address.js"></script>

        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script src="/js/modify.js"></script>
</body>
</html>