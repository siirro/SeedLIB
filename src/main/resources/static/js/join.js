// // join 검사 


//     //Check 결과
//     let idCheck=false;
//     let pwCheck=false;
//     let pwEqualCheck=false;
//     let nameCheck=false;
//     let emailCheck=false;
//     let phoneCheck=false;

//     //idCheck
//     $("#input_ID").blur(function(){
//         idCheck=false;
//         if($("#input_ID").val()!=""){
//             idCheck=true;



//         }else{
//             alert("아이디를 입력해 주세요.")
//             $("#input_ID").focus();
//             return false;

//         }
//     })
// //     inputUserName.addEventListener("blur", function(){
// //         idCheck=false;
// //         if(inputUserName.value.length>1){
// //             inputUserNameResult.innerHTML="";
// //             idCheck=true;
// //         }else {
// //             //idCheck=false;
// //             inputUserNameResult.innerHTML="ID는 최소 2글자 이상 이어야 합니다."
// //         }

// //     });

// //     //pw길이 Check
// //     inputPassword.addEventListener("change", function(){
// //         if(inputPassword.value.length>5){
// //             pwCheck=true;
// //             inputPasswordResult.innerHTML="";
// //             inputPasswordCheck.value="";
// //         }else {
// //             pwCheck=false;
// //             inputPasswordResult.innerHTML="패스워드는 6자 글자 이상이어야 합니다";

// //         }
// //     });

// //     //pw가 같은지 check
// //     inputPasswordCheck.addEventListener("blur", function(){
// //         console.log("pwEqual");
// //         if(inputPassword.value == inputPasswordCheck.value){
// //             pwEqualCheck=true;
// //             inputPasswordCheckResult.innerHTML="";
// //         }else {
// //             pwEqualCheck=false;
// //             inputPasswordCheck.value="";
// //             inputPasswordCheckResult.innerHTML="패스워드가 일치하지 않습니다"
// //         }
// //     });



// //     //joinButton CLICK!!
// //     joinButton.addEventListener("click", function(){
// //         if(idCheck&&pwCheck&&pwEqualCheck){
// //             alert("서버 전송 합니다");
// //             //joinForm.submit();
// //         }else {
// //             alert("필수 입력 사항은 다 입력 해야 함");
// //         }

// //     })




// // }



// // function loginCheck(){
// //     const btn = document.getElementById("btn");
// //     const frm = document.getElementById("frm");
// //     const userName = document.getElementById("userName");
// //     const password = document.getElementById("password");

// //     btn.addEventListener("click", function(){
// //         let u = userName.value;
// //         let p = password.value;
// //         console.log(u=="");
// //         console.log(u.length);

// //         if(u==""){
// //             alert("ID는 필수 입니다");
// //             return;
// //         }

// //         if(p==""){
// //             alert("PW는 필수 입니다");
// //             return;       
// //         }

// //         frm.submit();

// //         // if(u.length>0 && p.length>0){
// //         //     frm.submit();
// //         // }else {
// //         //     alert("ID와 PASSWORD는 필수 입니다");
// //         // }


// //         //frm.submit();
// //     });
// // }


// //     let i = 0;


// //     $("#input_ID").mouseleave(function(){
// //         console.log(i);
// //         if(i === 0){
// //             alert('아이디 중복체크 해주세요.');
// //         } else {
            
// //         }
// //         let userIdCheck = RegExp(/^[A-Za-z0-9_\-]{5,15}$/);
// //         if(!userIdCheck.test($("#input_ID").val())){
// //             alert('아이디를 입력해 주세요.');
// //             $("#input_ID").focus();
// //         };
// //     });




// //     $("#login_chk").click(function(){
// //         i++;
// //         if(i == 1){
// //             return false;
// //         }
// //         console.log(i);
// //     });




