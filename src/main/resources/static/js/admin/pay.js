// 제본 결제!
let IMP = window.IMP;
IMP.init("imp82732758");

function requestPay() {
    IMP.request_pay({ 
        pg: "kcp",
        pay_method: "card",
        merchant_uid: "ORD20180131-0000011",   //주문번호
        name: "노르웨이 회전 의자",
        amount: 64900,                         // 숫자타입
        buyer_email: "gildong@gmail.com",
        buyer_name: "홍길동",
        buyer_tel: "010-4242-4242",
        buyer_addr: "서울특별시 강남구 신사동",
        buyer_postcode: "01181"
    }, function (rsp) { // callback
        if (rsp.success) {
            // 결제 성공 시 로직,
        } else {
            // 결제 실패 시 로직,
        }
    });
  }