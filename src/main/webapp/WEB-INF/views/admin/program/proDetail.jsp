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
    <link rel="shortcut icon" href="/images/favicon.png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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
                        문화프로그램 상세정보
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
              </div>
              <!-- end col -->
              <div class="col-xl-8 col-lg-4 col-md-6 col-sm-6">
                <div class="card-style-2 mb-30">
                  <!-- <div class="card-image">
                      
                      <img src="/images/logo200.png" alt="씨앗도서관"/>
                  </div> -->
                  <div class="card-content">
                    <h4 style="color: #abce74;">${proVO.proTitle}</h4>

                    <div class="text-success">
	                    <hr>
                    </div>
                    
                    <h4 style="margin-bottom: 5px;">프로그램내용</h4>
                    <pre style="max-height: 400px;
                    white-space: break-spaces;"><c:out value="${proVO.proContents}"></c:out>
                    </pre>
                    
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
                      ${proVO.prsDate} ~ ${proVO.prlDate}
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
                      ${proVO.psDt} ~ ${proVO.plDt}
                    </p>

                    <div class="text-success">
	                    <hr>
                    </div>

                    <h4>행사시간</h4>
                     <p>
                      ${proVO.psTime} ~ ${proVO.plTime}
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

              <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">

                <div class="card-style mb-30">
                  <h6 class="mb-10">신청자 목록</h6>
                  <div class="table-wrapper table-responsive">
                    <table class="table striped-table">
                      <thead>
                        <tr>
                          <th></th>
                          <th><h6>Account No</h6></th>
                          <th><h6>Balance</h6></th>
                          <th><h6>Action</h6></th>
                        </tr>
                        <!-- end table row-->
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <div class="check-input-primary">
                              <input
                                class="form-check-input"
                                type="checkbox"
                                id="checkbox-1"
                              />
                            </div>
                          </td>
                          <td>
                            <p>AC336 508 2157</p>
                          </td>
                          <td>
                            <p>$523</p>
                          </td>
                          <td>
                            <div class="action">
                              <button class="text-danger">
                                <i class="lni lni-trash-can"></i>
                              </button>
                            </div>
                          </td>
                        </tr>
                        <!-- end table row -->
                        <tr>
                          <td>
                            <div class="check-input-primary">
                              <input
                                class="form-check-input"
                                type="checkbox"
                                id="checkbox-2"
                              />
                            </div>
                          </td>
                          <td>
                            <p>AC336 756 0987</p>
                          </td>
                          <td>
                            <p>$123</p>
                          </td>
                          <td>
                            <div class="action">
                              <button class="text-danger">
                                <i class="lni lni-trash-can"></i>
                              </button>
                            </div>
                          </td>
                        </tr>
                        <!-- end table row -->
                        <tr>
                          <td>
                            <div class="check-input-primary">
                              <input
                                class="form-check-input"
                                type="checkbox"
                                id="checkbox-3"
                              />
                            </div>
                          </td>
                          <td>
                            <p>AC336 098 8765</p>
                          </td>
                          <td>
                            <p>$223</p>
                          </td>
                          <td>
                            <div class="action">
                              <button class="text-danger">
                                <i class="lni lni-trash-can"></i>
                              </button>
                            </div>
                          </td>
                        </tr>
                        <!-- end table row -->
                        <tr>
                          <td>
                            <div class="check-input-primary">
                              <input
                                class="form-check-input"
                                type="checkbox"
                                id="checkbox-4"
                              />
                            </div>
                          </td>
                          <td>
                            <p>AC336 897 3242</p>
                          </td>
                          <td>
                            <p>$323</p>
                          </td>
                          <td>
                            <div class="action">
                              <button class="text-danger">
                                <i class="lni lni-trash-can"></i>
                              </button>
                            </div>
                          </td>
                        </tr>
                        <!-- end table row -->
                        <tr>
                          <td>
                            <div class="check-input-primary">
                              <input
                                class="form-check-input"
                                type="checkbox"
                                id="checkbox-5"
                              />
                            </div>
                          </td>
                          <td>
                            <p>AC336 654 0987</p>
                          </td>
                          <td>
                            <p>$423</p>
                          </td>
                          <td>
                            <div class="action">
                              <button class="text-danger">
                                <i class="lni lni-trash-can"></i>
                              </button>
                            </div>
                          </td>
                        </tr>
                        <!-- end table row -->
                        <tr>
                          <td>
                            <div class="check-input-primary">
                              <input
                                class="form-check-input"
                                type="checkbox"
                                id="checkbox-6"
                              />
                            </div>
                          </td>
                          <td>
                            <p>AC336 234 9804</p>
                          </td>
                          <td>
                            <p>$523</p>
                          </td>
                          <td>
                            <div class="action">
                              <button class="text-danger">
                                <i class="lni lni-trash-can"></i>
                              </button>
                            </div>
                          </td>
                        </tr>
                        <!-- end table row -->
                      </tbody>
                    </table>
                    <!-- end table -->
                  </div>
                </div>
                <!-- end card -->
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