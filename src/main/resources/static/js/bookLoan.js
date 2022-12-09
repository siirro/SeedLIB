
console.log(isbn);
console.log(userName);

const libNum = $(".libNum").val();

console.log(libNum);
//-------------------------------------------------
//디테일 페이지에서 대출신청 눌렀을 때
$("#LoanAlretBtn").click(function(){
	const bookLoanVO = {
		userName : userName,
		isbn : isbn,
		libNum : libNum
	}
	
	console.log(bookLoanVO);
	
	$.ajax({
		type : "POST",
		url : "/book/loan",
		data:JSON.stringify(bookLoanVO),
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success:function(data){
			switch (data){
				case 2:
					alert("해당 책을 이미 대출 중입니다.")
					break;
				case 1:
					let done = window.confirm("도서를 대출했습니다.\n마이페이지에서 확인하시겠습니까?");
					if(done){
						opener.location.href="/mypage/book/loan";
						break;
					} else{
                        opener.location.href="../";
                        location.reload();
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
//디테일 페이지에서 예약신청 눌렀을 때
$("#ResAlretBtn").click(function(){
	const bookLoanVO = {
		isbn : isbn,
		userName : userName
	}
	$.ajax({
		type : "POST",
		url : "/book/reservation",
		data:JSON.stringify(bookLoanVO),
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success:function(data){
			switch (data){
				case 2:
					alert("해당 책을 이미 대출 중입니다.")
					break;
				case 1:
					let done = window.confirm("도서를 예약했습니다.\n마이페이지에서 확인하시겠습니까?");
					if(done){
						opener.location.href="/mypage/book/reservation";
						break;
					} else{
                        location.reload();
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
$("#MuAlretBtn").click(function(){
	const bookLoanVO = {
		isbn : isbn,
		userName : userName,
		libNum : libNum
	}
	
	console.log(bookLoanVO);
	
	$.ajax({
		type : "POST",
		url : "/book/mutual",
		data:JSON.stringify(bookLoanVO),
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
						opener.location.href="/mypage/book/mutual";
						break;
					} else{
                        location.reload(); 
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

