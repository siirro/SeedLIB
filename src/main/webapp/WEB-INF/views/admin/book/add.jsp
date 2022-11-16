<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../../temp/boot.jsp"></c:import>
</head>
<body>
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="text-center">
				<h1>BookAddPage</h1>
			</div>
			<div class="col-7">
				<form>
				  <div class="mb-3">
				    <label for="ipIsbn" class="form-label">ISBN</label>
				    <input type="text" name="isbn" class="form-control" id="ipIsbn">
				    <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
				  </div>
				  <div class="mb-3">
				    <label for="ipTitle" class="form-label">제목</label>
				    <input type="text" name="title" class="form-control" id="ipTitle">
				  </div>
				  <!-- <div class="mb-3 form-check">
				    <input type="checkbox" class="form-check-input" id="exampleCheck1">
				    <label class="form-check-label" for="exampleCheck1">Check me out</label>
				  </div> -->
				  <div class="mb-3">
				    <label for="ipWriter" class="form-label">저자</label>
				    <input type="text" name="writer" class="form-control" id="ipWriter">
				  </div>
				  <div class="mb-3">
				    <label for="ipPublisher" class="form-label">출판사</label>
				    <input type="text" name="publisher" class="form-control" id="ipPublisher">
				  </div>
				  <div class="mb-3">
				    <label for="ipbDate" class="form-label">출판연도</label>
				    <input type="text" name="bDate" class="form-control" id="ipbDate">
				  </div>
				  <!-- 체크값으로 넣어야할듯 -->
				  <div class="mb-3">
				    <label for="ipbDate" class="form-label">대출 가능 여부</label>
				    <input type="text" name="able" class="form-control" id="ipbDate">
				  </div>
				  <!-- 셀렉트로 -->
				  <div class="mb-3">
				    <label for="ipbDate" class="form-label">카테고리</label>
				    <input type="text" name="category" class="form-control" id="ipbDate">
				  </div>
				<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
				  <option selected>카테고리</option>
				  <option value="만화">만화</option>
				  <option value="소설">소설</option>
				  <option value="교양">교양</option>
				</select>
				  <div class="mb-3">
				    <label for="ipQuantlty" class="form-label">권수</label>
				    <input type="number" name="quantlty" class="form-control" id="ipQuantlty">
				  </div>
				  <div class="mb-3">
				    <label for="ipImage" class="form-label">이미지</label>
				    <input type="text" name="image" class="form-control" id="ipImage">
				  </div>
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>