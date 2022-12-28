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
          
        </div>
        
      
                        <div id="contents" class="contentArea">
                            
        
        
        <div id="popblackBG"></div>
                            <!--Real Contents Start-->
        
                            <div class="memberWrap">

                                <form action="./memberModify" id="registForm" name="registForm" method="post">
                                
                                
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
                                                  <input type="hidden" name="userName" value="${my.userName}">
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
                                                        
                                                        
                                                        <select id="handphone1" title="핸드폰번호 앞자리" class="phone5 form-ele short" required="required">
                                                            
                                                                <option value="010" selected="selected">010</option>
                                                                <option value="011">011</option>
                                                                <option value="016">016</option>
                                                                <option value="017">017</option>
                                                                <option value="018">018</option>
                                                                <option value="019">019</option>
                                                        </select>
                                                        <span class="hyphen">-</span>
                                                        <input type="text" id="handphone2" title="휴대폰번호 중간자리" maxlength="4" class="phone5 numeric" required="required">
                                                        <span class="hyphen">-</span>
                                                        <input type="text" id="handphone3" title="휴대폰번호 끝자리" maxlength="4" class="phone5 numeric" required="required">
                                                        <label for="smsUseYn" class="ml10"><input type="checkbox" name="smsUseYn" id="smsUseYn" value="Y" checked="checked"> SMS 수신동의</label>
                                                    </div>
                                                </td>
                                                <input type="hidden" id="phone" name="phone" value="${my.phone}">
                                                <input type="hidden" id="phoneValue" value="${my.phone}">
                                                <input type="hidden" id="email" name="email" value="${my.email}">
                                                <input type="hidden" id="emailValue" value="${my.email}">
                                                
                                                
                                            </tr>
                                            <tr>
                                                <th scope="row" class="ta_l pl10"><label for="eMail">이메일 <span class="essential themeFC">*</span></label></th>
                                                <td>
                                                    
                                                    <input type="text" id="email1" value="${my.email}" title="이메일 입력" class="email5 form-ele auto eng-mode"  required="required">
                                                    @<br class="mobileShow3">
                                                    <input type="text" id="email2" value="${my.email}" class="email5 form-ele auto readonly" title="이메일 도메인 입력"  required="required">
                    
                                                    <select name="domainList" id="domainList" title="이메일 도메인 선택" class="email5 form-ele auto min">
                                                        <option class="haha" value="daum.net">daum.net</option>
                                                        <option class="haha" value="dreamwiz.com">dreamwiz.com</option>
                                                        <option class="haha" value="gmail.com">gmail.com</option>
                                                        <option class="haha" value="hanmail.net">hanmail.net</option>
                                                        <option class="haha" value="hotmail.com">hotmail.com</option>
                                                        <option class="haha" value="korea.com">korea.com</option>
                                                        <option class="haha" value="lycos.co.kr">lycos.co.kr</option>
                                                        <option class="haha" value="msn.com">msn.com</option>
                                                        <option class="haha" value="nate.com">nate.com</option>
                                                        <option class="haha" value="naver.com" selected="selected">naver.com</option>
                                                        <option class="haha" value="yahoo.co.kr">yahoo.co.kr</option>
                                                        <option class="haha" value="etc">직접입력</option>
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
                                <script type="text/javascript">

                                    //폰번호 파싱된거 뿌리고 파싱된거 합쳐서 히든네임폰에 집어넣기  
                                    let hand2 = $("#phoneValue").val()
                                    let num1 = hand2.substr(3,4);
                                    let num2 = hand2.substr(7,4);
                                    $("#handphone2").val(num1);
                                    $("#handphone3").val(num2);

                                    $(".phone5").change(function(){
                                        let phone1 = $("#handphone1").val();
                                        let phone2 = $("#handphone2").val();
                                        let phone3 = $("#handphone3").val();
                                        let phone = phone1+phone2+phone3;
                                        $("#phone").val(phone);
                                        console.log(phone);
                                    })


                                    //이메일 셀렉트
                                    $(".haha").each(function(index, item){
                                        if($(item).prop("checked")){
                                            $("#email2").val($(item).val());
                                            
                                        }
                                    })
                                    
                                    //이메일 파싱
                                    let hand3 = $("#emailValue").val()
                                    let em = hand3.split("@");

                                    $("#email1").val(em[0]);
                                    $("#email2").val(em[1]);
                                    
                                    $("#domainList").change(function(){
                                        $("#email2").val($(this).val());
                                        console.log($("#email2").val());
                                    })

                                    $(".email5").change(function(){
                                        let email8 = $("#email1").val();
                                        let email9 = $("#email2").val();
                                        let emailFinish = email8+"@"+email9;
                                        $("#email").val(emailFinish);
                                        console.log(emailFinish);
                                    })

                                    
                                    const haha = document.getElementsByClassName('haha');
                                    let h = $("#email2").val();

                                    

                                    // for(let i=0;i<haha.length;i++){
                                    //     if(h.includes(haha[i].getAttribute("value"))) {
                                    //         haha[i].setAttribute = 'checked';
                                    //         break;
                                    //     }
                                    // }

                                    // let status = "";
                                    //         // console.log($("input[class='check"+num+"']:checked").val())
                                    //         $(".check"+num).each(function(index, item){
                                    //           console.log(item);
                                    //           if($(item).prop("checked")){
                                    //             status = $(item).val();
                                    //             console.log(status);
                                    //           }
                                    //         })

                                        
                                
                                </script>

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