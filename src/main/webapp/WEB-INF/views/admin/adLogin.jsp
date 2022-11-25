<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!-- Seedlib 파비콘 -->
	<link rel="shortcut icon" href="/images/favicon.png">
	<title>뿌리깊은 관리자 : 씨앗도서관 ☘</title>

    <!-- ========== All CSS files linkup & sidebar ========= -->
	<c:import url="./temp/sidebar-css.jsp"></c:import>
  </head>
  <body>
    <!-- ======== main-wrapper start =========== -->
    <main class="main-wrapper">
      <!-- ========== header start ========== -->
		<c:import url="./temp/header.jsp"></c:import>
      <!-- ========== header end ========== -->

      <!-- ========== signin-section start ========== -->
      <section class="signin-section">
        <div class="container-fluid">
          <!-- ========== title-wrapper start ========== -->
          <div class="title-wrapper pt-30">
            <div class="row align-items-center">
              <div class="col-md-6">
                <div class="title mb-30">
                  <h2>관리자 로그인</h2>
                </div>
              </div>
              <!-- end col -->
              <div class="col-md-6">
                <div class="breadcrumb-wrapper mb-30">
                  <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                      <li class="breadcrumb-item">
                        <a href="#0">Dashboard</a>
                      </li>
                      <li class="breadcrumb-item"><a href="#0">인증</a></li>
                      <li class="breadcrumb-item active" aria-current="page">
                        관리자 로그인
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
                    <h1 class="text-primary mb-10">Welcome Back</h1>
                    <p class="text-medium">
                      Sign in to your Existing account to continue
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
              <div class="signin-wrapper">
                <div class="form-wrapper">
                  <h6 class="mb-15">관리자 로그인</h6>
                  <p class="text-sm mb-25">
                    Start creating the best possible user experience for you
                    customers.
                  </p>
                  <form action="#">
                    <div class="row">
                      <div class="col-12">
                        <div class="input-style-1">
                          <label>아이디</label>
                          <input type="text" name="userName" placeholder="아이디를 입력하세요" />
                        </div>
                      </div>
                      <!-- end col -->
                      <div class="col-12">
                        <div class="input-style-1">
                          <label>비밀번호</label>
                          <input type="password" name="password" placeholder="비밀번호를 입력하세요" />
                        </div>
                      </div>
                      <!-- end col -->
                      <div class="col-xxl-6 col-lg-12 col-md-6">
                        <div class="form-check checkbox-style mb-30">
                          <input
                            class="form-check-input"
                            type="checkbox"
                            value=""
                            id="remember"
                          />
                          <label
                            class="form-check-label"
                            for="remember"
                          >
                            다음에 기억하기</label
                          >
                        </div>
                      </div>
                      <!-- end col -->
                      <div class="col-xxl-6 col-lg-12 col-md-6">
                        <div
                          class="
                            text-start text-md-end text-lg-start text-xxl-end
                            mb-30
                          "
                        >
                          <a href="#0" class="hover-underline"
                            >비밀번호를 잊었나요?</a
                          >
                        </div>
                      </div>
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
                            type="submit"
                          >
                            로그인
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
		<c:import url="./temp/footer.jsp"></c:import>
      <!-- ========== footer end =========== -->
    </main>
    <!-- ======== main-wrapper end =========== -->

    <!-- ========= All Javascript files linkup ======== -->
	<c:import url="./temp/js.jsp"></c:import>
  </body>
</html>