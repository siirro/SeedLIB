<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    <link rel="shortcut icon" href="/images/favicon.png">

    <title>뿌리깊은 관리자 : 씨앗도서관 ☘</title>

    <!-- ========== All CSS files linkup & sidebar ========= -->
    <c:import url="../temp/sidebar-css.jsp"></c:import>
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
<!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  </head>
  <body>
    <!-- ======== main-wrapper start =========== -->
    <main class="main-wrapper">
    
      <!-- ========== header start ========== -->
      <c:import url="../temp/header.jsp"></c:import>
      <!-- ========== header end ========== -->

      <!-- ========== card components start ========== -->
      <section class="card-components">
        <div class="container-fluid">
          <!-- ========== title-wrapper start ========== -->
          <div class="title-wrapper pt-30">
            <div class="row align-items-center">
              <div class="col-md-6">
                <div class="title mb-30">
                  <h2>도서 등록</h2>
                </div>
              </div>
              <!-- end col -->
              <div class="col-md-6">
                <div class="breadcrumb-wrapper mb-30">
                  <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                      <li class="breadcrumb-item">
                        <a href="../main">관리자 페이지 메인</a>
                      </li>
                      <li class="breadcrumb-item">
                        <a href="./boList">도서 관리</a>
                      </li>
                      <li class="breadcrumb-item active" aria-current="page">
                        도서 등록
                      </li>
                    </ol>
                  </nav>
                </div>
              </div>
              <!-- end col -->
            </div>
            <!-- end row -->
          </div>
          <!-- ========== title-wrapper end ========== -->

          <!-- ========== cards-styles start ========== -->
          <div class="cards-styles">
            <!-- ========= card-style-2 start ========= -->
            <div class="row" style="justify-content: center;">
              <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6" style="width:70%;">
                <div class="card-style-2 mb-30" style="width:100%;">
                  <div>
                    <!--Real Contents Start-->
                    <!-- 서치영역 -->
                    <form id="searchForm" name="searchForm" method="get">
                    <div class="searchWrap">
                        <div class="searchFormWeb">
                            <div class="searchToparea">
                                <div class="searchBardiv hope">
                                    <div class="searchInputbox" style="margin-right: 0px;">
                                        <input hidden="hidden">
                                        <input type="text" id="query" name="query" title="제목을 입력하세요." onkeyup="enterkey()" value="" placeholder="도서명을 입력하세요." autocomplete="off">
                                        <input type="button" id="searchBtn" title="검색" class="unifiedSearchbtn">
                                    </div>
                                </div>
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
                        <form id="registForm" name="registForm" action-="boAdd" method="post">
                                            <div class="boardWrap mt10">
                                                <table class="board-view">
                                                  <thead>
                                                    <!-- input style card start -->
                                                    <div style="display: flex; justify-content: center;">
                                                      <div class="card-style mb-30">
                                                        <div class="card-image">
                                                            <img id="viewBook" style="width:200px;"
                                                              src="/images/favicon.png"
                                                              alt="씨앗도서관"
                                                            />
                                                        </div>
                                                      </div>
                                                    </div>
                                                    <!-- end card -->
                                                  </thead>
                                                  <div><h4 class="htitle">도서 정보</h4></div>
                                                    <colgroup><col style="width:20%">
                                                    <col>
                                                    </colgroup>
                                                    <tbody>
                                                        <tr>
                                                            <th scope="row"><label for="libCode">신청도서관</label><span class="essential">*</span></th>
                                                            <td>
                                                              <select name="bookLib" id="bookLib" class="form-ele auto">
                                                                <option value="">도서관선택</option>
                                                                        <option value="0">씨앗도서관</option>
                                                                        <option value="1">새싹도서관</option>
                                                                        <option value="2">쑥쑥도서관</option>
                                                                        <option value="3">새봄도서관</option>
                                                                        <option value="4">도란도란도서관</option>
                                                                        <option value="5">뿌리도서관</option>
                                                              </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="title">도서명</label><span class="essential themeFC">*</span></th>
                                                            <td>
                                                                <input type="text" id="title" name="title" value="${hope.hopTitle}" class="form-control">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="author">저자</label><span class="essential themeFC">*</span></th>
                                                            <td><input type="text" id="writer" name="writer" value="" class="form-control"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="publisher">출판사</label><span class="essential themeFC">*</span></th>
                                                            <td><input type="text" id="publisher" name="publisher" value="" class="form-control"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="publishYear">발행연도</label></th>
                                                            <td><input type="number" id="bookDate" min="1500", max="", step="1", name="bookDate" value="" maxlength="4" class="form-control"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="isbn">ISBN</label></th>
                                                            <td>
                                                                <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="isbn" name="isbn" value="" maxlength="30" class="form-control">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="price">정가</label></th>
                                                            <td><input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" readonly id="price" name="price" value="${hope.price}" class="form-control"></td>
                                                        </tr>
                                                        <tr>
                                                          <th scope="row"><label for="requestReason">카테고리</label><span class="essential themeFC">*</span></th>
                                                          <td><div class="select-position">
                                                            <select name="category" id="category">
                                                              <option value="">선택안함</option>
                                                              <option value="0">000 : 총류</option>
                                                              <option value="1">100 : 철학</option>
                                                              <option value="2">200 : 종교</option>
                                                              <option value="3">300 : 사회과학</option>
                                                              <option value="4">400 : 자연과학</option>
                                                              <option value="5">500 : 기술과학</option>
                                                              <option value="6">600 : 예술</option>
                                                              <option value="7">700 : 언어</option>
                                                              <option value="8">800 : 문학</option>
                                                              <option value="9">900 : 역사</option>
                                                            </select>
                                                          </div></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <input type="hidden" name="image" id="image" value="">
                                        </form>
                                        <div class="btnGroup">
                                          <button type="button" id="registBtn" class="btn themeBtn" value="">도서 등록</button>
                                          <button type="button" id="cnclBtn" class="btn cncl" value="">취소</button>
                                        </div>
                                        <!-- End Of the Real Contents-->
                    </div>
                                    </div>
                                </div>
                        </div>
                </div>
                </div>
              </div>
              <!-- end col -->
            </div>
            <!-- ========= card-style-2 end ========= -->
          </div>
          <!-- ========== cards-styles end ========== -->
        </div>
        <!-- end container -->
      </section>
      <!-- ========== card components end ========== -->

      <!-- ========== footer start =========== -->
      <c:import url="../temp/footer.jsp"></c:import>
      <!-- ========== footer end =========== -->
      
    </main>
    <!-- ======== main-wrapper end =========== -->

    <!-- ========= All Javascript files linkup ======== -->
    <c:import url="../temp/js.jsp"></c:import>
    <script src="/js/admin/boAdd.js"></script>
  </body>
</html>