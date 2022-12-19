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
                  <h2>도서 수정</h2>
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
                        도서 수정
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
                        <form id="registForm" name="registForm" action-="boAdd" method="post">
                                            <div class="boardWrap mt10">
                                                <table class="board-view">
                                                  <thead>
                                                    <!-- input style card start -->
                                                    <div style="display: flex; justify-content: center;">
                                                      <div class="card-style mb-30">
                                                        <div class="card-image" style="margin-bottom: 0px;">
                                                            <img id="viewBook" style="width:200px; height: auto;"
                                                              src="${bookVO.image}"
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
                                                            <th scope="row"><label for="title">도서명</label><span class="essential themeFC">*</span></th>
                                                            <td>
                                                                <input type="text" id="title" name="title" value="${bookVO.title}" class="form-control">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="author">저자</label><span class="essential themeFC">*</span></th>
                                                            <td><input type="text" id="writer" name="writer" value="${bookVO.writer}" class="form-control"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="publisher">출판사</label><span class="essential themeFC">*</span></th>
                                                            <td><input type="text" id="publisher" name="publisher" value="${bookVO.publisher}" class="form-control"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="publishYear">발행연도</label><span class="essential themeFC">*</span></th>
                                                            <td><input type="number" id="bookDate" min="1500", max="", step="1", name="bookDate" value="${bookVO.bookDate}" maxlength="4" class="form-control"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"><label for="isbn">ISBN</label><span class="essential themeFC">*</span></th>
                                                            <td>
                                                                <input type="text" id="isbn" name="isbn" value="${bookVO.isbn}" readonly maxlength="30" class="form-control">
                                                            </td>
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
                                          <button type="button" id="updateBtn" class="btn themeBtn" value="">도서 수정</button>
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