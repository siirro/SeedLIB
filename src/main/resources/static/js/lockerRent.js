let popupWidth = "750";
let popupHeight = "550";
let popUp = "";

let seatNum = 0;
let used = "";
let roomName = "";

let enDate = new Date();

  
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
    // stDateString = stDateString.replace(/-/g,",");
    // console.log(stDateString);
    console.log(startDate);
    let stDate = new Date(startDate.substr(0,4),startDate.substr(5,2),startDate.substr(8,2));
    console.log(stDate);
    let enDateMin = startDate;
    let enDateMax = new Date(stDate.setDate(stDate.getMonth()+2));
    console.log(stDate);
    console.log(dateForm(enDateMax));
    $("#enDate").attr("min", enDateMin);
    $("#enDate").attr("max", dateForm(enDateMax));
});

$("#rentBtn").click(function(){
    window.confirm("이용 종료 후 꼭 퇴실 체크를 하시기 바랍니다");
    const studyDetailVO={
        seatNum:$("#seatNum").attr("value"),
        roomNum:$("#roomNum").attr("value"),
        userName:$("#userName").val()
    }

    console.log(studyDetailVO);

    $.ajax({
        type:"POST",
        url:"/studyroom/setSeat",
        data:JSON.stringify(studyDetailVO),
        contentType: "application/json; charset=utf-8",
        dataType: "json", 
        success: function(data){
            switch (data) {
                case 111:
                    alert("해당 좌석은 이미 이용 중입니다");
                    window.close();
                    break;
                case 222:
                    alert("이용 중인 좌석의 퇴실 처리 후 예약이 가능합니다");
                    opener.location.href="/mypage/seatHistory"; 
                    window.close();
                    break;
                case 200:
                    let check=window.confirm("좌석 예약을 완료했습니다\n마이페이지에서 확인하시겠습니까?");
                    if(check){
                        opener.location.href="/mypage/seatHistory"; 
                        window.close();
                        break;
                    } else{
                        opener.location.href="../index"; 
                        window.close();
                        break;
                    }    
                }
            }, error: function(){
                console.log("에러남ㅠㅠ");
            }
    })
})

function dateForm(date){
    let yyyy = date.getFullYear();
    let mm = date.getMonth()+1;
    let dd = date.getDate();
    let dateString = yyyy+'-'+mm+'-'+dd
    return dateString;

}