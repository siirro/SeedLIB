<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    <link rel="stylesheet" href="/css/book/shelf.css">
    
    <script type="text/javascript" defer src="/js/common.js"></script>
    
	<title>책꽂이 : 씨앗도서관 ☘️ </title>
</head>

<c:import url="../../temp/header.jsp"></c:import>

<body>
	<div class = "vsc-initialized">
		<div class="container" class="sub">
			<div class="sVisualWrap">
				<div class="sVisual">
					<h3>통합검색</h3>
				</div>
			</div>
			
			<div id="contentGroup">
				<!-- 사이드바 -->
		       <c:import url="../../sideBar/AsideBar.jsp"></c:import>
	
				<!-- Main -->
				<div id="contentcore">
					<!-- 상단 메뉴 -->
					<div class="naviandtitle">
						<h3>책꽂이</h3>
						
						<div class="navi">
							<a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
							<i class="arrow"></i>책꽂이
							<i class="arrow"></i>새 책 저장
						</div>
					</div>
					
					<div id="contents" class="contentArea">
									
						<section id="bookShelfSection">
							<div class="sub-title cf box">
								<h2 id="divTitle" class="fl">책꽂이</h2>
							</div>
							
							<div id="divContent">
								<form name="form" action="shelf/addBook" method="post">
									<input type="hidden" name="isbn" value="CAT000001370034">	
									<input type="hidden" name="detailUrl" value="/book/detail?isbn=">
									
									<div class="writeTable">
										<table>
											<caption>책꽂이 저장</caption>
											
											<tbody>
												<tr>
													<th><label for="list_id">담을 곳</label></th>
													<td>
														<select id="list_id" name="list_id" class="selectBox1">
															<c:forEach items="${list}" var="shelf">															
																<option value="${shelf.shNum}">${shelf.shName}</option>
															</c:forEach>
														</select>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									
									<div class="buttons">
										<a href="../book/shelf/newshelf" title="새 책꽂이 만들기">새로운 책꽂이</a>
										<input type="submit" value="저장" title="저장" alt="저장">
										<a href="javascript:window.close();" title="닫기">닫기</a>
									</div>
								</form>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>