<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/images/favicon.png">
    <title>문화행사 : 씨앗도서관 ☘</title>
    
    <style type="text/css">
    	.detail-flex {
    		display: flex;
    		justify-content: space-between;
    	}
    	
    	#ProAlretBtn{
    		padding-left: 20px;
    		padding-right: 20px;
    	}
    </style>
</head>

<body>
	<div id="wrap">
    	<c:import url="../temp/header.jsp"></c:import>

	    <div id="container" class="sub">
			
	        <div class="sVisualWrap">
	            <div class="sVisual">
	                <h3>통합검색</h3>
	            </div>
	        </div>
	        <div id="contentGroup">
		        <c:import url="../sideBar/BsideBar.jsp"></c:import>
		        
		        <div id="contentcore">
		            <div class="naviandtitle">
		                <h3>문화행사 신청</h3>
		                <div class="navi">
		                    <a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a>
		                    <i class="arrow"></i> 문화행사/참여 <i class="arrow"></i>문화행사 신청
		                </div>
		            </div>
		    
		            <div id="contents" class="contentArea">
		            	<input type="text" id="proNum" value="${vo.proNum}"> proNum : ${vo.proNum}<br> 
		            	<input type="text" id="userName" value="${member.userName}"> userName : ${member.userName} <br>
		            	
		            	<div id="contents" class="contentArea">
		            		<div class="detail-flex">
								<h4 class="btitle">${vo.proTitle}</h4>
								<button type="button" class="btn white small" id="ProAlretBtn" title="신청">신청</button>
							</div>
							<!-- 게시글 상세화면 -->
							<div class="boardWrap">
								<table class="board-view">
									<caption>문화행사 상세화면</caption>
									<colgroup>
										<col style="width:20%">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th scope="col">행사구분</th>
											<td>${vo.proCate}</td>
										</tr>
										<tr>
											<th scope="col">접수기간</th>
											<td>${vo.prsDate} ~ ${vo.prlDate} ${vo.recStatus}
											</td>
										</tr>
										<tr>
											<th scope="row">신청현황</th>
											<td>신청자수 : 833/${vo.total}명
												
											</td>
										</tr>
										<tr>
											<th scope="row">행사일정</th>
											<td>${vo.psDate} ~ ${vo.plDate}</td>
										</tr>
										<tr>
											<th scope="row">수강대상</th>
											<td>${vo.target}</td>
										</tr>
										<tr>
											<th scope="row">접수대상</th>
											<td>씨앗도서관 회원</td>
										</tr>
										<tr>
											<th scope="row">행사장소</th>
											<td>${vo.proPlace}</td>
										</tr>
										<tr>
											<th scope="row">강사</th>
											<td>${vo.proTeacher}</td>
										</tr>
									</tbody>	
								
										<tr>
											<td colspan="2" class="content">
												<p class="0"><span style="font-size:16px;"><span style="color:#c0392b;"><u><strong>※ 선착순이 아니므로 아래 내용 꼭 확인하시고 천천히 신청 부탁드립니다.</strong></u></span></span><br>
												<br><br>
												<span style="font-size:16px;"><strong>신청 시간/순서와 당첨 여부는 상관 없습니다<br></strong>
													<p class="0"><br>
													<span style="color:#8e44ad;"><span style="font-size:14px;"><strong>※ 신청정보는<br>
													마이페이지 <span lang="EN-US" style="letter-spacing:0pt">- </span>문화행사신청조회&nbsp;&nbsp;- 에서 직접 수정 가능합니다.</strong></span></span></p>
													<p class="0">&nbsp;</p>
													<p class="0"><span style="font-size:14px;"><span style="font-family:맑은 고딕;">${vo.proContents}<span lang="EN-US" style="letter-spacing:0pt">.</span></span></span></p>
												</span>
												</p>
											</td>
										</tr>
									</table>	
					            </div>
					        </div>
					    </div>
					</div>
				</div>
				</div>
			<c:import url="../temp/footer.jsp"></c:import> 
		</div>
	<script type="text/javascript" src="/js/program.js"></script>
</body>
</html>