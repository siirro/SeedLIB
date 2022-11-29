<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="/images/favicon.png">
    <title>소장 도서 기증 : 씨앗도서관 ☘️</title>
	<link rel="stylesheet" href="/css/admin/modal.css">
	<link rel="stylesheet" href="/css/admin/modalutil.css">
	<!-- header -->
	<c:import url="../../temp/header.jsp"></c:import>
	<script defer src="/js/admin/modal.js"></script>
</head>
<body>
	<div id="container" class="sub">	
		<div class="sVisualWrap">
			<div class="sVisual">
				<h3>바구니</h3>
			</div>
		</div>
		<div id="contentGroup">
			<div id="lnbNav" class="navArea">
				<h2> 마이페이지 </h2>
				<ul id="lnb" class="lnb"> 
					<li id="lnb6_1"><a href="/intro/menu/10074/program/30023/mypage/myInfo.do" class="current">나의정보</a> </li> 
					<li id="lnb6_2"><a href="/intro/menu/10076/program/30024/mypage/loanStatusList.do" class="on">도서이용내역</a> 
					<ul class="MkTab submenu" style="display: none;"> 
						<li id="lnb6_2_1"><a href="/intro/menu/10076/program/30024/mypage/loanStatusList.do">대출현황</a> </li> 
						<li id="lnb6_2_2"><a href="/intro/menu/10077/program/30025/mypage/reservationStatusList.do">예약현황</a> </li> 
						<li id="lnb6_2_3"><a href="/intro/menu/10078/program/30026/mypage/loanHistoryList.do">대출이력</a> </li> 
					</ul>
					</li> 
					<li id="lnb6_4"><a href="/intro/menu/10083/program/30027/mypage/libraryOneLillStatusList.do" class="on">상호대차조회</a> 
					<ul class="MkTab submenu" style="display: none;"> 
						<li id="lnb6_4_1"><a href="/intro/menu/10083/program/30027/mypage/libraryOneLillStatusList.do">신청현황</a> </li> 
						<li id="lnb6_4_2"><a href="/intro/menu/10084/program/30028/mypage/libraryOneLillHistoryList.do">상호대차이력</a> </li> 
					</ul>
					</li> 
					<li id="lnb6_5"><a href="/intro/menu/10085/program/30029/mypage/bookcaseList.do">관심도서목록</a> </li> 
					<li id="lnb6_6"><a href="/intro/menu/10086/program/30030/mypage/myPopularBookList.do">추천도서목록</a> </li> 
					<li id="lnb6_7"><a href="/intro/menu/10087/program/30008/mypage/hopeBookList.do">희망도서신청조회</a> </li> 
					<li id="lnb6_8"><a href="/intro/menu/10088/program/30015/mypage/lectureApplyList.do">문화행사신청조회</a> </li> 
				</ul>
			</div>
			<div id="contentcore">
				<div class="naviandtitle">
					<h3>바구니</h3>
					<div class="navi">
						<a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i>마이페이지<i class="arrow"></i>바구니
					</div>
				</div>
				<div id="contents" class="contentArea">
					<div id="popblackBG"></div>
					<!--Real Contents Start-->

					<!-- 바구니 제본 신청 서비스 안내 -->
					<h5 class="stitle">🌱바구니 자료 신청 안내</h5>
					<div class="descBox mt10 fsize16">
						<ul class="clearfix">
							<li>① 신청은 1회 최대 5책을 선택하여 신청할 수 있습니다.</li>
							<li>② 바구니는 신청을 위해 임시보관하며, 자료는 일주일 후 자동 삭제됩니다.</li>
							</li>
						</ul>
					</div>
					<br>
					<br>
					<!-- 테이블 시작 -->
					<div class="boardWrap">
						<table class="board-list">
							<caption>묻고답하기 목록</caption>
							<colgroup>
								<col class="no mobileHide">
								<col class="no mobileHide">
								<col>
								<col style="width: 200px;" class="date mobileHide">
								<col style="width:100px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="mobileHide">선택</th>
									<th scope="col" class="mobileHide">번호</th>
									<th scope="col">도서 제목</th>
									<th scope="col" class="mobileHide">제본페이지수</th>
									<th scope="col">결제상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="boPrintVO">
									<tr>
									   <td><input type="checkbox"></td>
									   <td>${boPrintVO.caNum}</td>
									   <td><a href="./detail?caNum=${boPrintVO.caNum}">${boPrintVO.isbn}</a></td>
									   <td>${boPrintVO.caTtPage}</td>
									   <td>${boPrintVO.caStatus}</td>
									</tr>   
							  </c:forEach>
							</tbody>
						</table>
					</div>

					<dl class="linkBox">
						<dt class="txtArea">소장도서기증 또는 조회를 하려면 버튼을 누르세요</dt>
						<dd class="btnArea">
							<a class="btn" href="./delete">선택삭제하기</a> 
							<a class="btn write themeBtn" id="modal-open">선택결제하기</a>
						</dd>
					</dl>
				</div>
				<!-- End Of the Real Contents 2 -->
			</div>
			<form id="postFrm" name="postFrm" class="pFrm"  method="post">
				<!-- 팝업 : 우편복사 신청 -->
				<div class="layer_popup_wrap layer_popup_wrap3" data-layer="layer_post_copy" style="display:flex" id="grpBtns_apply">
					<div class="layer_popup basket_layer">
						<div class="popup_header">
							<h1 class="popup_title">우편복사 신청</h1>
						</div>
						<div class="popup_contents">
							<div class="post_copy_wrap">
								<form action="#">
									<fieldset>
										<legend>복사 신청</legend>
										<div class="post_info_wrap">
											<div class="btn_wrap">
												<button type="button" class="btn">우편복사신청 안내</button>
											</div>
											<div class="inner">
												<ul class="post_info_list">
													<li>도서관에 방문하지 못할 경우 인터넷으로  복사물을 우편으로 제공받는 서비스</li>
													<li>대상자료: 일반도서 및 연속 간행물, 학위논문
														<p class="mark">※ 비도서, 신문, 마이크로필름, 특수자료, 귀중본자료 제외</p>
													</li>
													<li>신청책수: 1인 5책 이하(1일 1건 기준) 단, 서고자료신청대 양장족보는 1인 3종 이하
														<p class="mark">※ 접수완료 및 발송: 평일(주말 및 휴관일 제외)</p>
													</li>
												</ul>
												<p class="asterisk"><span class="point">* 저작권법에 의거하여 부분복제(1/3)만 가능</span></p>
											</div>
										</div>
										<!-- //우편복사신청 안내 -->
										<!-- 입금 정보 -->
										<div class="post_info_wrap">
											<div class="btn_wrap">
												<button type="button" class="btn">입금 정보</button>
											</div>
											<div class="inner">
												<ul class="post_info_list">
													<li>
														<p>복사서비스: 복사요금</p>
														<strong class="tit">복사 요금(복사면 단위)</strong>
														<table class="tbl_copy_charge">
															<caption><span class="ir_text">복사 서비스 복사요금(면당)</span></caption>
															<colgroup>
																<col>
																<col>
																<col>
																<col>
																<col>
															</colgroup>
															<thead>
																<tr>
																	<th scope="col"></th>
																	<th scope="col">B5</th>
																	<th scope="col">A4</th>
																	<th scope="col">B4</th>
																	<th scope="col">A3</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="title"><span>흑백</span></td>
																	<td><span>60원</span></td>
																	<td><span>70원</span></td>
																	<td><span>90원</span></td>
																	<td><span>120원</span></td>
																</tr>
																<tr>
																	<td class="title"><span>칼라</span></td>
																	<td><span>400원</span></td>
																	<td><span>500원</span></td>
																	<td><span>800원</span></td>
																	<td><span>1,000원</span></td>
																</tr>
																<tr>
																	<td class="title"><span>고서</span></td>
																	<td><span>100원</span></td>
																	<td><span>120원</span></td>
																	<td><span>150원</span></td>
																	<td><span>160원</span></td>
																</tr>
															</tbody>
														</table>
													</li>
													<li>
														<p>입금 문의전화 : (복사실) 02-xxxx-xxxx</p>
													</li>
												</ul>
											</div>
										</div>
										<!-- //입금 정보 -->
										<!-- 신청정보 입력 -->
										<div class="post_info_wrap">
											<div class="btn_wrap">
												<button type="button" class="btn">신청 정보 입력</button>
											</div>
											<div class="inner">
												<div class="notice_box">
													<!-- <strong class="notice_title">우편복사 범위</strong> -->
													<ul>
														<li><span class="as_is_txt">※ 저작권법에 의거하여 부분 복제 (전체 페이지수의 1/3 범위 이내) 가능</span></li>
														<li>- 전체 페이지수 확인 : 홈페이지 자료 검색 > 자료 상세화면 > 형태사항 참고 <a href="#none" class="btn_layer" data-layer="info_img_pop" data-img-src="/resource/templete/nl/img/sub/basket_ex_img.jpg" data-focus="img_ex_pop"><font color="blue">(예시보기)</font></a></li>
														<li>- 복사범위 기입 예시 : (연속 페이지) 1-30, (부분 페이지) 25, 30-45, 110</li>
													</ul>
													<!-- <span class="notice">(복사면 기입 방법 &gt; 연속페이지: 1-30 / 부분페이지: 1,25,39,56 or 목차 처음부터 1/3까지)</span> -->
												</div>
												<!-- [D]PC인 경우 -->
												<div class="ucmy8_modify_wrap basktet_table">
												<table>
													<caption><span class="ir_text">복사 신청한 도서 정보</span></caption>
													<colgroup>
														<col class="col2">
														<col class="col3">
														<col class="col3">
														<col>
														<col>
														<col>
														<col class="col2">
													</colgroup>
													<thead>
														<tr>
															<th scope="col">자료명</th>
															<th scope="col">발행 년도</th>
															<th scope="col">청구 기호</th>
															<th scope="col">종류</th>
															<th scope="col">인쇄 방식</th>
															<th scope="col">용지 크기</th>
															<th scope="col">복사 페이지</th>
														</tr>
													</thead>
													<tbody id="contents_pc">
														<tr>
															<td>
																<span></span>
															</td>
															<td>
																<div class="input_select_wrap2">
																	<select title="복사 색상 선택" name="" id="">
																		<option value="N">흑백</option>
																		<option value="Y">컬러</option>
																	</select>
																</div>
															</td>
															<td>
																<div class="input_select_wrap2">
																	<select title="용지크기 선택" name="" id="">
																		<option value="A4">A4</option>
																		<option value="A3">A3</option>
																		<option value="B5">B5</option>
																		<option value="B4">B4</option>
																	</select>
																</div>
															</td>
															<td>
																<div class="input_text_wrap">
																	<label for="copyNum">
																		<span class="ir_text">복사면 기입</span>
																	</label>
																</div>
																<input type="text" id="" name="" class="input_text" aria-label="복사면 기입" placeholder="복사 페이지를 입력해주세요.">
															</td>
														</tr>
													</tbody>
												</table>
												</div>
												<!-- [D]MO인 경우 -->
												<div class="ucmy8_modify_wrap ucmy8_mobile_modify_wrap">
													<ul class="ucmy8_list" id="contents_mo">
													</ul>
												</div>
												<p class="mt5">※ 용지 크기 선택 시 확대, 축소 등은 별도 요청해야 함.</p>
												<p>※ 양면, 단면 비용 동일</p>
												<p></p>
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
		<!-- 																<select title="우편복사 수령방법" id="binding" name="binding" onchange="fn_binding(this);"> -->
																		<select title="우편복사 수령방법" id="binding" name="binding">
																			<!-- [D] 수정 전 선택된 옵션값 selected -->
																			<option value="N">제본 하지 않음</option>
																			<option value="Y">스프링 제본함</option>
																		</select>
																	</div>
		<!-- 															<div class="input_text_wrap input_selTxt_wrap" id="inputBinding" style="display:none;"> -->
		<!-- 																<input type="text" id="bindingDesc" name="bindingDesc" class="input_text" aria-label="제본 요청사항" required=""> -->
		<!-- 																<label for="bindingDesc" class="placeholder">제본 요청사항을 입력해주세요.</label>	 -->
		<!-- 															</div> -->
		<!-- 															<p class="policy_agree" id="bindingEx" style="display:none;">ex. 신청자료 모두 통합하여 한권으로 제본 요청</p>			 -->
																</td>
															</tr>
														</tbody>
													</table>
												</div>
												<p class="mt5">※ 스프링 제본 요금 : (50매 이내) 2,000원, (50~100매) 3,000원, (100매 이상) 4,000원</p>
		
												<div class="post_copy_wrap">
													<!-- 우편복사 수령 정보 -->
													<table class="tbl_post_copy">
														<caption class="ir_text">우편복사 수령 정보</caption>
														<colgroup>
															<col class="col1">
															<col>
														</colgroup>
														<tbody>
															<tr>
																<th scope="row"><label>개인정보 수집동의</label></th>
																<td>
																	<p class="mb5">&lt;개인정보 수집 및 이용에 대한 안내&gt;</p>
																	<div class="privacy_agree_wrap mt20">
																		<div class="privacy_agree_inner">
																			<ul class="privacy_agree_list">
																				<li>1. 수집 및 이용 목적 : 복사 서비스 제공을 위한 업무처리</li>
																			</ul>
																			<ul class="privacy_agree_list">
																				<li>2. 수집하는 개인정보 항목</li>
																				<li>&nbsp;&nbsp;(필수항목) 성명, 아이디, 휴대폰번호, 이메일, 도서정보(청구기호, 책제목 등)</li>
																				<li>&nbsp;&nbsp;(선택항목) 전달사항</li>
																			</ul>
																			<ul class="privacy_agree_list">
																				<li>3. 보유 및 이용기간 : <b class="txt_red" style="font-size: 20px">1년</b></li>
																			</ul>
																			<ul class="privacy_agree_list">
																				<li>4. 동의 거부권 및 거부에 따른 불이익 : 신청자는 개인정보 수집 및 이용에 거부할 권리가 있습니다. 단, 필수항목 동의를 거부할 경우 우편복사 서비스 이용이 불가능합니다.</li>
																			</ul>
																			<br/>
																			<div class="privacy_agree" style="text-align:left;">
																				<p style="position : relative;">
																					<b><span class="txt_red">(필수항목)</span>개인정보 수집 및 이용</b>에 동의합니다.
																					&nbsp;&nbsp;&nbsp;
																					<input type="checkbox" id="agree01" name="agree1" value="Y" class="normal_input" />
																					<label for="agree01">동의</label>
																					<input type="checkbox" id="agree03" name="agree1" value="N" class="normal_input" />
																					<label for="agree03">미동의</label>
																				</p>
																				<p style="position : relative;">
																					<b><span class="txt_red">(선택항목)</span>개인정보 수집 및 이용</b>에 동의합니다.
																					&nbsp;&nbsp;&nbsp;
																					<input type="checkbox" id="agree02" name="agree2" value="Y" class="normal_input" />
																					<label for="agree02">동의</label>
																					<input type="checkbox" id="agree04" name="agree2" value="N" class="normal_input" />
																					<label for="agree04">미동의</label>
																				</p>
																			</div>
																		</div>
																	</div>
																</td>
															</tr>
															<tr>
																<th scope="row">
																	<span>우편복사 수령방법</span>
		
																</th>
																<td>
																	<div class="input_select_wrap2">
																		<select title="우편복사 수령방법" id="postmethod" name="postmethod" onchange="fn_faxDisplay(this);">
																			<!-- [D] 수정 전 선택된 옵션값 selected -->
																			<option value="general">일반배송</option>
																			<option value="fast">빠른배송</option>
																			<option value="fax">FAX</option>
																		</select>
																	</div>
																	<div class="input_text_wrap input_phone_wrap" id="inputFax" style="display:none;">
																		<input type="text" id="faxTel" name="faxTel" class="input_text" aria-label="팩스번호" required="" />
																		<label for="faxTel" class="placeholder">입력예: 021234567</label>
																	</div>
																	<p class="notice_text" id="mobile_fax" style="display:none;">※ 모바일 팩스 전송 불가</p>
																</td>
															</tr>
															<tr>
																<th scope="row">
																	<label for="hpTel">휴대폰번호</label>
																</th>
																<td>
																	<div class="input_text_wrap input_phone_wrap">
																		<input type="text" id="hpTel" name="hpTel" class="input_text" aria-label="휴대폰번호" required="" />
																		<label for="hpTel" class="placeholder">입력예: 01012345678</label>
																	</div>
																	<p class="notice_text">*입력 예 : 01012345678</p>
		
																	<span class="input_check_wrap">
																		<input type="checkbox" id="smsApply" name="smsApply" class="input_check" checked />
																		<label for="smsApply">접수내역 알림 신청</label>
																	</span>
																</td>
															</tr>
															<tr>
																<th scope="row">
																	<label for="post1st">배송지</label>
																</th>
																<td>
																	<input type="hidden" id="addressApply" name="addressApply" value="" />
																	<div class="address_wrap">
																		<div class="post_wrap">
																			<a href="#" class="btn_post" title="새창열림" onclick="ItgJs.fn_schAddr();fn_addressValue();">우편번호 검색</a>
																			<div class="input_text_wrap">
																				<input type="text" name="post1st" id="post1st" class="input_text" aria-label="우편번호" required="" readonly="" />
																			</div>
																		</div>
																		<div class="input_text_wrap">
																			<input type="text" name="addr1st1" id="addr1st1" class="input_text" aria-label="기본주소" required="" readonly="" />
																			<label for="addr1st1"><span class="ir_text">우편번호 검색을 통해 기본주소 입력</span></label>
																		</div>
																		<div class="input_text_wrap">
																			<label for="addr1st2" class="ir_text">상세주소</label>
																			<input type="text" name="addr1st2" id="addr1st2" class="input_text" aria-label="상세주소" required="" />
																		</div>
																	</div>
																</td>
															</tr>
															<tr>
																<th scope="row">
																	<label for="etc">기타 전달사항 <span class="option_item">(선택)</span></label>
																</th>
																<td>
																	<div class="input_text_wrap">
																		<input type="text" id="etc" name="etc" class="input_text" aria-label="기타 전달사항" />
																	</div>
																</td>
															</tr> <!-- //우편복사 수령 정보 -->
														</tbody>
													</table>
												</div>
											</div>
										</div>
										<!-- //신청정보 입력 -->
										<div class="btn_wrap center mb30">
											<button type="submit" class="btn btn_apply" onclick="javascript:goPostApply();return false;">신청</button>
										</div>
									</fieldset>
								</form>
							</div>
						</div>
						<button type="button" class="btn_close closeLayer"><span class="sp">닫기</span></button>
					</div>
				</div>
				<!-- //팝업 : 우편복사 신청 -->
		
			</form>
		</div>
	</div>		
<!-- footer -->
<c:import url="../../temp/footer.jsp"></c:import>
<!-- footer -->
</body>
</html>