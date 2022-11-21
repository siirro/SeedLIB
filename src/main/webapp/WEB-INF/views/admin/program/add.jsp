<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="shortcut icon"
      href="assets/images/favicon.svg"
      type="image/x-icon"
    />
    <title>Form Elements | PlainAdmin Demo</title>
    <!-- ========== All CSS files linkup & sidear ========= -->
    <c:import url="../temp/sdeber-css.jsp"></c:import>
  </head>
  <body>
    <!-- ======== main-wrapper start =========== -->
    <main class="main-wrapper">
      <!-- ========== header start ========== -->
      <c:import url="../temp/header.jsp"></c:import>
      <!-- ========== header end ========== -->

      <!-- ========== tab components start ========== -->
      <section class="tab-components">
        <div class="container-fluid">
          <!-- ========== title-wrapper start ========== -->
          <div class="title-wrapper pt-30">
            <div class="row align-items-center">
              <div class="col-md-6">
                <div class="title mb-30">
                  <h2>문화 프로그램 개설</h2>
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
                      <li class="breadcrumb-item"><a href="./add">Forms</a></li>
                      <li class="breadcrumb-item active" aria-current="page">
                        문화 프로그램 개설
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

          <!-- ========== form-elements-wrapper start ========== -->
          <div class="form-elements-wrapper">
            <div class="row">
              <div class="col-lg-6">
                <!-- input style start -->
                <div class="card-style mb-30">
                  <h6 class="mb-25">프로그램 이름</h6>
                  <div class="input-style-3">
                    <input type="text" name="proName" placeholder="프로그램 이름을 입력하세요" />
                    <span class="icon"><i class="lni lni-bulb"></i></span>
                  </div>
                  <h6 class="mb-25">프로그램 참여 인원 수</h6>
                  <div class="input-style-3">
                    <input type="number" name="total" placeholder="참여인원 수를 입력하세요" />
                    <span class="icon"><i class="lni lni-user"></i></span>
                  </div>
                  <!-- end input -->
                </div>
                <!-- end card -->
                <!-- ======= input style end ======= -->

                <!-- ======= select style start ======= -->
                <div class="card-style mb-30">
                  <div class="select-style-1">
                    <h6 class="mb-25">대상자 선택</h6>
                    <div class="select-position">
                      <select>
                        <option value="">선택안함</option>
                        <option value="유아">유아</option>
                        <option value="어린이">어린이</option>
                        <option value="청소년">청소년</option>
                        <option value="성인">성인</option>
                        <option value="누구나">누구나</option>
                      </select>
                    </div>
                  </div>
                  <!-- end select -->
                  <div class="select-style-1">
                    <h6 class="mb-25">행사구분 선택</h6>
                    <div class="select-position">
                      <select>
                        <option value="">선택안함</option>
                        <option value="정기강좌">정기강좌</option>
                        <option value="특강">특강</option>
                        <option value="이벤트">이벤트</option>
                        <option value="독서회">독서회</option>
                        <option value="기타">기타</option>
                      </select>
                    </div>
                  </div>
                  <!-- end select -->
                </div>
                <!-- end card -->
                <!-- ======= select style end ======= -->

                <!-- ======= select style start ======= -->
                <div class="card-style mb-30">
                  <h6 class="mb-25">Time and Date</h6>
                  <div class="input-style-1">
                    <label>Date</label>
                    <input type="date" />
                  </div>
                  <!-- end input -->
                  <div class="input-style-2">
                    <input type="date" />
                    <span class="icon"
                      ><i class="lni lni-chevron-down"></i
                    ></span>
                  </div>
                  <!-- end input -->
                  <div class="input-style-2">
                    <input type="time" />
                  </div>
                  <!-- end input -->
                </div>
                <!-- end card -->
                <!-- ======= input style end ======= -->

                <!-- ======= input switch style start ======= -->
                <div class="card-style mb-30">
                  <h6 class="mb-25">Toggle switch input</h6>
                  <div class="form-check form-switch toggle-switch mb-30">
                    <input
                      class="form-check-input"
                      type="checkbox"
                      id="toggleSwitch1"
                    />
                    <label class="form-check-label" for="toggleSwitch1"
                      >Default switch checkbox input</label
                    >
                  </div>
                  <div class="form-check form-switch toggle-switch">
                    <input
                      class="form-check-input"
                      type="checkbox"
                      id="toggleSwitch2"
                      checked
                    />
                    <label class="form-check-label" for="toggleSwitch2"
                      >Default switch checkbox input</label
                    >
                  </div>
                </div>
                <!-- ======= input switch style end ======= -->
              </div>
              <!-- end col -->
              <div class="col-lg-6">
                <!-- ======= textarea style start ======= -->
                <div class="card-style mb-30">
                  <h6 class="mb-25">Textarea</h6>
                  <div class="input-style-1">
                    <label>Message</label>
                    <textarea placeholder="Message" rows="5"></textarea>
                  </div>
                  <!-- end textarea -->
                  <div class="input-style-3">
                    <textarea placeholder="Message" rows="5"></textarea>
                    <span class="icon"
                      ><i class="lni lni-text-format"></i
                    ></span>
                  </div>
                  <!-- end textarea -->
                </div>
                <!-- ======= textarea style end ======= -->

                <!-- ======= checkbox style start ======= -->
                <div class="card-style mb-30">
                  <h6 class="mb-25">Checkbox</h6>
                  <div class="form-check checkbox-style mb-20">
                    <input
                      class="form-check-input"
                      type="checkbox"
                      value=""
                      id="checkbox-1"
                    />
                    <label class="form-check-label" for="checkbox-1">
                      Default Checkbox</label
                    >
                  </div>
                  <!-- end checkbox -->
                  <div class="form-check checkbox-style mb-20">
                    <input
                      class="form-check-input"
                      type="checkbox"
                      value=""
                      id="checkbox-2"
                      disabled
                    />
                    <label class="form-check-label" for="checkbox-2">
                      Disabled Checkbox</label
                    >
                  </div>
                  <!-- end checkbox -->
                  <div class="form-check checkbox-style checkbox-success mb-20">
                    <input
                      class="form-check-input"
                      type="checkbox"
                      value=""
                      id="checkbox-3"
                    />
                    <label class="form-check-label" for="checkbox-3">
                      Success Checkbox</label
                    >
                  </div>
                  <!-- end checkbox -->
                  <div class="form-check checkbox-style checkbox-warning mb-20">
                    <input
                      class="form-check-input"
                      type="checkbox"
                      value=""
                      id="checkbox-4"
                    />
                    <label class="form-check-label" for="checkbox-4">
                      Warning Checkbox</label
                    >
                  </div>
                  <!-- end checkbox -->
                  <div class="form-check checkbox-style checkbox-danger mb-20">
                    <input
                      class="form-check-input"
                      type="checkbox"
                      value=""
                      id="checkbox-5"
                    />
                    <label class="form-check-label" for="checkbox-5">
                      Danger Checkbox</label
                    >
                  </div>
                  <!-- end checkbox -->
                </div>
                <!-- ======= checkbox style end ======= -->

                <!-- ======= radio style start ======= -->
                <div class="card-style mb-30">
                  <h6 class="mb-25">Radio</h6>
                  <div class="form-check radio-style mb-20">
                    <input
                      class="form-check-input"
                      type="radio"
                      value=""
                      id="radio-1"
                    />
                    <label class="form-check-label" for="radio-1">
                      Default Radio</label
                    >
                  </div>
                  <!-- end radio -->
                  <div class="form-check radio-style mb-20">
                    <input
                      class="form-check-input"
                      type="radio"
                      value=""
                      id="radio-2"
                      disabled
                    />
                    <label class="form-check-label" for="radio-2">
                      Disabled Radio</label
                    >
                  </div>
                  <!-- end radio -->
                  <div class="form-check radio-style radio-success mb-20">
                    <input
                      class="form-check-input"
                      type="radio"
                      value=""
                      id="radio-3"
                    />
                    <label class="form-check-label" for="radio-3">
                      Success Radio</label
                    >
                  </div>
                  <!-- end radio -->
                  <div class="form-check radio-style radio-warning mb-20">
                    <input
                      class="form-check-input"
                      type="radio"
                      value=""
                      id="radio-4"
                    />
                    <label class="form-check-label" for="radio-4">
                      Warning Radio</label
                    >
                  </div>
                  <!-- end radio -->
                  <div class="form-check radio-style radio-danger mb-20">
                    <input
                      class="form-check-input"
                      type="radio"
                      value=""
                      id="radio-5"
                    />
                    <label class="form-check-label" for="radio-5">
                      Danger Radio</label
                    >
                  </div>
                  <!-- end radio -->
                </div>
                <!-- ======= radio style end ======= -->
              </div>
              <!-- end col -->
            </div>
            <!-- end row -->
          </div>
          <!-- ========== form-elements-wrapper end ========== -->
        </div>
        <!-- end container -->
      </section>
      <!-- ========== tab components end ========== -->

      <!-- ========== footer start =========== -->
      <c:import url="../temp/footer.jsp"></c:import>
      <!-- ========== footer end =========== -->

    </main>
    <!-- ======== main-wrapper end =========== -->

    <!-- ========= All Javascript files linkup ======== -->
    <c:import url="../temp/js.jsp"></c:import>
  </body>
</html>