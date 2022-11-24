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
	swal({
	  title: "${title}",
	  text: "${text}",
	  icon: "${icon}",
	  button: "${button}",
	})
	.then((value) => {
		  if (value) {
			  location.href="${url}";
		  }
	});
</script>
</body>
</html>