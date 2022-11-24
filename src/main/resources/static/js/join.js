//======= 유효성 검사 =========


    // let i = 0;
    //  $("#input_ID").blur(function(){
    //     console.log(i);
    //     if(i === 0){
    //         alert('아이디 중복체크 해주세요.');
    //         return;
    //     } else {
            
    //     }
    //     let userIdCheck = RegExp(/^[A-Za-z0-9_\-]{5,15}$/);
    //     if(!userIdCheck.test($("#input_ID").val())){
    //         alert('아이디는 대소문자와 숫자로 조합하여 입력해주세요.');
    //         $("#input_ID").focus();

    //         return;

    //     };
    // });



    // $("#login_chk").click(function(){
    //     i++;
    //     if(i == 1){
    //          $("#input_ID").css('boarder','2px solid red')
    //         return false;
    //     }else{

    //         confirm('사용가능한 아이디 입니다.')
    //     }
    //     console.log(i);
    // });


    // $("#password").click(function(){
        
    //     $("#password").blur(function(){
    //         if($("#password").val==""){
    //             alert('비밀번호를 입력해 주세요.')
    //             return false;

    //         }else{

    //         }


    //     })

    // })



// var MSG_VALID_ID = "사용 가능한 ID입니다."; 		//사용가능한 ID입니다.
// var MSG_INVAL_ID = "유효하지 않은 ID입니다.";	//유효하지 않은 ID입니다.
// var MSG_EXIST_ID = "이미 사용 중이거나, 사용할 수 없는 아이디입니다."; 		//이미 존재하는 ID입니다.
// var MSG_VALID_PW = "영문, 숫자, 특수문자의 조합이어야 합니다.";		
// var MSG_INVAL_PW = "유효하지 않은 비밀번호 입니다.";	
// var MSG_VALID_ID = "사용 가능한 ID입니다."; 		//사용가능한 ID입니다.
// var MSG_INVAL_ID = "유효하지 않은 ID입니다.";	//유효하지 않은 ID입니다.
// var MSG_EXIST_ID = "이미 사용 중이거나, 사용할 수 없는 아이디입니다."; 		//이미 존재하는 ID입니다.
// var MSG_VALID_PW = "영문, 숫자, 특수문자의 조합이어야 합니다.";		
// var SG_INVAL_PW = "유효하지 않은 비밀번호 입니다.";	



// function login_chk(){
// 	var returnFlag = false;
// 	if(idValidation == true){
// 		$('#error_web_id').css("display", "none");
// 		returnFlag = true;
// 	}else{
// 		alert('ID중복확인 실시하지 않았습니다.');
// 		$('#error_web_id').css("display", "");
// 		$('#web_id').focus();
// 	}
// 	return returnFlag;
// }

// function passwordVaild() {
	
// 	var invalidPattern = [
// 	                      "1234", "2345", "3456", "4567", "5678", "6789", "7890"
// 	                      ,"abcd", "bcde", "cdef", "defg", "efgh"
// 	                      ,"qwer", "zxcv", "asdf"
// 	                      ,"123123"
// 	                      ];
	
// 	var invalidReg = /(\w)\1\1/;
	
// 	document.getElementById("#password").addEventListener("change", function(e) {
// 		var inputVal = e.target.value;
		
// 		for(var i=0; i<invalidPattern.length; i++) {
// 			if(inputVal.match(invalidPattern[i]) != null) {
// 				console.log("연속된 문자는 사용할 수 없습니다."+inputVal.match(invalidPattern[i])[0]);	
// 			}
// 		}
// 	});
// }

function nullcheck(data){
    if(data==null || data==""){
        return false
    }else{
        return true
    }

}


function equals(data,checkdata){
    if(data==checkdata){
        return true;
    }else{
        return false;
    }
}


//id  nullcheck
$("#input_ID").blur(function(){
    let result= nullcheck($("#input_ID").val())
   
    if(result){
    $("#inputUserNameResult").html("ID중복확인 실시하지 않았습니다.")
   }else{
    $("#inputUserNameResult").html("아이디를 입력해 주세요")

   }

})


$("#input_ID").blur(function(){
    let result = nullcheck($("#input_ID").val)
    if(result){

    }else{
        $("error_web_id").html("ID중복확인 실시하지 않았습니다.") 
    }
})

