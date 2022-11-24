let popupWidth = "750";
let popupHeight = "550";
let popUp = "";

let seatNum = 0;
let used = "";
let roomName = "";
  
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

//좋아요
let isbn = $("#isbn").val();
const userName = $("#userName").val();

$("#likeBtn").click(function(){
	
	$.ajax({
		type : "POST",
		url : "like/add",
		data : {
			isbn : isbn,
			userName : userName
		},
		success : function(result){
			location.reload()
		},
		error : function(){
			location.reload()
		}
	})
});
	
	
$("#unlikeBtn").click(function(){
	
	$.ajax({
		type : "POST",
		url : "like/delete",
		data : {
			isbn : isbn,
			userName : userName
		},
		success : function(result){
			location.reload()
		},
		error : function(){
			location.reload()
		}
	})
});


//책꽂이 저장
$("#addBookBtn").click(function(){
	$.ajax({
		type : "GET",
		url : "../shelf/addBook",
		data : {
			isbn : isbn,
			userName : userName
		},
		success : function(){
			console.log("책꽂이 존재");
			window.open('../shelf/addBook?isbn='+isbn+'&userName='+userName, "책꽂이에 저장", strOption);
		},
		error : function(){
			console.log("ERROR");
		}
	})
});


//새 책꽂이 생성
$("#addShelfBtn").click(function(){
	$.ajax({
		type : "GET",
		url : "../shelf/newShelf",
		data : {
			userName : userName
		},
		success : function(){
			console.log("책꽂이 없음");
			window.open('../shelf/newShelf?userName='+userName);
		},
		error : function(){
			console.log("ERROR");
		}
	})
});