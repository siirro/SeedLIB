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
            console.log("시작페이지 : ",caStPage);
            let caLsPage = $("#ipCaLsPage").val();
            console.log("끝 페이지 : ",caLsPage);

            if(caLsPage > caStPage){

                // console.log("마지막 페이지가 크다면 찍혀라");
                $("#ipCaTtPage").val(caLsPage-caStPage);
            }
        },
        change : function(){

            // console.log("끝 페이지 체인지");

            let caStPage = $("#ipCaStPage").val();
            console.log("시작페이지 : ",caStPage);
            let caLsPage = $("#ipCaLsPage").val();
            console.log("끝 페이지 : ",caLsPage);

            if(caLsPage > caStPage){

                // console.log("마지막 페이지가 크다면 찍혀라");

                // 총페이지수에 빼기한것을 넣기
                $("#ipCaTtPage").val(caLsPage-caStPage);

            }else if(caLsPage === caStPage){

                // 페이지수가 같으면 1페이지로 입력
                $("#ipCaTtPage").val(1);

            }else {

                // 마지막페이지수가 작으면 값을 지움
                $("#ipCaLsPage").val("");
                $("#ipCaTtPage").val("");

                // 경고문(?) 띄우기
                $("#ipResult").html("‼ 끝 페이지수가 큽니다. 다시 입력해 주세요 ‼");

            }
        }
    });

});
$("#close").click(function(){
    modalClose(); // 모달 닫기 함수 호출
});
function modalClose(){
    $("#grpBtns_apply").fadeOut(); // 페이드아웃 효과
};