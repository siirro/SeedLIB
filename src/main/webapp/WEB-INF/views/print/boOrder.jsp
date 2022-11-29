<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/admin/modal.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>Book Order Page</h1>
	<button type="button" id="modal-open">결제하기</button>
	<div class="container">
	  <div class="popup-wrap" id="popup">
	    <div class="popup">
	      <div class="popup-head">
	          <span class="head-title">MuziMuzi</span>
	      </div>
	      <div class="popup-body">
	        <div class="body-content">
	          <div class="body-titlebox">
	            <h1>Confirm Modal</h1>
	          </div>
	          <div class="body-contentbox">
	            <p> 모달 내용칸 </p>
	          </div>
	        </div>
	      </div>
	      <div class="popup-foot">
	        <span class="pop-btn confirm" id="confirm">확인</span>
	        <span class="pop-btn close" id="close">창 닫기</span>
	      </div>
	    </div>
	</div>
	</div>
<script type="text/javascript">
	$("#confirm").click(function(){
		modalClose(); // 모달 닫기 함수 호출
		
		// 컨펌 이벤트 처리
	});
	$("#modal-open").click(function(){   
		console.log("버튼클릭!")     
		$("#popup").css('display','flex').hide().fadeIn();
		// 팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
	});
	$("#close").click(function(){
		modalClose(); // 모달 닫기 함수 호출
	});
	function modalClose(){
		$("#popup").fadeOut(); // 페이드아웃 효과
	};
</script>
</body>
</html>