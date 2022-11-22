<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up | PlainAdmin Demo</title>
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
          <!-- ========== title-wrapper end ========== -->

          <div class="row g-0 auth-row">
            <div class="col-lg-6">
              <div class="auth-cover-wrapper bg-primary-100">
                <div class="auth-cover">
                  <div class="title text-center">
                    <h1 class="text-primary mb-10">Get Started</h1>
                    <p class="text-medium">
                      Start creating the best possible user experience
                      <br class="d-sm-block" />
                      for you customers.
                    </p>
                  </div>
                  <div class="cover-image">
                    <img src="assets/images/auth/signin-image.svg" alt="" />
                  </div>
                  <div class="shape-image">
                    <img src="assets/images/auth/shape.svg" alt="" />
                  </div>
                </div>
              </div>
            </div>
            <!-- end col -->
            <div class="col-lg-6">
              <div class="signup-wrapper">
                <div class="form-wrapper">
                  <h6 class="mb-15">도서 정보 입력</h6>
                  <p class="text-sm mb-25">
                    도서 정보를 빠짐없이 입력해 주세요
                  </p>
                  <form action="./boAdd">
                    <div class="row">
                      <div class="col-12">
                        <h6 class="mb-25">이미지</h6>
                        <div class="input-style-3">
                          <input type="file" name="image" placeholder="ISBN을 입력하세요" />
                          <span class="icon"><i class="lni lni-camera"></i></span>
                        </div>
                      </div>
                      <div class="col-12">
                        <h6 class="mb-25">ISBN</h6>
                        <div class="input-style-3">
                          <input type="text" name="isbn" placeholder="ISBN을 입력하세요" />
                          <span class="icon"><i class="lni lni-key"></i></span>
                        </div>
                      </div>
                      <!-- end col -->
                      <div class="col-12">
                        <h6 class="mb-25">제목</h6>
                        <div class="input-style-3">
                          <input type="text" name="title" placeholder="책 제목을 입력하세요" />
                          <span class="icon"><i class="lni lni-book"></i></span>
                        </div>
                      </div>
                      <!-- end col -->
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
                      <!-- end col -->
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
                          >
                            등록하기
                            <span class="icon"><i class="lni lni-checkmark"></i></span>
                          </button>
                        </div>
                      </div>
                    </div>
                    <!-- end row -->
                  </form>
                </div>
              </div>
            </div>
            <!-- end col -->
          </div>
          <!-- end row -->
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