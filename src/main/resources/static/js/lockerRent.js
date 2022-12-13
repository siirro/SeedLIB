let popupWidth = "850";
let popupHeight = "640";
let popUp = "";

let used = "";

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

$("#stDate").change(function(){
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
    if(isNaN(rentDays)){
        $("#price").val(0);
        return;
    }else{
        $("#price").val(price);
    }
})

$("#stDate").change(function(){
    let newStDate = new Date($("#stDate").val());
    let newEnDate = new Date($("#enDate").val());
    rentDays =  Math.abs((newEnDate.getTime() - newStDate.getTime())/(1000*60*60*24))+1;
    console.log(rentDays);
    price = 500*rentDays;
    if(isNaN(rentDays)){
        $("#price").val(0);
        return;
    }else{
        $("#price").val(price);
    }
})

$("#rentBtn").click(function(){
    let sDate = $("#stDate").val();
    let eDate = $("#enDate").val();
    console.log("s:",sDate, "e:",eDate, "p:",price)
    if(sDate==='null'||eDate==='null'||price<1){
        alert("대여 정보를 다시 확인해주세요");
        return;    
    }

    if(eDate<sDate){
        alert("선택하신 날짜가 올바르지 않습니다\n다시 선택 후 신청해주세요");
        return;
    }

    let check = window.confirm("환불 신청은 마이페이지의 [사물함 대여 조회]에서 가능합니다");
    if(check){
        let lockerVO={
            lockerNum:$("#lockerNum").attr("value"),
            amount:price,
            userName:$("#userName").val(),
            stDate:sDate,
            enDate:eDate,
            rentDays:rentDays,
            email:$("#email").val(),
            phone:$("#phone").val()
        }
        $.ajax({
            type:"POST",
            url:"/studyroom/check",
            data:JSON.stringify(lockerVO),
            contentType: "application/json; charset=utf-8",
            dataType: "json", 
            success:function(data){
                switch (data) {
                    case 111:
                        alert("해당 사물함은 이미 이용 중입니다");
                        window.close();
                        break;
                    case 222:
                        alert("이미 이용 중인 사물함이 있습니다\n사물함은 1인당 1개만 신청 가능합니다");
                        opener.location.href="/mypage/lockerHistory"; 
                        window.close();
                        break;
                    case 200:
                        requestPay(lockerVO);
                    }    
            },error:function(data){
                console.log("에러남ㅠㅠ", data);
            }
        })
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
                url: "/studyroom/payments",
                  data: {
                    'imp_uid':rsp.imp_uid,
                    'merchant_uid':rsp.merchant_uid,
                    'lockerNum':lockerVO.lockerNum,
                    'amount':price,
                    'stDate':lockerVO.stDate,
                    'enDate':lockerVO.enDate,
                    'rentDays':lockerVO.rentDays,
                    'userName':lockerVO.userName
                 },success:function(data){
                    if(data>0){
                        let check=window.confirm("사물함 예약을 완료했습니다\n마이페이지에서 확인하시겠습니까?");
                        if(check){
                            opener.location.href="/mypage/lockerHistory"; 
                            window.close();
                        } else{
                            opener.location.href="/studyroom/locker"; 
                            window.close();
                        }   
                    }
                },error:function(data){
                    console.log("에러남ㅠㅠ", data);
                }
            })    
        } else {
            console.log("에러남ㅠㅠ", data);
        }
    });
  }