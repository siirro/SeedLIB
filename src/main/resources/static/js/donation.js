////////////////////////////////////////////////////
let donTitle="";
let donWriter="";
let donPublisher="";
let datetime="";
let isbn="";
let price=0;
let searchOne="";
///유효성검사///////////////////////////////////////////////////
let dLibCheck = false;
let dTitleCheck = false;
let dWriterCheck = false;
let dPublCheck=false;
let dMemoCheck = false;
console.log("donation");
///동의체크////////////////////////////////////////////////////
let agree1 = "";
let agree2 = "";
///수신체크////////////////////////////////////////////////////////////
let emailAgree = "";

// agree01 Y 필수
// agree02 Y 선택
// emailAgree Y 수신 N 미수신

//동의 체크 여부
function agreeCheck(){
    agree1 = $(":input:radio[name=agree1]:checked").val();
    agree2 = $(":input:radio[name=agree2]:checked").val();
    emailAgree = $(":input:radio[name=emailAgree]:checked").val();
    if(agree1=='N'){
        return false;
    } else{
        return true;
    }
}

//기증도서신청
$("#donBtn").click(function(){
    let check = window.confirm("소장 중인 도서를 기증 신청하시겠습니까?(기증 신청한 도서는 반환되지 않습니다)");
    if(check){
        let result = agreeCheck();
        if(result==false){
            console.log(result);
            alert("필수항목 개인정보 수집 및 이용에 동의해주세요")
            return false;
        }
        console.log(result);
        dLibCheck = false;
        dTitleCheck = false;
        dWriterCheck = false;
        dPublCheck=false;
        dMemoCheck = false;
        if($("#donLib").val()!=""){
            dLibCheck = true;
        }
        if($("#donTitle").val().length>0){
            dTitleCheck = true;
        }
        if($("#donWriter").val().length>0){
            dWriterCheck = true;
        }
        if($("#donPublisher").val().length>0){
            dPublCheck=true;
        }
        if($("#donMemo").val().length>0){
            dMemoCheck = true;
        }
        if(dLibCheck&&dTitleCheck&&dWriterCheck&&dPublCheck&&dMemoCheck){
            // $("#registForm").submit();
            let libVO={
                libNum:$("#donLib").val()
            }
            let donationVO = {
                donTitle:$("#donTitle").val(),
                donWriter:$("#donWriter").val(),
                donPublisher:$("#donPublisher").val(),
                userName:$("#userName").val(),
                donMemo:$("#donMemo").val(),
                emailAgree:emailAgree,
                libVO:libVO
            }
            $.ajax({
                type:"POST",
                url:"/donation/setDon",
                data:JSON.stringify(donationVO),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success:function(data){
                    alert("도서 기증 신청을 완료했습니다");
                    location.href="../mypage/donList";

                }, error:function(){
                    console.log("아이고 이런");
                }

            })
        }else{
            alert("필수 정보를 확인 후 신청해주세요");
            location.reload();
            return;
        }
    }else{
        return;
    }
})


