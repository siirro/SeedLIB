let popupWidth = "750";
let popupHeight = "550";
let popUp = "";
  
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
		success : function(){
			location.reload()
		},
		error : function(){
			location.reload()
		}
	})
});
	
//좋아요 취소	
$("#unlikeBtn").click(function(){
	
	$.ajax({
		type : "POST",
		url : "like/delete",
		data : {
			isbn : isbn,
			userName : userName
		},
		success : function(){
			location.reload()
		},
		error : function(){
			location.reload()
		}
	})
});

//-------------------------------------------------
//디테일 페이지에서 책꽂이에 책 저장하기 눌렀을 때
$("#addBookBtn").click(function(){
	$.ajax({
		type : "GET",
		url : "../shelf/addBook",
		data : {
			isbn : isbn,
			userName : userName
		},
		success : function(){
			window.open('../shelf/addBook?isbn='+isbn+'&userName='+userName, "책꽂이에 저장", strOption);
		},
		error : function(){
			console.log("ERROR");
		}
	})
});

//책꽂이 선택 후 책 저장
$("#RealBookBtn").click(function(){
	const bookPickVO = {
		pickNum:$("pickNum").val(),
		isbn:$("isbn").val(),
		shNum:$("shNum").val(),
	}
	$.ajax({
		type : "POST",
		url : "/shelf/setBookAdd",
		data:JSON.stringify(bookPickVO),
		success:function(data){
			switch (data){
				case 1:
					alert("해당 책이 이미 책꽂이에 존재합니다.")
					window.close();
					break;
				case 0:
					let check = window.confirm("책꽂이에 책을 저장했습니다.\n마이페이지에서 확인하시겠습니까?");
					if(check){
						opener.location.href="/mypage/shelf?shNum="+shNum;
						window.close();
						break;
					} else{
                        opener.location.href="../"; 
                        window.close();
                        break;
                    } 
				}
			},
			error:function(){
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