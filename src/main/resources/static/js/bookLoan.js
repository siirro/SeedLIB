

const libNumL = $(".libNumL").val();
const libNumM = $(".libNumM").val();

console.log(libNumL);
console.log(libNumM);
//-------------------------------------------------
//디테일 페이지에서 대출신청 눌렀을 때
$("#LoanAlretBtn").click(function(){
	const bookLoanVO = {
		userName : userName,
		isbn : isbn,
		libNum : libNumL
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
		libNum : libNumM
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
	
//-------------------------------------------------
//마이페이지에서 연장신청 눌렀을 때

//class
let isbnC = $(".isbnC").val();
console.log("isbnC : ", isbnC);

$(".ExAlretBtn").click(function(){
	
	const bookLoanVO = {
		isbn : isbnC,
		userName : userName
	}
	
	console.log("isbnCC", isbnC);
	console.log("isbn", isbn);
	console.log(bookLoanVO);
	
	$.ajax({
		type : "POST",
		url : "/book/extension",
		data:JSON.stringify(bookLoanVO),
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success:function(data){
			switch (data){
				case 3:
					alert("대출 연장은 총 3번까지 가능합니다.")
					break;
				case 1:
					let check = window.confirm("대출 연장을 완료했습니다.");
					if(check){
						location.reload(); 
                        opener.location.href="../";
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

