<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/member/agree.css">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
</head>
<body>
 
    <div class="loginForm">
        <form id="form" name="form" action="./join" method="post"> <!-- onsubmit="return formValidChk();" onreset="return fnResetForm();"> -->
     <!--        <input id="idCheck_flag" name="idCheck_flag" type="hidden" value="false">
            <input type="hidden" name="gpin" value="">
            <input type="hidden" name="safeId" value="">
            <input type="hidden" name="user_positn" value="WEB">
            <input type="hidden" name="grade_code" value="0001">
            <input type="hidden" name="status_code" value="0001">
            <input type="hidden" name="process_admin_id" value="WEB">
            <input type="hidden" name="loan_check" value="0002">
            <input type="hidden" name="enc_ci" value="e3984f33d4a91d123cc69a32444ceebb70c98f910c982d3eb96e2c4d3ed03b38">
            <input type="hidden" name="enc_di" value="3277c7d8cc51ddb4d73262515eb08de13e8af84c29937a5800479cc73c032932">
            <input type="hidden" name="birthd" value="19961007">
            <input type="hidden" name="birthd_year" value="1996">
            <input type="hidden" name="birthd_month" value="10">
            <input type="hidden" name="birthd_day" value="07">
            <input type="hidden" name="memberType" value="1">
            <input type="hidden" name="memberTypeDetail" value="child"> -->
            <fieldset>
                <legend>로그인</legend>
                <div class="langSelect"></div>
                <p class="logo"><img src="/images/logo.png" alt="씨앗도서관"></p>
                <div class="join2">
                    <div class="inputIdPw">
                        <p class="inputId"><label for="input_ID">아이디(<span>*</span>)<span class="accessibility">필수항목</span></label>
                        <input id="input_ID" name="userName" title="아이디 (영문 소문자,숫자 5~15자 이내)" type="text" required="required" minlength="5" maxlength="15" placeholder="5~15자(영문(소대문자), 숫자로 조합)">
                        <button type="button" title="중복확인" class="loginBtn1" id="login_chk">중복확인</button>
                        <div id="inputUserNameResult"> </div>
<!--                           
                          <span class="error" id="error_web_id" style="display: none;">ID중복확인 실시하지 않았습니다.</span>
                        <span class="error" id="error_web_id2" style="display: none;">이미 존재하는 아이디입니다.</span> -->
                        
                        </p>
                        <p class="inputPw"><label for="password">비밀번호(<span>*</span>)<span class="accessibility">필수항목</span></label>
                        <input name="password" title="비밀번호 (영문,숫자,특수문자 중 2종류 이상 조합 10~15자 이내)" id="password" type="password" minlength="10" maxlength="15" placeholder="10~15자(영문,숫자, 특수문자 중 2종류 이상 조합)" required="required"></p>
                        <p class="inputPwRe"><label for="passwordChk">비밀번호확인(<span>*</span>)<span class="accessibility">필수항목</span></label>
                        <input name="passwordChk" title="비밀번호확인" id="passwordChk" type="password" maxlength="15" required="required"></p>
                        
                        
                    </div>
                    <div class="inputProfile">
                        <div>
                            <p class="name"><label for="user_name">이름</label>
                            <input type="text" name="name" id="user_name"  class="textInput" required="required"></p>
                            <p class="birth"><label for="birthd_year">생년월일</label>
                            <input type="text" name="birth" id="birthd_year" class="textInput birthday" required="required"></p>
                          
                            <p class="gender"><label for="gen">성별</label>
                                <input type="text" name="gender" id="gen" class="textInput gender" required="required"></p>
                                  

                              <p>


                                <label for="phone">휴대폰번호(<span>*</span>)<span class="accessibility">필수항목</span></label>
                                <select name="phone" title="휴대폰번호 국번 선택" id="phone">
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="018">018</option>
                                    <option value="019">019</option>
                                    <option value="000">-없음-</option>
                                </select>
                                
                                    <input id="mobile_no_2" name="phone" class="phone" title="휴대폰번호 앞자리" onkeyup="fnCheckkNum('mobile_no_2');" type="text" maxlength="4" placeholder="앞-4자리" required="required">
                                
                                
                                
                                    <input id="mobile_no_3" name="phone" class="phone" title="휴대폰번호 뒷자리" onkeyup="fnCheckkNum('mobile_no_3');"  type="text"  maxlength="4" placeholder="뒤-4자리" required="required">
                                
                                
                                
                                
                            </p>
                            <p class="info">* 휴대폰번호는 예약도서 도착안내 문자발송 등에 이용됩니다. (필수)</p>
                        </div>
                        <div>
                            <p>
                                <label for="tel">긴급연락처(<span>*</span>)<span class="accessibility">필수항목</span></label>
                                <select name="tel_no_1" title="전화번호 국번 선택" id="tel" class="tel" required="required">
                                    <option value="">선택</option>
                                    <option value="02">02</option>
                                    <option value="031">031</option>
                                    <option value="032">032</option>
                                    <option value="033">033</option>
                                    <option value="041">041</option>
                                    <option value="042">042</option>
                                    <option value="043">043</option>
                                    <option value="051">051</option>
                                    <option value="052">052</option>
                                    <option value="053">053</option>
                                    <option value="054">054</option>
                                    <option value="055">055</option>
                                    <option value="061">061</option>
                                    <option value="062">062</option>
                                    <option value="063">063</option>
                                    <option value="064">064</option>
                                    <option value="070">070</option>
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="018">018</option>
                                    <option value="019">019</option>
                                </select>
                                <input id="tel_no_2" name="tel_no_2" class="phone" title="전화번호 앞자리" onkeyup="fnCheckkNum('tel_no_2');" type="text" value="" maxlength="4" placeholder="앞-4자리" required="required">
                                <input id="tel_no_3" name="tel_no_3" class="phone" title="전화번호 뒷자리" onkeyup="fnCheckkNum('tel_no_3');" type="text" value="" maxlength="4" placeholder="뒤-4자리" required="required">
                                
                                
                                
                            </p>
                        </div>					
                        <div>
                            <p><label for="email">이메일 주소</label>
                                <input type="email" id="email" name="email" class="email" placeholder="sample@sample.com" title="이메일 (sample@sample.com)" value="" required="required">
                                
                            </p>
                        </div>
                        <p class="info" style="padding:0 10px;">* 이메일 주소는 회원정보 재동의(2년 주기) 알림에 이용됩니다.</p><br>
                        <div>
                         <!--    <input id="addrs_jibun" name="addrs_jibun" type="hidden" value="">
                            <input id="buld_manage_no" name="buld_manage_no" type="hidden" value="">
                            <input id="zip_code" name="zip_code" type="hidden" value="">
                            <input id="b_dong_code" name="b_dong_code" type="hidden" value="">
                            <input id="h_dong_code" name="h_dong_code" type="hidden" value=""> -->
                            
                            
                            <p><label for="addrs">기본주소(<span>*</span>)<span class="accessibility">필수항목</span></label>
                               
                               <input type="text" id="postcode" name="post" placeholder="우편번호" style="width: 180px;">
                             <input type="button" class="loginBtn1" id="idCheckBtn" value="우편번호검색" target="epost" onclick="joinPostcode()" title="우편번호검색 새창으로열림" style="width: 120px;">
                             
      					     <input type="text" id="address" name="addess1" placeholder="기본주소(*)" title="기본주소" onclick="fn_useAddrSrch();" class="textInput" value="">                                
                             </p><!--id="addrs"  -->
             
                            <p class="addressInput"><label for="addrs_detail">상세주소(<span>*</span>)<span class="accessibility">필수항목</span></label>
                           <input type="text" id="detailAddess" name="address2" placeholder="상세주소(*)" title="상세주소" class="textInput textInput2" value="" required="required">                      
                                <input type="text" id="extraAddress" placeholder="참고항목">
                                
                                 </p>
                       
                        </div>
                    </div>
                    <div class="additionalService">
                        <div class="receiveAgree">
                            <p>문자 수신동의 <label class="check" id="sms_label"><input type="checkbox" id="sms_input" name="sms_yn" title="문자 수신동의" checked="checked" required="required"></label></p>
                            <p>이메일 수신동의 <label class="check" id="mail_label"><input type="checkbox" id="mail_input" name="mail_yn" title="이메일 수신동의" checked="checked" required="required"></label></p>
                        </div>
                        <p class="detail">씨앗도서관의 소식지 및 유용한 정보를 발송시 받아볼 수 있습니다.</p>
                        <p class="detail"><span>기본서비스(대출/반납. 예약, 연체알림등)와 관련된안내는 수신동의 여부와 관계없이 발송됩니다.</span></p>
                    </div>
                    <p class="joinBtn"><input type="submit" title="가입하기" value="가입하기" id="joinB"></p>
                </div>
            </fieldset>
            
            
            
            

            
        </form>
    </div>
 
 <script src="/js/addess.js"></script>
  <script src="/js/join.js"></script>
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



</body>
</html>