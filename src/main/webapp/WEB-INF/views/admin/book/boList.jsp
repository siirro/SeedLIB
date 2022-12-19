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
                        <a href="../main">Dashboard</a>
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
              <div class="col-12">
                <div class="title mt-30 mb-30">
                  <h2>Cards</h2>
                </div>
              </div>
              <!-- end col -->
              <c:forEach items="${list}" var="bookVO">
              <div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
                <!-- <div class="card-style-2 mb-30">
                  <div class="card-image">
                    <a href="./boDetail?isbn=${bookVO.isbn}">
                      <img
                        src="${bookVO.image}"
                        alt=""
                      />
                    </a>
                  </div>
                  <div class="card-content">
                    <h4 class="bookList">
                      <a 
                      	style="
                      	  overflow: hidden;
						  text-overflow: ellipsis;
                      	"
                        href="./boDetail?isbn=${bookVO.isbn}">${bookVO.title}
                      </a>
                    </h4>
                  </div>
                </div> -->
                <div class="card" style="width: 18rem;">
                  <img class="card-img-top" src="${bookVO.image}" alt="Card image cap">
                  <div class="card-body">
                    <p class="card-text"><a>${bookVO.title}</a></p>
                  </div>
                </div>
              </div>
              <!-- <ul class="bookList clearfix">
                <li>
                  <span class="cover">
                    <a href="/seoksu/libraryPopularBookDetail.do?isbn=9791161571188">
                      <img src="https://image.aladin.co.kr/product/26942/84/cover/k582730818_1.jpg" alt="불편한 편의점 :김호연 장편소설" onerror="javascript:fnImageLoadError(this); return false;">
                    </a>
                  </span>
                  <span class="txt">불편한 편의점 :김호연 장편소설</span>
                </li>
              </ul> -->
              </c:forEach>
              <!-- end col -->
            </div>
            <!-- end row -->
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
  </body>
</html>
