let popupWidth = "850";
let popupHeight = "640";
let popUp = "";

let used = "";

console.log($("#imp").val());

let price = 0;
let rentDays = 0;
let enDate = new Date();
let stDate = new Date();
let newDate = new Date();
let merchant_uid = newDate.getTime();
  
// 듀얼 모니터 고려한 윈도우 띄우기
let curX = window.screenLeft;
let curWidth = document.body.clientWidth;
let curHeight = document.body.clientHeight;
  
let nLeft = (screen.availWidth/ 2) - (popupWidth / 2);
let nTop = ((screen.availHeight-popupHeight)/2)-10;

let strOption = "";
strOption += "left=" + nLeft + "px,";
strOption += "top=" + nTop + "px,";
strOption += "width=" + popupWidth + "px,";
strOption += "height=" + popupHeight + "px,";
strOption += "toolbar=no,menubar=no,location=no,";
strOption += "resizable=yes,status=yes";

$(".lockerList").on("click",".resBtn",function(){
    used = $(this).attr("available");
    console.log(used);
    if(used==="N"){
        alert("이미 대여 중인 사물함입니다");
        return;
    } else{
        console.log($(this).attr("data-rent-num"));
        lockerNum = $(this).attr("data-rent-num");
        console.log(popupWidth, popupHeight, screen.availWidth, nTop);
        window.open('/studyroom/lockerPop/?lockerNum='+lockerNum,"사물함 대여", strOption);
    }
})

$("#stDate").blur(function(){
    let startDate = $("#stDate").val();
    console.log(startDate);
    stDate = new Date(startDate.substr(0,4),startDate.substr(5,2),startDate.substr(8,2));

    let enDateMin = startDate;
    let enDateMax = stDate;
    console.log(dateForm(enDateMax));
    $("#enDate").attr("min", enDateMin);
    $("#enDate").attr("max", dateForm(enDateMax));
});

$("#enDate").change(function(){
    let newStDate = new Date($("#stDate").val());
    let newEnDate = new Date($("#enDate").val());
    rentDays =  Math.abs((newEnDate.getTime() - newStDate.getTime())/(1000*60*60*24))+1;
    console.log(rentDays);
    price = 500*rentDays;
    $("#price").val(price);
})

$("#rentBtn").click(function(){
    let sDate = $("#stDate").val();
    let eDate = $("#enDate").val();
    console.log("s:",sDate, "e:",eDate, "p:",price)
    if(sDate==='null'||eDate==='null'||price<1){
        alert("대여 정보를 다시 확인해주세요");
        return;
    }
    let check = window.confirm("이용 종료 후 꼭 퇴실 체크를 하시기 바랍니다");
    if(check){
        let lockerVO={
            lockerNum:$("#lockerNum").attr("value"),
            price:price,
            userName:$("#userName").val(),
            stDate:sDate,
            enDate:eDate,
            rentDays:rentDays,
            email:$("#email").val(),
            phone:$("#phone").val()
        }
        console.log(lockerVO);
        requestPay(lockerVO);
    }
})

function dateForm(date){
    let yyyy = date.getFullYear();
    let mm = date.getMonth()+1;
    let dd = date.getDate()-1;
    mm = mm > 10 ? mm:'0' + mm;
    dd = dd > 10 ? dd:'0' + dd;
    let dateString = yyyy+'-'+mm+'-'+dd
    return dateString;
}

function requestPay(lockerVO) {
    console.log(IMP);
    // IMP.request_pay(param, callback) 결제창 호출
    IMP.request_pay({ // param
        pg: "html5_inicis",
        pay_method: "card",
        merchant_uid: merchant_uid,
        name: "사물함 "+lockerVO.lockerNum+"번 대여",
        amount: price,//tpv
        buyer_email: lockerVO.email,
        buyer_name: lockerVO.userName,
        buyer_tel: lockerVO.phone
    }, function (rsp) { // callback
        if (rsp.success) {
            $.ajax({
                type: "POST",
                url: "/studyroom/payments", // 예: https://www.myservice.com/payments/complete
                data: {
                    'imp_uid': rsp.imp_uid,
                    'merchant_uid': rsp.merchant_uid,
                    'amount': price,
                    'lockerVO':lockerVO
                 },success:function(){

                },error:function(){

                }
            })    
        } else {
        
        }
    });
  }