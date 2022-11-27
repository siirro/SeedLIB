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
                  <h2>문화프로그램 상세정보</h2>
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
                        <a href="./proList">문화프로그램 관리</a>
                      </li>
                      <li class="breadcrumb-item active" aria-current="page">
                        문화프로그렘 상세정보
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
              <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                <div class="card-style-2 mb-30">
                  <div class="card-image">
                      <!-- 이미지 어떤걸 넣을까 고민중 -->
                      <img src="/images/logo200.png" alt="씨앗도서관"/>
                  </div>
                  <div class="card-content">
                    <h4>${proVO.proName}</h4>

                    <div class="text-success">
	                    <hr>
                    </div>

                    <h4>행사구분</h4>
                    <p>
					  ${proVO.proCate}
                    </p>

                    <div class="text-success">
	                    <hr>
                    </div>

                    <h4>접수기간</h4>
                    <p>
                      날짜예시 2022-08-09 ~ 2022-09-09
                    </p>

                    <div class="text-success">
	                    <hr>
                    </div>  

                    <h4>신청현황</h4>
                    <p>
                      /${proVO.total}
                    </p>

                    <div class="text-success">
	                    <hr>
                    </div>

                    <h4>행사일정</h4>
                    <p>
                      일정예시 2022-08-09()
                    </p>

                    <div class="text-success">
	                    <hr>
                    </div>

                    <h4>행사시간</h4>
                     <p>
                      일정예시 ()요일 00:00 ~ 00:00
                    </p>

                    <div class="text-success">
	                    <hr>
                    </div>

                    <h4>수강대상</h4>
                    <p>
                      ${proVO.target}
                    </p>

                    <div class="text-success">
	                    <hr>
                    </div>

                    <h4>강사</h4>
                    <p>
                      ${proVO.proTeacher}
                    </p>

                    <div class="text-success">
	                    <hr>
                    </div>
                    
                    <h4>장소</h4>
                    <p>
                      ${proVO.proPlace}
                    </p>
                  </div>
                </div>
              </div>
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