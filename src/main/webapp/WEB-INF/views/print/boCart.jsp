<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="/images/favicon.png">
    <title>제본 서비스 : 씨앗도서관 ☘️</title>
	<link rel="stylesheet" href="/css/admin/modal.css">
	<link rel="stylesheet" href="/css/admin/adcommon.css">
	<link rel="stylesheet" href="/css/admin/modalutil.css">
	<!-- header -->
	<c:import url="../temp/header.jsp"></c:import>
	<script defer src="/js/admin/modal.js"></script>
</head>
<body>
	<div id="container" class="sub">	
		<div class="sVisualWrap">
			<div class="sVisual">
				<h3>제본 서비스</h3>
			</div>
		</div>
		<div id="contentGroup">
			<c:import url="../sideBar/FsideBar.jsp"></c:import>
			<div id="contentcore">
				<div class="naviandtitle">
					<h3>제본 서비스</h3>
					<div class="navi">
						<a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i>마이페이지<i class="arrow"></i>제본 서비스
					</div>
				</div>
				<div id="contents" class="contentArea">
					<div id="popblackBG"></div>
					<!--Real Contents Start-->

					<!-- 바구니 제본 신청 서비스 안내 -->
					<br>
					<br>
					<!-- 테이블 시작 -->
					<div class="boardWrap">
						<table class="board-list">
							<thead>
								<tr>
									<th scope="col" class="mobileHide">번호</th>
									<th scope="col">도서 제목</th>
									<th scope="col" class="mobileHide">제본페이지수</th>
									<th scope="col">결제상태</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${not empty list}">
										<c:forEach items="${list.bookPrintVOs}" var="boPrintVO" varStatus="status">
											<input type="hidden" value="${boPrintVO.caNum}">
											<tr>
											   <td>${status.count}</td>
											   <td><a href="../book/detail?isbn=${boPrintVO.bookVO.isbn}">${boPrintVO.bookVO.title}</a></td>
											   <td>${boPrintVO.caTtPage}</td>
											   <td>${boPrintVO.caStatus}</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					</div>
				</div>
				<!-- End Of the Real Contents 2 -->
			</div>
			<form action="../print/boAdCart" id="postFrm" class="pFrm"  method="post">
				<!-- 팝업 : 우편복사 신청 -->
				<div class="layer_popup_wrap layer_popup_wrap3" data-layer="layer_post_copy" style="display:none" id="grpBtns_apply">
					<div class="layer_popup basket_layer">
						<div class="popup_header" style="background-image: linear-gradient(to right, #9be15d, #00e3ae)">
							<h1 class="popup_title">복사 결제</h1>
						</div>
						<div class="popup_contents">
							<div class="post_copy_wrap">
								<form action="#">
									<fieldset>
										<!-- 신청정보 입력 -->
										<div class="post_info_wrap">
											<div class="btn_wrap">
												<button type="button" class="btn" style="background: #02d4498f">신청 정보 입력</button>
											</div>
											<div class="inner">
												<!-- [D]PC인 경우 -->
												<div class="ucmy8_modify_wrap basktet_table">
													<table>
														<caption><span class="ir_text">복사 신청한 도서 정보</span></caption>
														<colgroup>
															<col class="col2" style="width: 25%;">
															<col class="col3">
															<col class="col3" style="width: 10%;">
															<col>
															<col>
															<col>
															<col>
															<col>
														</colgroup>
														<thead>
															<tr>
																<th scope="col">자료명</th>
																<th scope="col">발행 년도</th>
																<th scope="col">청구 기호</th>
																<th scope="col">종류</th>
																<th scope="col">인쇄 방식</th>
																<th scope="col">시작 페이지</th>
																<th scope="col">끝 페이지</th>
																<th scope="col">총 페이지</th>
															</tr>
														</thead>
														<tbody id="contents_pc">
															<tr>
																<td>
																	<span id="prinBook">${bookVO.title}</span>
																</td>
																<td>
																	<span>${bookVO.bookDate}</span>
																</td>
																<td>
																	<input type="hidden" id="ipIsbn" name="isbn" value="${bookVO.isbn}">
																	<span id="prinIsbn">${bookVO.isbn}</span>
																</td>
																<td>
																	<div class="input_select_wrap2">
																		<select title="복사 색상 선택" name="caColor" id="prColor">
																			<option value="N">흑백</option>
																			<option value="Y">컬러</option>
																		</select>
																	</div>
																</td>
																<td>
																	<div class="input_select_wrap2">
																		<select title="용지크기 선택" name="caSize" id="prSize">
																			<option value="A4">A4</option>
																			<option value="B5">B4</option>
																		</select>
																	</div>
																</td>
																<td>
																	<div class="input_text_wrap">
																		<label for="copyNum">
																			<span class="ir_text">복사 시작 페이지</span>
																		</label>
																		<input type="text" id="ipCaStPage" name="caStPage" class="input_text" style="border: 1px solid #fff0" aria-label="복사 시작 페이지" placeholder="시작 쪽">
																	</div>
																</td>
																<td>
																	<div class="input_text_wrap">
																		<label for="copyNum">
																			<span class="ir_text">복사 끝 페이지</span>
																		</label>
																		<input type="text" id="ipCaLsPage" name="caLsPage" class="input_text" style="border: 1px solid #fff0" aria-label="복사 끝 페이지" placeholder="끝 쪽">
																	</div>
																</td>
																<td>
																	<div class="input_text_wrap">
																		<label for="copyNum">
																			<span class="ir_text">복사 총 페이지</span>
																		</label>
																		<input type="text" readonly id="ipCaTtPage" name="caTtPage" class="input_text" style="border: 1px solid #fff0" aria-label="복사 총 페이지" placeholder="총 페이지">
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
												<div 
													id="ipResult"
													style="margin-top: 1;
														   margin-bottom: 1;
														   color: red;"	
												>
												</div>
												<p class="mt5">※ 용지 크기 선택 시 확대, 축소 등은 별도 요청해야 함.</p>
												<p>※ 양면, 단면 비용 동일</p>
												<div class="post_copy_wrap">
													<table class="tbl_post_copy">
														<caption class="ir_text">제본여부선택</caption>
														<colgroup>
															<col class="col1">
															<col>
														</colgroup>
														<tbody>
															<tr>
																<th scope="row">
																	<span>제본 여부 선택</span>
																</th>
																<td>
																	<div class="input_select_wrap2 input_txtSel_wrap">
																		<select title="우편복사 수령방법" id="binding">
																			<option value="N">제본 하지 않음</option>
																			<option value="Y">스프링 제본함</option>
																		</select>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
										<!-- 입금 정보 -->
										<div style="display:flex" id="order">
											<div class="post_info_wrap">
												<div class="btn_wrap">
													<button type="button" style="background: #02d4498f" class="btn">결제 내역</button>
												</div>
												<div class="inner">
													<ul class="post_info_list">
														<li>
															<strong class="tit">복사 요금(복사면 단위)</strong>
															<table class="tbl_copy_charge">
																<caption><span class="ir_text">복사 서비스 복사요금(면당)</span></caption>
																<colgroup>
																	<col>
																	<col>
																	<col>
																	<col>
																	<col>
																	<col>
																</colgroup>
																<thead>
																	<tr>
																		<th scope="col">제본</th>
																		<th scope="col">총 페이지</th>
																		<th scope="col">1장 가격</th>
																		<th scope="col">총페이지 가격</th>
																		<th scope="col">제본 가격</th>
																		<th scope="col">결제 금액</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td class="title"><span>${bookVO.title}</span></td>
																		<td id="tdTtp"><span></span></td>
																		<td id="tdPa"><span></span></td>
																		<td id="tdTtpPrice"><span></span></td>
																		<td id="tdPrinPay"><span></span></td>
																		<td id="tdTtPay"><span id="prAmount"></span></td>
																		<input type="hidden" name="caAmount" id="ipCaAmount">
																	</tr>
																</tbody>
															</table>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<input type="hidden" id="prinImp" value="${imp}">
									</fieldset>
									<!-- 결제 버튼 -->
									<div class="btn_wrap center mb30">
										<button type="button" id="payBtn" class="btn btn_apply" style="background-image: linear-gradient(to right, #9be15d, #00e3ae)">결제</button>
									</div>
								</form>
							</div>
						</div>
						<button type="button" class="btn_close closeLayer" id="close"><span class="sp">닫기</span></button>
					</div>
				</div>
			</form>
		</div>
	</div>		
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- footer -->
</body>
</html>