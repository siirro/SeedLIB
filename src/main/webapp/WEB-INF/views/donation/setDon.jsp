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
<link rel="shortcut icon" href="/images/favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>

    .aplBtn{
        position: absolute;
        right: 0;
        bottom: 0;
        padding: 3px 15px;
        background-color: #77af9c;
        color: #d7fff1;
    }
    .required {
    background-color: #fdfde4!important;
    }

    .tit{
        font-size: 2.0rem;
        box-sizing: border-box;
        display: block;
        font-weight: bold;
        font-family: 'NotoKR', 'Malgun Gothic', 'gothic', '고딕', '새굴림', Arial, sans-serif;
        color:#504f4f;
    }

    .txt{
    margin-top: 15px;
    margin-left: 5px;
    line-height: 20px;
    font-size: 16px;
    color: #626262;
}

.privacy_agree {
    border-top: 1px solid #dfdfdf;
    text-align: center;
    margin-top: 30px;
    padding-top: 30px;
}

.privacy_agree_inner {
    display: block;
    border: 1px solid #dfdfdf;
    padding: 7px 16px 16px;
}

.privacy_agree_title {
    padding: 0 20px 0 10px;
    line-height: 30px;
    display: block;
    width: 100%;
    padding: 16px 24px 16px 21px;
    background: linear-gradient(to right, #10e2a5, #00ff7f);
    font-size: 18px;
    font-weight: 500;
    color: #fff;
    text-align: left;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.inner_title {
    margin-top: 11px;
    padding-left: 22px;
    display: block;
    position: relative;
    margin-top: 16px;
    padding-left: 26px;
    font-size: 18px;
    font-weight: 700;
    color: #232323;
}

.privacy_agree_list {
    margin-top: 0;
    position: relative;
    margin-top: 6px;
    margin-left: 50px;
    padding-left: 10px;
    font-size: 16px;
    color: #595959;
}

.txt_red {
    color: #e02e2e;
}

</style>

<title>소장 도서 기증</title>
</head>
<body>
<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
<div id="container" class="sub">	    
<div class="sVisualWrap">
    <div class="sVisual">
        <h3>신청하기</h3>
    </div>
</div>
<div id="contentGroup">
   <c:import url="../sideBar/BsideBar.jsp"></c:import>
<div id="contentcore">
    <div class="naviandtitle">
        <h3>신청하기</h3>
        <div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 문화참여 <i class="arrow"></i>소장도서기증<i class="arrow"></i>신청하기
        </div>
    </div>    
<div id="contents" class="contentArea">
    <!--Forced tab Show Que-->
    <div class="ttabWrap" style="display: block;">
        <div id="virtSelect" style="display: none;"><a href="#script">탭메뉴</a>
        </div>
        <ul id="ttab3" class="tnb clearfix"> 
            <li id="tnb1_7_1"><a href="/donation/donInfo" style="min-width: 479px;">신청안내</a> </li> 
            <li id="tnb1_7_2" class="choiced"><a href="/donation/setDon" class="current" title="선택된 탭" style="min-width: 479px;">신청하기</a> </li> 
        </ul>
    </div>
    <!--Forced tab Show Que-->
    <!--Real Contents Start-->
    <div>
        <form id="donForm" name="donForm" action-="setDon" method="post">
                <div class="endowment_bookDamoa">
                    <h3 class="tit">기증처리 동의</h3>
                        <p class="txt">귀하께서 기증하시는 자료는 씨앗도서관의 장서로 등록됩니다.</p>
                        <p class="txt">기증된 자료는 반환이 어렵습니다.</p>
                        <p class="txt">다만, 디지타이징에 활용된 자료와 오・훼손 등으로 재기증이 어려운 자료는 폐기될 수 있음을 알려드립니다. </p>
                        <p class="txt">씨앗도서관 기증 처리 절차에 동의하시면, 기증 신청하여 주시기 바랍니다. </p>
                        <div class="privacy_agree_wrap mt20">
                            <strong class="privacy_agree_title">개인정보 수집 및 이용 동의</strong>
                            <div class="privacy_agree_inner">
                                <strong class="inner_title"><img src="/images/check.png" style="width: 40px;"> 개인정보 수집 및 이용 목적</strong>
                                <ul class="privacy_agree_list">
                                    <li>・도서 기증 신청 접수를 위해 수집된 정보는 관련 업무에만 이용됩니다.</li>
                                </ul>
                                <strong class="inner_title"><img src="/images/check.png" style="width: 40px;"> 수집하려는 개인정보 항목</strong>
                                <ul class="privacy_agree_list">
                                    <li>・(필수) 이름, 휴대폰 번호</li>
                                    <li>・(선택) 주소, 이메일</li>
                                </ul>
                                <strong class="inner_title"><img src="/images/check.png" style="width: 40px;"> 개인정보 보유 및 이용기간</strong>
                                <ul class="privacy_agree_list">
                                    <li class="point_size txt_red"><b style="font-size:25px; font-weight: bold; color: #e02e2e;">・3년</b></li>
                                </ul>
                                <div class="privacy_agree" style="text-align:left;">
                                    <p style="margin-bottom: 10px; font-weight: bold;">동의를 거부할 권리가 있으며 필수항목 개인정보 수집 및 이용에 동의 하지 않을 경우 자료 기증 신청이 되지 않습니다.</p>
                                    <p style="position : relative;">
                                        <b><span class="txt_red">(필수항목) </span>개인정보 수집 및 이용</b>에 동의합니다.
                                        &nbsp;&nbsp;&nbsp;
                                        <input type="radio" id="agree01" name="agree1" value="Y" class="agree1" checked="">
                                        <label for="agree01">동의</label>
                                        <input type="radio" id="agree03" name="agree1" value="N" class="agree1">
                                        <label for="agree03">미동의</label>
                                    </p>
                                    <p style="position : relative;">
                                        <b><span class="txt_red">(선택항목) </span>개인정보 수집 및 이용</b>에 동의합니다.
                                        &nbsp;&nbsp;&nbsp;
                                        <input type="radio" id="agree02" name="agree2" value="Y" class="agree2" checked>
                                        <label for="agree02">동의</label>
                                        <input type="radio" id="agree04" name="agree2" value="N" class="agree2">
                                        <label for="agree04">미동의</label>
                                    </p>
                                </div>
                            </div>
                        </div>
                </div>    
                    <div><h4 class="htitle" style="margin-top:25px;">기증자 정보</h4>
                    </div>
                    <p class="emp1 ref">* 표시는 필수 입력 항목입니다.</p>
                    <div class="boardWrap">
                        <table class="board-view">
                            <caption>도서 기증자 정보</caption>
                            <colgroup>
                                <col style="width:20%">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">신청자명</th>
                                    <td><input type="text" class="required" id="userName" name="userName" value="id1" readonly></td>
                                </tr>
                                <tr>
                                    <th scope="row">휴대폰번호</th>
                                    <td><input type="text" class="required" name="phone" value="01000000000" readonly></td>
                                </tr>
                                <tr>
                                    <th scope="row">이메일</th>
                                    <td><input type="text" name="email" value="00000@mail.com" readonly></td>
                                </tr>
                                <tr>
                                    <th scope="row">주소</th>
                                    <td><input type="text" name="addr" value="서울" readonly></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="boardWrap mt10">
                        <table class="board-view">
                            <caption>기증 도서 정보</caption>
                            <colgroup><col style="width:20%">
                            <col>
                            </colgroup><tbody>
                                <tr>
                                    <th scope="row"><label for="libCode">신청도서관</label><span class="essential">*</span></th>
                                    <td>
                                        <select name="donLib" id="donLib" class="form-ele auto">
                                            <option value="">도서관선택</option>
                                                    <option value="0">씨앗도서관</option>
                                                    <option value="1">새싹도서관</option>
                                                    <option value="2">쑥쑥도서관</option>
                                                    <option value="3">새봄도서관</option>
                                                    <option value="4">도란도란도서관</option>
                                                    <option value="5">뿌리도서관</option>
                                            </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="title">기증도서명</label><span class="essential themeFC">*</span></th>
                                    <td>
                                        <input type="text" id="donTitle" name="donTitle" value="" class="form-ele full">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="author">저자</label><span class="essential themeFC">*</span></th>
                                    <td><input type="text" id="donWriter" name="donWriter" value="" class="form-ele wide"></td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="publisher">출판사</label><span class="essential themeFC">*</span></th>
                                    <td><input type="text" id="donPublisher" name="donPublisher" value="" class="form-ele wide"></td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="donation_alert">처리 알림 여부</label><span class="require">*</span></th>
                                    <td>
                                        <span class="input_radio_wrap">
                                            <input type="radio" id="donation_alert01" class="emailAgree" name="emailAgree" title="알림여부" value="Y" checked="">
                                            <label for="donation_alert01">수신</label>
                                        </span>
                                        <span class="input_radio_wrap">
                                            <input type="radio" id="donation_alert02" class="emailAgree" name="emailAgree" title="알림여부" value="N">
                                            <label for="donation_alert02">미수신</label>
                                        </span>
                                        <p class="emp1 ref">접수 처리가 되면 상단의 이메일로 안내 이메일을 보내드립니다.</p>
                                    </td>
                                </tr>      
                                <tr>
                                    <th scope="row"><label for="requestReason">의견</label><span class="essential themeFC">*</span></th>
                                    <td><textarea name="donMemo" id="donMemo"></textarea></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="btnGroup">
                    <a href="../" id="listBtn" class="btn cncl">취소</a>
                    <button type="button" id="donBtn" class="btn themeBtn">신청</button>
                </div>
                <!-- End Of the Real Contents-->
    </div>
</div>
</div>
</div>
</div>
<!-- footer -->
    <c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->
     <script defer src="/js/donation.js"></script>
</body>
</html>















