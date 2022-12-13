console.log("list");

let date = new Date();

function enterkey(){
   if (window.event.keyCode == 13) {
       $("#searchBtn").click();
   }
}

$(".status").on("click",".cncl",function(){
  let cnclNum = $(this).attr("data-num-cncl");
  console.log(cnclNum);
  let amountId = '#amount'+cnclNum;
  let stDateId = '#stDate'+cnclNum;
  let enDateId = '#enDate'+cnclNum;
  let merchant_uid_id = '#merchant_uid'+cnclNum;
  console.log($(amountId).attr("amount"));
  let check = window.confirm("사물함 대여 환불 요청하시겠습니까?");
  if(check){
   let enDate = new Date($(enDateId).attr("enDate"));
   if(date.getMonth()+-+date.getDay()===enDate.getMonth()+-+enDate.getDay()){
      alert("당일 환불은 불가합니다");
      return;
   }  
      let stDate = new Date($(stDateId).attr("stDate"));
      let amount = $(amountId).attr("amount");
      let merchant_uid = $(merchant_uid_id).attr("merchant_uid");

      let reDays =  Math.trunc((date.getTime() - stDate.getTime())/(1000*60*60*24))+1;
      let refundPrice = amount - (reDays*500);
      cancelPay(merchant_uid, refundPrice);

     }else{
      return;
  }

})


function cancelPay(merchant_uid, refundPrice) {
   jQuery.ajax({
     "url": "/mypage/lockerCancel",
     "type": "POST",
     "data": {
       "merchant_uid":merchant_uid, // 예: ORD20180131-0000011
       "cancel_request_amount":refundPrice, // 환불금액
       "reason":"회원 희망으로 환불" // 환불사유
     },
     success:function(data){
      console.log(data);
      if(data>0){
         alert("환불 요청이 정상적으로 처리되었습니다");
         location.href="/mypage/lockerHistory";
      }else{
         alert("존재하지 않는 대여 건입니다\n관리자에게 문의하시기 바랍니다");
         location.href="/mypage/lockerHistory";
      }
   },error:function(data){
      console.log("errorT.T",data);
   }
   })
 }