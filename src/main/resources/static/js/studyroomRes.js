let popupWidth = "750";
let popupHeight = "300";

let seatNum = 0;
let used = "";

  
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

$(".seatList").on("click",".resBtn",function(){
    used = $(this).attr("available");
    console.log(used);
    if(used=="N"){
        alert("이미 이용 중인 좌석입니다");
        return;
    } else{
        console.log($(this).attr("data-res-num"));
        seatNum = $(this).attr("data-res-num");
        console.log(popupWidth, popupHeight, screen.availWidth, nTop);
        window.open('/studyroom/roomPop/?seatNum='+seatNum,"좌석 예약", strOption);
    }
})

{/* <button class="resBtn" data-res-num="${r}">예약</button> */}