
//-------------------------------------------------
//디테일 페이지에서 대출신청 눌렀을 때
$("#LoanAlretBtn").click(function(){
	const bookLoanVO = {
		isbn : $("#isbn").val(),
		userName : $("#userName").val(),
	}
	const title = $("#title").val();
	
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
					let check = window.confirm("도서를 대출했습니다.\n마이페이지에서 확인하시겠습니까?");
					if(check){
						opener.location.href="/mypage/loan?userName="+userName;
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

