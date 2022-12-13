// modal.js
$("#confirm").click(function(){
    modalClose(); // 모달 닫기 함수 호출
    
    // 컨펌 이벤트 처리
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
                $("#ipCaTtPage").val(parseInt(caLsPage-caStPage+1));

                let caTtPage = $("#ipCaTtPage").val();
                $("#tdTtp").text(caTtPage+"장");

            }else if(caTtPage==''){

                $("#tdTtp").text(0+"장");

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
                $("#ipCaTtPage").val(parseInt(caLsPage-caStPage+1));

                $("#tdTtp").text("");
                let caTtPage = $("#ipCaTtPage").val();
                // console.log("체인지이벤트 총페이지 : ", caTtPage);
                $("#tdTtp").text(caTtPage+"장");

            }else if(parseInt(caLsPage) === parseInt(caStPage)){

                // 페이지수가 같으면 1페이지로 입력
                // console.log("같다!");
                $("#ipCaTtPage").val(1);

                $("#tdTtp").text("");
                let caTtPage = $("#ipCaTtPage").val();
                // console.log("체인지이벤트 총페이지 : ", caTtPage);
                $("#tdTtp").text(caTtPage+"장");

            }else if(parseInt(caLsPage) < parseInt(caStPage)){

                // 마지막페이지수가 작으면 값을 지움
                $("#ipCaLsPage").val("");
                $("#ipCaTtPage").val("");

                // 경고문(?) 띄우기
                $("#ipResult").html("‼ 시작 페이지가 큽니다. 다시 입력해 주세요 ‼");

            }else if(caTtPage==''){
                $("#tdTtp").text(0+"장");
            }
        }
    });

    $("#binding").blur(function(){

        let bind = $("#binding").val();

        if(bind=='N'){
            console.log("제본하지않음");
            $("#tdPrinPay").text(0+"원");
        }else if(bind=='Y'){
            console.log("제본함")
            $("#tdPrinPay").text(3000+"원");
        }else{
            $("#tdPrinPay").text(0+"원");
        }

    });

    // 클릭횟수수
    let count = 0;

    $("#payBtn").click(function(){

        // 한번 클릭시 증가
        count++;

        // 버튼 한번만 생기게 
        if(count==1){
            // 결제하기 버튼 생성
            $("#payBtn2").append('<button type="button" class="btn btn_apply" style="background-image: linear-gradient(to right, #9be15d, #00e3ae)">결제하기</button>');
            $("#order").css('display','flex').hide().fadeIn();

        }

        // 1장 가격
        // 컬러 : 0-흑백 1-컬러, 크기 : 0-A4 1-B4
        if(pgcolor==0&&pgsize===0){
            console.log("흑백&A4")
            $("#tdPa").text("70원");
        }else if(pgcolor==0&&pgsize==1){
            console.log("흑백&B5")
            $("#tdPa").text("60원");
        }else if(pgcolor==1&&pgsize==0){
            console.log("컬러&A4")
            $("#tdPa").text("500원");
        }else{
            $("#tdPa").text("400원");
        }

        // 총 페이지 가격
        let ttp = $("#tdTtp").text();
        let pa = $("#tdPa").text();

        // console.log("어떻게 되닝? : ", ttp);
        ttp = ttp.split('장', 1);
        pa = pa.split('원', 1);
        // console.log("잘렸니? : ", ttp);

        let price = parseInt(ttp)*parseInt(pa);

        // NaN처리
        if(isNaN(price)){
            price = 0;
        };

        $("#tdTtpPrice").text(price+"원");

        // 제본가격


    });

});
$("#close").click(function(){
    modalClose(); // 모달 닫기 함수 호출
});
function modalClose(){
    $("#grpBtns_apply").fadeOut(); // 페이드아웃 효과
};