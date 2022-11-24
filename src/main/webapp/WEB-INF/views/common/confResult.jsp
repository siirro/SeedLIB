<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<script type="text/javascript">
	Swal.fire({
	   title: "${title}",
	   text: "${text}",
	   icon: "${icon}",
	   
	   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
	   confirmButtonColor: "#3085d6", // confrim 버튼 색깔 지정
	   cancelButtonColor: "#d33", // cancel 버튼 색깔 지정
	   confirmButtonText: "${confirmButtonText}", // confirm 버튼 텍스트 지정
	   cancelButtonText: "${cancelButtonText}", // cancel 버튼 텍스트 지정
	   
	   reverseButtons: true, // 버튼 순서 거꾸로
	   
	}).then(result => {
	   // 만약 Promise리턴을 받으면,
	   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
	   
	      Swal.fire("${title}", "${text}", "${icon}");
	   }
	});
</script>
</body>
</html>