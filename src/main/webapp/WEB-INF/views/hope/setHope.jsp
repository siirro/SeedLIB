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
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/board.css">
<link rel="stylesheet" href="/css/button.css">
<link rel="stylesheet" href="/css/layout.css">
<link rel="stylesheet" href="/css/sub.css">
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
        width: 50px;
        /* background-color: #77af9c;
        color: #d7fff1; */
        color: #45a987;

    }

    #pagePre{
        width: 50px;
        color: #45a987;
    }

    .btn{
        position: absolute;
        right: 0;
        bottom: 0;
        padding: 3px 15px;
        background-color: #6b64be !important;
    }

</style>

<title>희망 도서 신청</title>
</head>
<body>
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
                <a href="/seoksu/menu/10108/program/30008/hopeBookApply.do" class="btn input" title="직접입력 설정">직접입력</a>
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
    <div>

        <form id="registForm" name="registForm" method="post">
                            <input type="hidden" name="contentsId" value="">
                            <input type="hidden" name="applicantUserTel" value="">
                            <input type="hidden" name="applicantUserEmail" value="">
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
                                            <td>NAME</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="mobileNo1">휴대폰번호</label></th>
                                            <td>
                                                <div class="numericForm clearfix">
                                                    
                                                    
                                                    <input type="text" id="mobileNo1" name="mobileNo1" value="" maxlength="4" title="휴대폰번호 첫자리" class="form-ele short readonly" style="ime-mode:disabled" readonly="">
                                                    <span class="hyphen">-</span>
                                                    <input type="text" id="mobileNo2" name="mobileNo2" value="" maxlength="4" title="휴대폰번호 중간자리" class="form-ele short readonly" style="ime-mode:disabled" readonly="">
                                                    <span class="hyphen">-</span>
                                                    <input type="text" id="mobileNo3" name="mobileNo3" value="" maxlength="4" title="휴대폰번호 끝자리" class="form-ele short readonly" style="ime-mode:disabled" readonly="">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">이메일</th>
                                            <td><input type="text" id="email" name="email" title="이메일주소 입력" value="" class="form-ele wide" style="ime-mode:disabled" readonly=""></td>
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
                                            <th scope="row"><label for="libCode"><span class="essential">*</span> 신청도서관</label></th>
                                            <td>
                                                <select name="libCode" id="libCode" class="form-ele auto">
                                                    <option value="">도서관선택</option>
                                                         <option value="141077">석수도서관</option>
                                                         <option value="141027">만안도서관</option>
                                                         <option value="141573">삼덕도서관</option>
                                                         <option value="141095">박달도서관</option>
                                                         <option value="141132">어린이도서관</option>
                                                   </select>
                                                <p class="emp1 ref" style="display:none;" id="childText">어린이도서관은 <strong class="emp3">어린이도서만</strong> 신청이 가능합니다.</p>
                                                <p class="emp1 ref">해당 도서관에 소장중 또는 정리중인 도서가 있을 경우 선택 불가</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="title">희망도서명</label><span class="essential themeFC">*</span></th>
                                            <td>
                                                <input type="text" id="title" name="title" value="" class="form-ele full">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="author">저자</label><span class="essential themeFC">*</span></th>
                                            <td><input type="text" id="author" name="author" value="" class="form-ele wide"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="publisher">발행자</label><span class="essential themeFC">*</span></th>
                                            <td><input type="text" id="publisher" name="publisher" value="" class="form-ele wide"></td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="publishYear">발행연도</label></th>
                                            <td><input type="text" id="publishYear" name="publishYear" value="" maxlength="4" class="form-ele auto numeric"></td>
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
                                            <td><textarea name="requestReason" id="requestReason"></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                        <div class="btnGroup">
                            <a href="#btn" id="listBtn" class="btn cncl">취소</a>
                            <a href="#btn" id="registBtn" class="btn themeBtn">신청확인</a>
                        </div>
                        <!-- End Of the Real Contents-->
    </div>
                    </div>
                </div>
        </div>

     <script defer src="/js/hope.js"></script>
</body>
</html>















