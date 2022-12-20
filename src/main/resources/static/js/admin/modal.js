// modal.js

// 프린트 결제 금액
let amount = 0;

$("#confirm").click(function(){

    modalClose(); // 모달 닫기 함수 호출

});

// 모달창을 띄우는 버튼을 클릭 했을때 이벤트
$("#print").click(function(){

    // console.log("버튼클릭!")

    // 팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
    $("#grpBtns_apply").css('display','flex').hide().fadeIn();

    // 한페이지당 가격 = 색상, 용지크기 선택
    let pgcolor=0;
    let pgsize=0;

    $("#prColor").blur(function(){
        // console.log("셀렉트 블러중");

        // 색상선택 값
        let color = $("#prColor").val();

        if(color=='Y'){
            // console.log("컬러");
            pgcolor = 1;
        }else{
            // console.log("흑백");
            pgcolor = 0;
        }
        // console.log("벨류값은? :", color);
        // 변경했을때
        $("#prColor").change(function(){
            // console.log("셀렉트 체인지중")

        if(size=='A4'){
            // console.log("A4")
            pgsize = 0;
        }else{
            pgsize = 1;
        }

        });

    });

    $("#prSize").blur(function(){

        // 용지선택 값
        let size = $("#prSize").val();
        // console.log("사이즈? :", size)
        if(size=='A4'){
            // console.log("A4")
            pgsize = 0;
        }else{
            pgsize = 1;
        }

        // 변경했을때
        $("#prSize").change(function(){

        if(size=='A4'){
            // console.log("A4")
            pgsize = 0;
        }else{
            pgsize = 1;
        }

        });

    });

    // 시작페이지, 끝페이지 입력값 체크
    let check = false;

    // 시작페이지 마지막페이지를 계산해서 총 페이지 값 넣어주기
    $("#ipCaStPage").blur(function(){
        
        // console.log("첫페이지 블러");

        $("#ipCaStPage").change(function(){
    
            // console.log("첫페이지 체인지이벤트");
    
            $("#ipCaLsPage").val("");
            $("#ipCaTtPage").val("");
            $("#ipResult").html("‼ 변경되었습니다. 다시 입력해주세요 ‼");
    
        });

    });

    // 시작페이지 마지막페이지를 계산해서 총 페이지 값 넣어주기
    // 중간에 고객이 변경을 한다면?
    $("#ipCaLsPage").on({
        blur : function(){

            // console.log("끝 페이지 블러");

            let caStPage = $("#ipCaStPage").val();
            // console.log("시작페이지 : ",caStPage);
            let caLsPage = $("#ipCaLsPage").val();
            // console.log("끝 페이지 : ",caLsPage);

            if(parseInt(caLsPage) > parseInt(caStPage)){

                // console.log("마지막 페이지가 크다면 찍혀라");
                $("#ipCaTtPage").val(parseInt((caLsPage-caStPage)+1));

                let caTtPage = $("#ipCaTtPage").val();
                $("#tdTtp").text(caTtPage+"장");

                check = true;

            }else if(parseInt(caLsPage) === parseInt(caStPage)){

                // 페이지수가 같으면 1페이지로 입력
                // console.log("같다!");
                $("#ipCaTtPage").val(1);

                $("#tdTtp").text("");
                let caTtPage = $("#ipCaTtPage").val();
                // console.log("체인지이벤트 총페이지 : ", caTtPage);
                $("#tdTtp").text(caTtPage+"장");

                check = true;

            }else if(caStPage==''){

                check = false;

            }else if(caLsPage==''){

                check = false;

            }else{

                check = false;

            }

        },
        change : function(){

            // console.log("끝 페이지 체인지");

            let caStPage = $("#ipCaStPage").val();
            // console.log("시작페이지 : ",caStPage);
            let caLsPage = $("#ipCaLsPage").val();
            // console.log("끝 페이지 : ",caLsPage);

            if(parseInt(caLsPage) > parseInt(caStPage)){

                // console.log("마지막 페이지가 크다면 찍혀라");

                // 총페이지수에 빼기한것을 넣기
                $("#ipCaTtPage").val(parseInt((caLsPage-caStPage)+1));

                $("#tdTtp").text("");
                let caTtPage = $("#ipCaTtPage").val();
                // console.log("체인지이벤트 총페이지 : ", caTtPage);
                $("#tdTtp").text(caTtPage+"장");

                check = true;
            }else if(parseInt(caLsPage) === parseInt(caStPage)){

                // 페이지수가 같으면 1페이지로 입력
                // console.log("같다!");
                $("#ipCaTtPage").val(1);

                $("#tdTtp").text("");
                let caTtPage = $("#ipCaTtPage").val();
                // console.log("체인지이벤트 총페이지 : ", caTtPage);
                $("#tdTtp").text(caTtPage+"장");

                check = true;

            }else if(parseInt(caLsPage) < parseInt(caStPage)){

                // 마지막페이지수가 작으면 값을 지움
                $("#ipCaLsPage").val("");
                $("#ipCaTtPage").val("");

                // 경고문(?) 띄우기
                $("#ipResult").html("‼ 시작 페이지가 큽니다. 다시 입력해 주세요 ‼");

                check = false;

            }

        }
    });

    $("#binding").on({

        blur : function(){

            let bind = $("#binding").val();
            console.log("제본선택 : ", bind);

            if(bind=='N'){

                console.log("블러 제본하지않음");
                console.log("값이 뭐니?",$(this).val());
                $("#tdPrinPay").text(0+"원");

            }else if(bind=='Y'){
                // console.log("제본함")
                let caTtPage = $("#ipCaTtPage").val();
                console.log("총 페이지 : ",caTtPage);
                if(parseInt(caTtPage) < 50){
                    console.log("50매 이하")
                    console.log("50 총 페이지 : ",caTtPage);

                    $("#tdPrinPay").text(2000+"원");

                }else if(100 <= parseInt(caTtPage)){
                    
                    console.log("100매 이상")
                    console.log("100 총 페이지 : ",caTtPage);

                    $("#tdPrinPay").text(4000+"원");

                }else if(50 <= parseInt(caTtPage) < 100){

                    console.log("50이상 100이내")
                    console.log("50-100 총 페이지 : ",caTtPage);

                    $("#tdPrinPay").text(3000+"원");

                }

            }else{

                console.log("블러 나머지 값이 뭐니?",$(this).val());
                $("#tdPrinPay").text(0+"원");

            }
        
        }

    });

    // 클릭횟수수
    let count = 0;

    $("#payBtn").click(function(){

        if(!check){
            // console.log("찍히닝?");
            swal({
                title: "확인",
                text: "필수 정보를 입력해 주세요",
                icon: "warning",
                button: "닫기",
            });
            
            $("#ipResult").html("‼ 필수 정보를 입력해 주세요 ‼");
            $("#ipCaStPage").focus();

        }else{
    
            // 한번 클릭시 증가
            count++;
    
            // 버튼 한번만 생기게 
            if(count==1){
    
                // 결제하기 버튼 생성
                $("#payBtn2").append('<button type="button" id="printCaAdd" class="btn btn_apply" style="background-image: linear-gradient(to right, #9be15d, #00e3ae)">추가하기</button>');
                $("#order").css('display','flex').hide().fadeIn();
    
            }
    
            // 1장 가격
            // 컬러 : 0-흑백 1-컬러, 크기 : 0-A4 1-B4
            if(pgcolor===0 && pgsize===0){
    
                // 흑백&A4
                $("#tdPa").text("70원");
    
            }else if(pgcolor==0&&pgsize==1){
    
                // 흑백&B4
                $("#tdPa").text("60원");
    
            }else if(pgcolor==1&&pgsize==0){
    
                // 컬러&A4
                $("#tdPa").text("500원");
    
            }else{
    
                $("#tdPa").text("400원");
    
            }
    
            // 총 페이지 가격
            let ttp = $("#tdTtp").text();
            let pa = $("#tdPa").text();
    
            ttp = ttp.split('장', 1);
            pa = pa.split('원', 1);
    
            let price = parseInt(ttp)*parseInt(pa);
    
            // NaN처리
            if(isNaN(price)){
    
                price = 0;
    
            };
            
            let bind = $("#binding").val();
    
            if(isNaN(bind)){
                console.log("바인드 NaN");

                bind = 0;
    
            }else if(bind==''){

                console.log("바인드 비어있니? ", bind);

                $("#tdPrinPay").text("0원");
    
            } 
    
            $("#tdTtpPrice").text(price+"원");
    
            // 제본가격

            let pay = $("#tdPrinPay").text();
            console.log("pay : ", pay);

            let printPay = pay.split('원', 1);
            console.log("bin : ", printPay);
            console.log("price : ", price);

            amount = price+parseInt(printPay)

            console.log("결제하기 눌렀을때 금액 : ", amount);

            $("#ipCaAmount").val(amount);

            $("#tdTtPay").text(price+parseInt(printPay)+"원");

            $("#printCaAdd").click(function(){
                
                // 컬러
                let caColor = $("#prColor").val();
                // 용지
                let caSize = $("#prSize").val();
                // 복사 시작
                let caStPage = $("#ipCaStPage").val();
                // 복사 마지막
                let caLsPage = $("#ipCaLsPage").val();
                // 복사 총 페이지
                let caTtPage = $("#ipCaTtPage").val();
                // 제본 총 금액
                // 도서 isbn
                console.log("값 확인!", caColor);
                let isbn = $("#ipIsbn").val();

                $.ajax({
                    type: "POST",
                    url: "boCart",
                    data: {
                        caColor: caColor,
                        caSize: caSize,
                        caStPage: caStPage,
                        caLsPage: caLsPage,
                        caTtPage: caTtPage,
                        caAmount: amount,
                        isbn: isbn
                    },
                    success: function(result){
            
                        if(result==0){
                            alert("바구니 추가를 실패했습니다");
                        }else if(result > 0){
            
                            let check = window.confirm("바구니로 이동 하시겠습니까?")
            
                            if(check){
                                
                                location.href="/print/boCart";
            
                            }else {
                            
                                location.href="./";
            
                            }
            
                        }
            
                    }
                });
            
                // $("#postFrm").submit();

                let check = window.confirm("바구니로 이동 하시겠습니까?")
            
                if(check){
                    
                    location.href="/print/boCart";
            
                }else {
                
                    location.href="./";
            
                }
            
            });

        }

    });

});


// // 제본 결제!
// const IMP = window.IMP;
// let impKey = $("#prinImp").val();
// console.log("임프키 : ", impKey);
// IMP.init(impKey);

// let merchant_uid = new Date().getTime();
// let bookName = $("#prinBook").text();
// console.log("프린 북 : ", bookName);
// console.log("결제금액", amount);
// let email = $("#ipEmail").val();
// console.log("이메일 : ", email);
// let userName = $("#ipUserName").val();
// console.log("유저이름 : ",userName);
// let phone = $("#ipPhone").val();
// console.log("폰 : ",phone);

// let printNum = '';
// function requestPay() {
//     console.log(IMP);
//     //  IMP.request_pay(param, callback);
//     IMP.request_pay({ // param
//         pg: "html5_inicis",
//         pay_method: "card",
//         merchant_uid: merchant_uid,
//         name: bookName,
//         amount: amount,
//         buyer_email: email,
//         buyer_name: userName,
//         buyer_tel: phone
//     }, function (rsp) { // callback
//         if (rsp.success) {
//             // 결제 성공 시 로직,
//             console.log("결제 성공!");
//             $.ajax({
//                 type: "POST",
//                 url: "/print/boOrder",
//                 data: {
//                     'imp_uid':rsp.imp_uid,
//                     'merchant_uid':rsp.merchant_uid,
//                     'printNum':printNum,
//                     'amount':amount,
//                     'userName':userName
//                 }
//             });
//         } else {
//             // 결제 실패 시 로직,
//             alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
//             console.log("에러ㅠㅠ");
//         }
//     });
// }


$("#close").click(function(){
    modalClose(); // 모달 닫기 함수 호출
});
function modalClose(){
    $("#grpBtns_apply").fadeOut(); // 페이드아웃 효과
};