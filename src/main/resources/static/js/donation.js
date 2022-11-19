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
let donMethod = "";
let donAlert = "";

// agree01 Y
// donation.js:22 agree02 Y
// donation.js:23 donMethod 직접방문
// donation.js:24 donAlert 수신

//동의 체크 여부
function agreeCheck(){
    agree1 = $(":input:radio[name=agree1]:checked").val();
    agree2 = $(":input:radio[name=agree2]:checked").val();
    donMethod = $(":input:radio[name=donMethod]:checked").val();
    donAlert = $(":input:radio[name=donAlert]:checked").val();
    if(agree1=='N'){
        return false;
    } else{
        return true;
    }
}

//기증도서신청
$("#donBtn").click(function(){
    let check = window.confirm("신청하시겠습니까?");
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
            let hopeVO = {
                hopTitle:$("#hopTitle").val(),
                hopWriter:$("#hopWriter").val(),
                hopPublisher:$("#hopPublisher").val(),
                isbn:$("#isbn").val(),
                userName:$("#userName").val(),
                hopMemo:$("#hopMemo").val(),
                libVO:libVO
            }
            $.ajax({
                type:"POST",
                url:"/hope/bookCheck",
                data:JSON.stringify(hopeVO),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success:function(data){
                    switch (data) {
                        case 111:
                          $("#titleInfo").text("해당 도서관에서 소장 중인 도서입니다");
                          break;
                        case 222:
                          alert("해당 도서관에 이미 신청 중인 도서입니다");
                          break;
                        case 333:
                            alert("이번 달에 신청 가능한 횟수를 초과하였습니다");
                            location.href="../";
                            break;  
                        case 200:
                            console.log("Num: ", hopeVO.libVO.libNum);
                            $.ajax({
                                type:"POST",
                                url:"/hope/setHope",
                                data: JSON.stringify(hopeVO),
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success:function(data){
                                    console.log(data);
                                    alert("희망 도서 신청 완료했습니다");
                                    location.href="../";
                                },error:function(error){
                                    console.log("errorㅠㅠ", data);
                                    console.log(error);
                                    location.href="./";
                                }                
                            })
                            break;
                      }
                    // console.log(data);
                    // if(data==111){
                    //     $("#titleInfo").text("해당 도서관에서 소장 중인 도서입니다");
                    // }else if(data==222){
                    //     alert("해당 도서관에 이미 신청 중인 도서입니다");
                    // }
                }

            })

            // $.ajax({
            //     type:"POST",
            //     url:"/hope/setHope",
            //     data: JSON.stringify(hopeVO),
            //     contentType: "application/json; charset=utf-8",
            //     dataType: "json",
            //     success:function(data){
            //         console.log(data);
            //         alert("희망 도서 신청 완료");
            //         // location.href="../";
            //     },error:function(error){
            //         console.log("errorㅠㅠ", data);
            //         console.log(error);
            //         // location.href="./";

            //     }                
            // })
        }else{
            alert("신청 정보를 확인 후 신청해주세요");
            location.reload();
            return;
        }
    }else{
        return;
    }
})


