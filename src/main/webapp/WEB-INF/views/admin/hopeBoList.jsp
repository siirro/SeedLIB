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
    <link rel="icon" href="/images/favicon.png">
    <title>희망도서 목록 : 씨앗도서관 ☘</title>

    <!-- ========== All CSS files linkup & sidebar ========= -->
    <c:import url="./temp/sidebar-css.jsp"></c:import>
    <!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <style>
      .index{
        padding: 15 5px !important;
        width: 30px;
      }
    </style>

  </head>
  <body>
    <!-- ======== main-wrapper start =========== -->
    <main class="main-wrapper">
      <!-- ========== header start ========== -->
      <c:import url="./temp/header.jsp"></c:import>
      <!-- ========== header end ========== -->

      <!-- ========== table components start ========== -->
      <section class="table-components">
        <div class="container-fluid">
          <!-- ========== title-wrapper start ========== -->
          <div class="title-wrapper pt-30">
            <div class="row align-items-center">
              <div class="col-md-6">
                <div class="title mb-30">
                  <h2>희망도서 목록</h2>
                </div>
              </div>
              <!-- end col -->
              <div class="col-md-6">
                <div class="breadcrumb-wrapper mb-30">
                  <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                      <li class="breadcrumb-item">
                        <a href="./main">관리자 페이지 메인</a>
                      </li>
                      <li class="breadcrumb-item"><a href="./hopeBoList">희망도서 관리</a></li>
                      <li class="breadcrumb-item active" aria-current="page">
                        희망도서 목록
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

          <!-- ========== tables-wrapper start ========== -->
          <div class="tables-wrapper">
            <div class="row">
              <div class="col-lg-12">
                <div class="card-style mb-30">
                  <div class="table-wrapper table-responsive">
                    <table class="table text-center">
                      <thead>
                        <tr>
                          <th class="index"><h6>🌱</h6></th>
                          <th style="width: 220px;"><h6>희망도서명</h6></th>
                          <th><h6>저자</h6></th>
                          <th><h6>출판사</h6></th>
                          <th><h6>ISBN</h6></th>
                          <th><h6>신청자</h6></th>
                          <th><h6>신청일자</h6></th>
                          <th><h6>
                            <div class="row justify-content-center">
                              <div class="col-9">
                                <div class="select-style-1" style="margin-bottom: 0;">
                                  <div class="select-position select-sm">
                                    <select name="libNum" id="libNum">
                                      <option value="">신청 도서관</option>
                                      <option value="0">씨앗 도서관</option>
                                      <option value="1">새싹 도서관</option>
                                      <option value="2">쑥쑥 도서관</option>
                                      <option value="3">새봄 도서관</option>
                                      <option value="4">도란도란 도서관</option>
                                      <option value="5">뿌리 도서관</option>
                                    </select>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </h6></th>
                          <th><h6>
                            <div class="row justify-content-center">
                              <div class="col-9">
                                <div class="select-style-1" style="margin-bottom: 0;">
                                  <div class="select-position select-sm">
                                    <select name="searchKeyword" id="searchKeyword">
                                      <option value="">신청 상태</option>
                                      <option value="0">신청 중</option>
                                      <option value="1">신청 취소</option>
                                      <option value="2">입고 완료</option>
                                      <option value="3">신청 반려</option>
                                    </select>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </h6></th>
                          <th class="text-start"><h6>✅</h6></th>
                        </tr>
                        <!-- end table row-->
                      </thead>
                      <tbody>
                      	<c:forEach items="${hop}" var="h" varStatus="a">
                          <tr>
                            <td class="index">
                                <p>${a.index + 1}</p>
                            </td>
                            <td class="min-width">
                              <p>${h.hopTitle}</p>
                            </td>
                            <td class="min-width">
                              <p>${h.hopWriter}</p>
                            </td>
                            <td class="min-width">
                              <p>${h.hopPublisher}</p>
                            </td>
                            <td class="min-width">
                              <p>${h.isbn}</p>
                            </td>
                            <td class="min-width">
                              <p>${h.userName}</p>
                            </td>
                            <td class="min-width">
                              <p>${h.hopDate}</p>
                            </td>
                            <td class="min-width">
                              <p>${h.libVO.libName}</p>
                            </td>
                            <td class="min-width">
                              <p>${h.statusVO.statName}</p>
                            </td>
                            <td>
                              <div class="action text-start">
                                <!-- 수정버튼 -->
                                <a href="/admin/hopeAdd?hopNum=${h.hopNum}" type="button" class="processBtn" data-hop-num="${h.hopNum}">
                                    <i class="lni lni-check-box"></i>
                                </a>
                              </div>
                            </td>
                          </tr>
                          </c:forEach>
                        <!-- end table row -->
                      </tbody>
                    </table>
                    <!-- end table -->
                  </div>
                  <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-end">
                      <c:if test="${pager.pre}">
	                      <li class="page-item">
	                        <a class="page-link text-success" href="./hop?page=${pager.startNum-1}" aria-label="Previous">
	                          <span aria-hidden="true">&laquo;</span>
	                        </a>
	                      </li>
                      </c:if>
                      <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
	                      <li class="page-item"><a class="page-link text-success" href="./hop?page=${i}">${i}</a></li>
                      </c:forEach>
                      <c:if test="${pager.next}">
	                      <li class="page-item">
	                        <a class="page-link text-success" href="./hop?page=${pager.lastNum+1}" aria-label="Next">
	                          <span aria-hidden="true">&raquo;</span>
	                        </a>
	                      </li>
                      </c:if>
                    </ul>
                  </nav>
                </div>
                <!-- end card -->
              </div>
              <!-- end col -->
            </div>
            <!-- end row -->
          </div>
          <!-- ========== tables-wrapper end ========== -->
        </div>
        <!-- end container -->
      </section>
      <!-- ========== table components end ========== -->

      <!-- ========== footer start =========== -->
      <c:import url="./temp/footer.jsp"></c:import>
      <!-- ========== footer end =========== -->
    </main>
    <!-- ======== main-wrapper end =========== -->

    <!-- ========= All Javascript files linkup ======== -->
    <c:import url="./temp/js.jsp"></c:import>

    <!-- 개별 js 적용 -->
    <script src="/js/admin/hope.js"></script>
  </body>
</html>