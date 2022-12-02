
	
//-------------------------------------------------
//디테일 페이지에서 예약신청 눌렀을 때
$("#ResAlretBtn").click(function(){
	const reVO = {
		isbn : $("#isbn").val(),
		userName : $("#userName").val(),
	}
	$.ajax({
		type : "POST",
		url : "/book/reservation",
		data:JSON.stringify(reVO),
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success:function(data){
			switch (data){
				case 2:
					alert("해당 책을 이미 대출 중입니다.")
					break;
				case 1:
					let check = window.confirm("도서를 예약했습니다.\n마이페이지에서 확인하시겠습니까?");
					if(check){
						opener.location.href="/mypage/bookReserve";
						break;
					} else{
                        opener.location.href="../"; 
                        break;
                    } 
				}
			},
			error:function(){
				console.log("ERROR");
			}
		})
	});	
	
//-------------------------------------------------
//디테일 페이지에서 상호대차신청 눌렀을 때
$("#LoanAlretBtn").click(function(){
	const muVO = {
		isbn : $("#isbn").val(),
		userName : $("#userName").val(),
	}
	$.ajax({
		type : "POST",
		url : "/book/mutual",
		data:JSON.stringify(muVO),
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success:function(data){
			switch (data){
				case 2:
					alert("해당 책을 이미 대출 중입니다.")
					break;
				case 1:
					let check = window.confirm("도서를 상호대차 신청했습니다.\n마이페이지에서 확인하시겠습니까?");
					if(check){
						opener.location.href="/mypage/bookMutual";
						break;
					} else{
                        opener.location.href="../"; 
                        break;
                    } 
				}
			},
			error:function(){
				console.log("ERROR");
			}
		})
	});	

