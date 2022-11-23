<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/images/favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>

    .pagination{
        display: flex;
        flex-direction: column;
        margin-bottom: 40px;
        align-items: center;
    }

    .pagDiv{
        width: 700px;
    }

    
    .pageList {
        list-style:none;
        padding-left:0px;
        width: 500px;
        margin-left: auto;
        /* margin-right: auto; */
    }

    .pageSet{
        float: left;
        margin-left: 10px;
        margin-right: 10px;
    }

    #pageNext{
        width: 30px;
        /* background-color: #77af9c;
        color: #d7fff1; */
        color: #0cc086;

    }

    #pagePre{
        width: 30px;
        color: #0cc086;
    }

    .aplBtn{
        position: absolute;
        right: 0;
        bottom: 0;
        padding: 3px 15px;
        background-color: #06e3ab;
        color: #f3fefa;
    }

</style>

<title>희망 도서 신청</title>
</head>
<body>
<!-- header -->
    <c:import url="../temp/header.jsp"></c:import>
<div id="container" class="sub">	
<div class="sVisualWrap">
<div class="sVisual">
    <h3>신청하기</h3>
</div>
</div>
<div id="contentGroup">
   <c:import url="../sideBar/BsideBar.jsp"></c:import>


<div id="contentcore">
<div class="naviandtitle">
<h3>신청하기</h3>
<div class="navi"><a href="../" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 문화참여 <i class="arrow"></i>희망도서신청<i class="arrow"></i>신청하기
</div>
</div>    
<div id="contents" class="contentArea">
            
<!--Forced tab Show Que-->
<div class="ttabWrap" style="display: block;">
    <div id="virtSelect" style="display: none;"><a href="#script">탭메뉴</a></div>
    <ul id="ttab3" class="tnb clearfix"> 
        <li id="tnb1_7_1"><a href="/hope/hopeInfo" style="min-width: 479px;">신청안내</a> </li> 
        <li id="tnb1_7_2" class="choiced"><a href="/hope/setHope" class="current" title="선택된 탭" style="min-width: 479px;">신청하기</a> </li> 
    </ul>
</div>
<!--Forced tab Show Que-->
<div>
    <!--Real Contents Start-->
    <!-- 서치영역 -->
    <form id="searchForm" name="searchForm" method="get">
    <div class="searchWrap">
        <div class="searchFormWeb">
            <div class="searchToparea">
                <div class="searchBardiv hope">
                    <div class="searchInputbox">
                        <input hidden="hidden">
                        <input type="text" id="query" name="query" title="제목을 입력하세요." onkeyup="enterkey()" value="" placeholder="제목을 입력하세요." autocomplete="off">
                        <input type="button" id="searchBtn" title="검색" class="unifiedSearchbtn">
                    </div>
                    <a href="" class="btn input" id="selfApply" title="직접입력 설정">직접입력</a>
                </div>
                <ul class="dot-list clearfix mt05 mb05">
                    <li>도서명, 저자명, 발행처, ISBN 을 입력하여 도서를 검색하세요.</li>
                    <li>포털사이트 도서 검색을 통해 비치를 희망하는 도서를 검색하고 신청할 수 있습니다.</li>
                    <li>검색결과가 나오지 않을 경우, [직접입력] 을 클릭하여 신청하실 수 있습니다.</li>
                </ul>
            </div>
        </div>
    </div>
        <!-- 서치결과영역 -->
        <div class="searchResultWrap">
            <div class="result_box">
                <div class="listSetting">
                    <div class="result_screen">
                    </div>
                </div>
            </div>
        </div>
        <div class="bookList listViewStyle hope">
            <ul class="listWrap">
            </ul>
        </div>						
            </form>
            <!-- 서치영역 끝 -->
            <!-- 페이징 -->
            <div class="pagingWrap">
                <div class="pagination">
                </div>
            </div>
            <!-- 페이징 끝-->

</div>
    <div>
        <form id="registForm" name="registForm" action-="setHope" method="post">
                            <div><h4 class="htitle">신청자 정보</h4></div>
                            <div class="boardWrap">
                                <table class="board-view">
                                    <caption>희망도서 신청자 정보</caption>
                                    <colgroup>
                                        <col style="width:20%">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th scope="row">신청자명</th>
                                            <td><input type="text" id="userName" name="userName" value="id1" readonly></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">휴대폰번호</th>
                                            <td><input type="text" name="phone" value="01000000000" readonly></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">이메일</th>
                                            <td><input type="text" name="email" value="00000@mail.com" readonly></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
    
                            <div class="boardWrap mt10">
                                <table class="board-view">
                                    <caption>희망도서 정보</caption>
                                    <colgroup><col style="width:20%">
                                    <col>
                                    </colgroup><tbody>
                                        <tr>
                                            <th scope="row"><label for="libCode">신청도서관</label><span class="essential">*</span></th>
                                            <td>
                                                <select name="hopLib" id="hopLib" class="form-ele auto">
                                                    <option value="">도서관선택</option>
                                                         <option value="0">씨앗도서관</option>
                                                         <option value="1">새싹도서관</option>
                                                         <option value="2">쑥쑥도서관</option>
                                                         <option value="3">새봄도서관</option>
                                                         <option value="4">도란도란도서관</option>
                                                         <option value="5">뿌리도서관</option>
                                                   </select>
                                                <p class="emp1 ref" id="titleInfo">해당 도서관에 소장중 또는 정리중인 도서가 있을 경우 신청 불가</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="title">희망도서명</label><span class="essential themeFC">*</span></th>
                                            <td>
                                                <input type="text" id="hopTitle" name="hopTitle" value="" class="form-ele full">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="author">저자</label><span class="essential themeFC">*</span></th>
                                            <td><input type="text" id="hopWriter" name="hopWriter" value="" class="form-ele wide"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="publisher">출판사</label><span class="essential themeFC">*</span></th>
                                            <td><input type="text" id="hopPublisher" name="hopPublisher" value="" class="form-ele wide"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="publishYear">발행연도</label></th>
                                            <td><input type="text" id="hYear" name="hYear" value="" maxlength="4" class="form-ele auto numeric"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="isbn">ISBN</label></th>
                                            <td>
                                                <input type="text" id="isbn" name="isbn" value="" maxlength="30" class="form-ele auto eng-mode">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="price">정가</label></th>
                                            <td><input type="text" id="price" name="price" value="" class="form-ele auto numeric"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="requestReason">의견</label><span class="essential themeFC">*</span></th>
                                            <td><textarea name="hopMemo" id="hopMemo"></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                        <div class="btnGroup">
                            <a href="../" id="listBtn" class="btn cncl">취소</a>
                            <button type="button" id="registBtn" class="btn themeBtn">신청</button>
                        </div>
                        <!-- End Of the Real Contents-->
    </div>
                    </div>
                </div>
        </div>
</div>
<!-- footer -->
<c:import url="../temp/footer.jsp"></c:import>
<!-- //footer -->

     <script defer src="/js/hope.js"></script>
</body>
</html>















