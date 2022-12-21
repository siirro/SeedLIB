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
    <style>
      .center1 {
        display: flex;
        justify-content: center;
      }

      #changeBtn {
        float: none;
        margin: 0 auto;
        cursor: pointer;
      }
    </style>

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
              <div class="col-xl-7 col-lg-4 col-md-6 col-sm-6">
                <div class="card-style-2 mb-30">
                  <!-- <div class="card-image">
                      
                      <img src="/images/logo200.png" alt="씨앗도서관"/>
                  </div> -->
                  <div class="card-content">
                    <h4 style="color: #abce74; font-size: 27px;">${proVO.proTitle}</h4>

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

                    <input type="hidden" id="proNum" value="${proVO.proNum}">

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
                    ${count} / ${proVO.total}
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

              <div class="col-xl-5 col-lg-4 col-md-6 col-sm-6">

                <div class="card-style mb-30">
                  <h6 class="mb-10">신청자 목록</h6>
                  <div class="table-wrapper table-responsive">
                    <c:if test="${not empty mPmsg}">
                      <div>${mPmsg}</div>
                    </c:if>

                    <c:if test="${empty mPmsg}">
                      <table class="table striped-table">
                        <thead>
                          <tr>
                            <th style="width: 74px;"><h6 class="center1">번호</h6></th>
                            <th><h6 class="center1">신청자</h6></th>
                            <th style="width: 94px;"><h6 class="center1">승인</h6></th>
                            <th style="width: 84px;"><h6 class="center1">상태</h6></th>
                          </tr>
                          <!-- end table row-->
                        </thead>
                        <tbody>
                        
                        
                        
                          
                          <c:forEach items="${mP}" var="mp">
                            <tr>
                              
                              <td>
                                <p class="center1">${mp.rowNum}</p>
                              </td>
                              <td>
                                <p class="center1">${mp.name} (${mp.userName})</p>
                              </td>
                              <td>
                                <div class="action">
                                  <c:choose>
                                    <c:when test="${mp.proCheck eq 0}">
                                      <span id="changeBtn" class="status-btn success-btn row" proNum="${mp.proCheck}"
                                      data-bs-toggle="modal" data-bs-target="#exampleModal${mp.mpNum}">대기</span>
                                    </c:when>
                                    <c:when test="${mp.proCheck eq 1}">
                                      <span id="changeBtn" class="status-btn success-btn row" proNum="${mp.proCheck}"
                                      data-bs-toggle="modal" data-bs-target="#exampleModal${mp.mpNum}">거부</span>
                                    </c:when>
                                    <c:when test="${mp.proCheck eq 2}">
                                      <span id="changeBtn" class="status-btn success-btn row" proNum="${mp.proCheck}"
                                      data-bs-toggle="modal" data-bs-target="#exampleModal${mp.mpNum}">완료</span>
                                    </c:when>
                                    <c:otherwise>
                                      <span id="changeBtn" class="status-btn success-btn row" proNum="${mp.proCheck}"
                                    data-bs-toggle="modal" data-bs-target="#exampleModal${mp.mpNum}">에러</span>
                                    </c:otherwise>
                                  </c:choose>
                                </div>
                              </td>
                              <td>
                                <!-- <div class="action">
                                  <button class="text-danger">
                                    <i class="lni lni-trash-can"></i>
                                  </button>
                                </div> -->
                              <!-- Modal -->
                                <div class="modal fade" id="exampleModal${mp.mpNum}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                  <div class="modal-dialog">
                                    <div class="modal-content" style="width: 80%;">
                                      <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel" style="color: #a9d66a;">승인상태 변경</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                      </div>
                                            <input type="hidden"  id="mpNum" name="mpNum" value="${mp.mpNum}">
                                            <div class="modal-body" style="display: flex;
                                            justify-content: space-evenly;">

                                              <div class="form-check form-check-inline">
                                                <input class="form-check-input check${mp.mpNum}" type="radio" name="proCheck" id="inlineRadio1" value="2">
                                                <label class="form-check-label" for="inlineRadio1" style="color: #a9d66a;">승인</label>
                                              </div>
                                              <div class="form-check form-check-inline">
                                                <input class="form-check-input check${mp.mpNum}" type="radio" name="proCheck" id="inlineRadio2" value="1">
                                                <label class="form-check-label" for="inlineRadio2" style="color: red;">거부</label>
                                              </div>

                                            </div>
                                            <div class="modal-footer">
                                              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                              <button type="button" onclick="FnUpdate(${mp.mpNum})" id="statusBtn" class="btn btn-primary" style="background: #a9d66a; border-color: #a9d66a;">변경</button>
                                            </div>

                                            
                                    </div>
                                  </div>
                                </div>
                              
                                <p>
                                  <c:choose>
                                    <c:when test="${mp.proState eq 0}"><div class="center1" style="color: red; font-size: 13px;">취소</div></c:when>
                                    <c:when test="${mp.proState eq 1}"><div class="center1" style="color: #54bb65; font-size: 13px;">신청중</div></c:when>
                                    <c:otherwise>에러</c:otherwise>
                                  </c:choose>
                                </p>
                              </td>
                            </tr>
                          </c:forEach>
                          
                          <script>

                            let proNum1 = $("#proNum").val();
                            let mpNum = $("#mpNum").val();
                            
                            function FnUpdate(num) {
                              let status = "";
                              // console.log($("input[class='check"+num+"']:checked").val())
                              $(".check"+num).each(function(index, item){
                                console.log(item);
                                if($(item).prop("checked")){
                                  status = $(item).val();
                                  console.log(status);
                                }
                              })

                              if(status.length<1) {
                                alert("상태를 선택해주세요");
                              } else {
                                console.log("??");
                                $.ajax({
                                type: "GET",
                                url: "./updateProCheck",
                                traditional: true,
                                data: {
                                  mpNum: mpNum,
                                  proNum: proNum1,
                                  proCheck: status
                                },
                                success: function(data){
                                  // location.href="./proDetail?proNum=",proNum1;
                                  location.reload();
                                  console.log("난성공");

                                },
                                error: function(){
                                  console.log("에러");
                                }
                              })
                              }

                              

                            
                            }
                          </script>
                          
                        </tbody>
                      </table>
                    </c:if>
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