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

      <!-- ========== signin-section start ========== -->
      <section class="signin-section">
        <div class="container-fluid">
          <!-- ========== title-wrapper start ========== -->
          <div class="title-wrapper pt-30">
            <div class="row align-items-center">
              <div class="col-md-6">
                <div class="title mb-30">
                  <h2>책 등록</h2>
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
                      <li class="breadcrumb-item"><a href="./boAdd">Form</a></li>
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
          
          <!-- ========== form-elements-wrapper start ========== -->
          <form action="./proAdd" method="post">
            <div class="row">
              <div class="col-lg-6">
                <!-- input style card start -->
                <div class="card-style mb-30">
                  <div class="card-image">
                    <a href="#">
                      <img
                        src="/images/logo200.png"
                        alt="씨앗도서관"
                      />
                    </a>
                  </div>
                </div>
                <!-- end card -->

                <!-- input style card start -->
                <div class="card-style mb-30">
                  <h6 class="mb-25">이미지</h6>
                  <div class="input-style-3">
                    <input type="file" name="image" placeholder="ISBN을 입력하세요" />
                    <span class="icon"><i class="lni lni-camera"></i></span>
                  </div>
                  <!-- end input -->
                  <h6 class="mb-25">ISBN</h6>
                  <div class="input-style-3">
                    <input type="text" name="isbn" placeholder="ISBN을 입력하세요" />
                    <span class="icon"><i class="lni lni-key"></i></span>
                  </div>
                  <!-- end input -->
                  <h6 class="mb-25">제목</h6>
                  <div class="input-style-3">
                    <input type="text" name="title" placeholder="책 제목을 입력하세요" />
                    <span class="icon"><i class="lni lni-book"></i></span>
                  </div>
                  <!-- end input -->
                </div>
                <!-- end card -->
              </div>
              <!-- end col -->

              <div class="col-lg-6">
                <!-- input style start -->
                <div class="card-style mb-30">
                  <div class="col-12">
                    <h6 class="mb-25">저자</h6>
                    <div class="input-style-3">
                      <input type="text" name="writer" placeholder="책의 저자를 입력하세요" />
                      <span class="icon"><i class="lni lni-user"></i></span>
                    </div>
                  </div>
                  <!-- end col -->
                  <div class="col-12">
                    <h6 class="mb-25">출판사</h6>
                    <div class="input-style-3">
                      <input type="text" name="publisher" placeholder="책의 출판사를 입력하세요" />
                      <span class="icon"><i class="lni lni-book"></i></span>
                    </div>
                  </div>
                  <!-- end col -->
                  <div class="col-12">
                    <h6 class="mb-25">권수</h6>
                    <div class="input-style-3">
                      <input type="text" name="quantlty" placeholder="책의 수량을 입력하세요" />
                      <span class="icon"><i class="lni lni-book"></i></span>
                    </div>
                  </div>
                  <!-- end col -->
                  <div class="col-12">
                    <h6 class="mb-25">출판연도</h6>
                    <div class="input-style-1">
                      <input type="date" name="bookDate" />
                    </div>
                  </div>
                  <!-- end input -->
                  <!-- ======= select style start ======= -->
                    <h6 class="mb-25">카테고리</h6>
                    <div class="select-style-1">
                      <div class="select-position">
                        <select name="category">
                          <option value="0">선택안함</option>
                          <option value="000">총류</option>
                          <option value="100">철학</option>
                          <option value="200">종교</option>
                          <option value="300">사회과학</option>
                          <option value="400">자연과학</option>
                          <option value="500">기술과학</option>
                          <option value="600">예술</option>
                          <option value="700">언어</option>
                          <option value="800">문학</option>
                          <option value="900">역사</option>
                        </select>
                      </div>
                    </div>
                    <!-- end select -->
                  <!-- ======= select style end ======= -->
                  <div class="col-12">
                    <div
                      class="
                        button-group
                        d-flex
                        justify-content-center
                        flex-wrap
                      "
                    >
                      <button
                        class="
                          main-btn
                          info-btn
                          rounded-md
                          btn-hover
                          w-100
                          text-center
                        "
                        type="submit"
                      >
                        <b>등록하기</b>
                        <span class="icon"><i class="lni lni-checkmark ms-1"></i></span>
                      </button>
                    </div>
                  </div>
                </div>
                <!-- end card -->
                <!-- ======= select style end ======= -->
              </div>
              <!-- end col -->
            </div>
            <!-- end row -->
          </form>
          <!-- ========== form-elements-wrapper end ========== -->
        </div>
      </section>
      <!-- ========== signin-section end ========== -->

      <!-- ========== footer start =========== -->
      <c:import url="../temp/footer.jsp"></c:import>
      <!-- ========== footer end =========== -->

    </main>
    <!-- ======== main-wrapper end =========== -->

    <!-- ========= All Javascript files linkup ======== -->
    <c:import url="../temp/js.jsp"></c:import>
  </body>
</html>