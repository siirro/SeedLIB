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

    let bindingCheck = 0;

    $("#binding").on({

        change : function(){

            let bind = $("#binding").val();
            console.log("제본선택 : ", bind);

            $("#tdPrinPay").text(0+"원");

            if(bind=='N'){

                console.log("블러 제본하지않음");
                console.log("값이 뭐니?",$(this).val());
                $("#tdPrinPay").text(0+"원");

                bindingCheck = 0;

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

                bindingCheck = 1;

            }else{

                console.log("블러 나머지 값이 뭐니?",$(this).val());
                $("#tdPrinPay").text(0+"원");

                bindingCheck = 0;

            }
        
        }

    });

    // 클릭횟수수
    let count = 0;

    $("#applyBtn").click(function(){

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
    
            if(count==1){

                // 결제내역 창 뜸
                $("#order").css('display','flex').hide().fadeIn();
                $("#payBtnWrap").css('display','flex').hide().fadeIn();

            }
    
            // 1장 가격
            // 컬러 : 0-흑백 1-컬러, 크기 : 0-A4 1-B4
            if(pgcolor==0 && pgsize==0){
    
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
    
            $("#tdTtpPrice").text(price+"원");
    
            // 제본가격

            let pay = $("#tdPrinPay").text();
            console.log("pay : ", pay);

            let printPay = pay.split('원', 1);
            console.log("bin : ", printPay);
            console.log("price : ", price);

            // NaN처리
            if(isNaN(printPay)){

                printPay = 0;
    
            };
            console.log("bin : ", printPay);

            amount = price+parseInt(printPay)

            console.log("결제하기 눌렀을때 금액 : ", amount);

            $("#ipCaAmount").val(amount);

            $("#tdTtPay").text(price+parseInt(printPay)+"원");

            
            // $("#printCaAdd").click(function(){
                
                // // 컬러
                // let caColor = $("#prColor").val();
                // console.log("색 : ", caColor);
                // // 용지
                // let caSize = $("#prSize").val();
                // console.log("사이즈 : ", caSize);
                // // 복사 시작
                // let caStPage = $("#ipCaStPage").val();
                // console.log("시작 페이지 : ", caStPage);
                // // 복사 마지막
                // let caLsPage = $("#ipCaLsPage").val();
                // console.log("마지막 페이지 : ", caLsPage);
                // // 복사 총 페이지
                // let caTtPage = $("#ipCaTtPage").val();
                // console.log("총 페이지 : ", caTtPage);
                // // 제본 총 금액
                // let caAmount = $("#ipCaAmount").val();
                // console.log("총 금액 : ", caAmount);
                // // 도서 isbn
                // let isbn = $("#ipIsbn").val();
                // console.log("도서 : ", isbn);

            //     // $.ajax({
            //     //     type: "POST",
            //     //     url: "/print/boCart",
            //     //     data: {
            //     //         caColor: caColor,
            //     //         caSize: caSize,
            //     //         caStPage: caStPage,
            //     //         caLsPage: caLsPage,
            //     //         caTtPage: caTtPage,
            //     //         caAmount: caAmount,
            //     //         isbn: isbn
            //     //     },
            //     //     success: function(result){
            
            //     //         if(result==0){
            //     //             alert("바구니 추가를 실패했습니다");
            //     //         }else if(result > 0){
            
            //     //             console.log("성공");

            //     //             // let check = window.confirm("바구니로 이동 하시겠습니까?")
            
            //     //             // if(check){
                                
            //     //             //     location.href="/print/boCart";
            
            //     //             // }else {
                            
            //     //             //     console.log("취소");
            
            //     //             // }
            
            //     //         }
            
            //     //     }
            //     // });
            
            //     $("#postFrm").submit();

            //     // let check = window.confirm("바구니로 이동 하시겠습니까?")
            
            //     // if(check){
                    
            //     //     location.href="/print/boCart";

            //     //     return false;
            //     // }
            
            // });

        }

    });

});


// 제본 결제!

// 컬러
// let caColor = $("#prColor").val();
// console.log("색 : ", caColor);
// // 용지
// let caSize = $("#prSize").val();
// console.log("사이즈 : ", caSize);
// // 복사 시작
// let caStPage = $("#ipCaStPage").val();
// console.log("시작 페이지 : ", caStPage);
// // 복사 마지막
// let caLsPage = $("#ipCaLsPage").val();
// console.log("마지막 페이지 : ", caLsPage);
// // 복사 총 페이지
// let caTtPage = $("#ipCaTtPage").val();
// console.log("총 페이지 : ", caTtPage);
// // 제본 총 금액
// let caAmount = $("#ipCaAmount").val();
// console.log("총 금액 : ", caAmount);
// // 도서 isbn
// let isbn = $("#ipIsbn").val();
// console.log("도서 : ", isbn);

let merchant_uid = new Date().getTime();
let bookName = $("#prinBook").text();
console.log("프린 북 : ", bookName);
console.log("결제금액", amount);
let email = $("#ipEmail").val();
console.log("이메일 : ", email);
let username = $("#ipUserName").val();
console.log("유저이름 : ",username);
let phone = $("#ipPhone").val();
console.log("폰 : ",phone);





let caNum = 0;

const IMP = window.IMP;
let impKey = $('#prinImp').val();
IMP.init(impKey);

function requestPay() {
    //  IMP.request_pay(param, callback);
    IMP.request_pay({ // param
        pg: "html5_inicis",
        pay_method: "card",
        merchant_uid: merchant_uid,
        name: bookName,
        amount: amount,
        buyer_email: email,
        buyer_name: username,
        buyer_tel: phone
    }, function (rsp) { // callback
        // console.log(IMP);
        // console.log("유저 : ", username)
        // console.log(rsp.imp_uid);
        // console.log(rsp.merchant_uid);
        if (rsp.success) {
            // 결제 성공 시 로직,
            console.log("결제 성공!");
            // 컬러
            let caColor = $("#prColor").val();
            console.log("색 : ", caColor);
            // 용지
            let caSize = $("#prSize").val();
            console.log("사이즈 : ", caSize);
            // 복사 시작
            let caStPage = $("#ipCaStPage").val();
            console.log("시작 페이지 : ", caStPage);
            // 복사 마지막
            let caLsPage = $("#ipCaLsPage").val();
            console.log("마지막 페이지 : ", caLsPage);
            // 복사 총 페이지
            let caTtPage = $("#ipCaTtPage").val();
            console.log("총 페이지 : ", caTtPage);
            // 제본 총 금액
            let caAmount = $("#ipCaAmount").val();
            console.log("총 금액 : ", caAmount);
            // 회원 아이디
            let username = $("#ipUserName").val();
            console.log("유저이름 : ",username);
            // 도서 isbn
            let isbn = $("#ipIsbn").val();
            console.log("도서 : ", isbn);
            $.ajax({
                type: "POST",
                url: "/print/boAdCart",
                data: {
                    'imp_uid':rsp.imp_uid,
                    'merchant_uid':rsp.merchant_uid,
                    'caNum':caNum,
                    'caColor':caColor,
                    'caSize':caSize,
                    'caStPage':caStPage,
                    'caLsPage':caLsPage,
                    'caTtPage':caTtPage,
                    'caAmount':caAmount,
                    'userName':username,
                    'isbn':isbn
                },success:function(data){
                    if(data>0){
                        let check=window.confirm("결제를 완료했습니다.");
                        if(check){
                            location.href="/print/boCart"; 
                            
                        } else{
                            let isbn = $("#ipIsbn").val();
                            console.log("도서 : ", isbn);
                            location.href="/book/detail?isbn="+isbn; 
                            
                        }   
                    }
                }
            });
        } else {
            // 결제 실패 시 로직,
            alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
            console.log("에러ㅠㅠ");
        }
    });
}


$("#close").click(function(){
    modalClose(); // 모달 닫기 함수 호출
});
function modalClose(){
    $("#grpBtns_apply").fadeOut(); // 페이드아웃 효과
};