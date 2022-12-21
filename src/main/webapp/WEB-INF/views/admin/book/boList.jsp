<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="/images/favicon.png">
    <title>뿌리깊은 관리자 : 씨앗도서관 ☘</title>

    <!-- ========== All CSS files linkup & sidebar ========= -->
    <c:import url="../temp/sidebar-css.jsp"></c:import>
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
                  <h2>도서 목록</h2>
                </div>
              </div>
              <!-- end col -->
              <div class="col-md-6">
                <div class="breadcrumb-wrapper mb-30">
                  <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                      <li class="breadcrumb-item">
                        <a href="../main">관리자페이지 메인</a>
                      </li>
                      <li class="breadcrumb-item">
                        <a href="./boList">도서 관리</a>
                      </li>
                      <li class="breadcrumb-item active" aria-current="page">
                        도서 목록
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
            <div class="row">
              <!-- end col -->
              <c:forEach items="${list}" var="bookVO">
              <div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
                <div class="card mb-3" style="border-radius: 4px; width: 12rem; overflow: hidden; padding: 5px;">
                  <img class="card-img-top" style="width: 100%; height: 220px;" src="${bookVO.image}" alt="Card image cap">
                  <div class="card-body" style="height: 93px; overflow: hidden; word-wrap: break-word;">
                    <p class="card-text"><a style="color: #262d3f;" href="../../book/detail?isbn=${bookVO.isbn}">${bookVO.title}</a></p>
                  </div>
                </div>
              </div>
              </c:forEach>
              <!-- end col -->
            </div>
            <!-- end row -->
            <!-- ========= card-style-2 end ========= -->
          </div>
          <!-- ========== cards-styles end ========== -->
        </div>
        <!-- end container -->
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-end">
            <c:if test="${pager.pre}">
              <li class="page-item">
                <a class="page-link text-success" href="./boList?page=${pager.startNum-1}" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
            </c:if>
            <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
              <li class="page-item"><a class="page-link text-success" href="./boList?page=${i}">${i}</a></li>
            </c:forEach>
            <c:if test="${pager.next}">
              <li class="page-item">
                <a class="page-link text-success" href="./boList?page=${pager.lastNum+1}" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </c:if>
          </ul>
        </nav>
      </section>
      <!-- ========== card components end ========== -->

      <!-- ========== footer start =========== -->
      <c:import url="../temp/footer.jsp"></c:import>
      <!-- ========== footer end =========== -->
      
    </main>
    <!-- ======== main-wrapper end =========== -->

    <!-- ========= All Javascript files linkup ======== -->
    <c:import url="../temp/js.jsp"></c:import>
  </body>
</html>
