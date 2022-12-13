<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/sub.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<!-- header  -->
<c:import url="../temp/header2.jsp"></c:import>
</head>
<body>
    <div class="wrap">


        <div id="container" class="sub">
		
            <div class="sVisualWrap">
                <div class="sVisual">
                    <h3>공지사항</h3>
                </div>
            </div>
                    <div id="contentGroup">
                        
            <div id="lnbNav" class="navArea">

                <c:import url="../sideBar/EsideBar.jsp"></c:import>

              
            </div>
            
                        <div id="contentcore">
                            
            
            
            
            <div class="naviandtitle">
                <h3>공지사항</h3>
                <div class="navi"><a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 도서관소식 <i class="arrow"></i>공지사항</div>
                <div class="snsFarm">
                    <ul class="snsBtnArea clearfix">
                        <li>
                            <a href="#snsGroup" id="sns" title="SNS 공유하기" class="snsShare"><span class="blind">SNS 공유하기</span></a>
                            <div id="snsGroup" class="snsList clearfix">
                                <a href="#sns1" id="sns1" title="단축URL 복사하기" class="snsUrl" onclick="fnShorturlCopy();"><span class="blind">단축URL</span></a>
                                <a href="#sns2" id="sns2" title="QR코드 레이어팝업 열림" class="snsQr" data-tooltip="chartSns"><span class="blind">QR코드</span></a>
                                <a href="#sns3" id="sns3" onclick="javascript:fnShareKakaoStory('https://lib.anyang.go.kr/seoksu/menu/10157/bbs/20003/bbsPostRegist.do?searchCategory=&amp;currentPageNo=1&amp;postIdx=0'); return false;" title="카카오스토리에 공유하기 새창열림" class="snsStory"><span class="blind">카카오스토리</span></a>
                                <a href="#sns4" id="sns4" onclick="javascript:fnShareTwitter('https://lib.anyang.go.kr/seoksu/menu/10157/bbs/20003/bbsPostRegist.do?searchCategory=&amp;currentPageNo=1&amp;postIdx=0'); return false;" title="트위터에 공유하기 새창열림" class="snsTwitter"><span class="blind">트위터</span></a>
                                <a href="#sns5" id="sns5" onclick="javascript:fnShareFaceBook('https://lib.anyang.go.kr/seoksu/menu/10157/bbs/20003/bbsPostRegist.do?searchCategory=&amp;currentPageNo=1&amp;postIdx=0'); return false;" title="페이스북에 공유하기 새창열림" class="snsFacebook"><span class="blind">페이스북</span></a>
                            </div>
                        </li>
                        <li class="mobileHide"><a href="#print" id="pprint" title="인쇄" class="snsPrint" onclick="javascript:fnPrintPopup('seoksu'); return false;"><span class="blind">현재화면 프린트</span></a></li>
                    </ul>
                </div>
            </div>
            
          
                            <div id="content" class="contentArea">
                                
            <!--Forced tab Show Que-->
            <div class="ttabWrap">
                <div id="virtSelect"><a href="#script">탭메뉴</a></div>
                <ul id="ttab3" class="tnb clearfix">
                    <li class="ttabLast"></li>
                </ul>
            </div>
            <!--Forced tab Show Que-->
            
            <div id="popblackBG"></div>
                                <!--Real Contents Start-->
                              
                                <!-- 게시글 등록 -->
            
                                <form action="./add" name="registForm" id="registForm" method="post" enctype="multipart/form-data">
                                    <div class="boardWrap">
                                        <table class="board-view">
                                            <caption> 공지사항 </caption>
                                            <colgroup>
                                                <col style="width:20%">
                                                <col>
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th scope="row"><label for="title">제목</label></th>
                                                    <td><input type="text" id="title" name="title" class="form-ele full"></td>
                                                </tr>
                                                
                                                <tr>
                                                    <th scope="row">작성자</th>
                                                    <td><input type=text readonly="readonly" name="writer" value="${memberVO.name}"></td>
                                                </tr>
                                                
                                                 <tr>
                                                   <th scope="row">첨부파일</th>
                                                     <td>
                                                     <button type="button" id="fileAdd" class="btn-primary">파일 선택</button>
                                                     <div class="mb-3" id="fileResult"></div>
                                                    </td>
                                               </tr>
                                                    
                                                 </tbody>
                                             </table>
                                    
                                                
                                                
                                                <div class="textarea">
                                                   <textarea name="contents" title="질문 내용 입력" id="contents1"></textarea>
                                                </div>
                                               
                                    </div>
                                                
                                           
                                
                                <!-- //게시글 등록 -->
                                <div class="btnGroup">
                                    <a href="./list" id="listBtn" class="btn cncl">취소</a>
                                    <button type="submit" id="registBtn" class="btn themeBtn"> 등록</button>
                                </div>
                            </form>
                                <!-- End Of the Real Contents-->
                            </div>
                        </div>
                    </div>
                </div>


		<!-- footer -->
		<c:import url="../temp/footer.jsp"></c:import>
		  
		  
    </div>
    
	<script src="/js/fileManager.js"></script>
    
  <script type="text/javascript">
  $('#contents1').summernote({
        placeholder: 'Hello Bootstrap 5',
        tabsize: 4,
        height: 250
      });
      
    </script>
    
 
</body>
</html>