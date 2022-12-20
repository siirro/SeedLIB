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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <title>프로그램 목록 : 씨앗도서관 ☘</title>
    <style>
      #changeBtn:hover {
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

      <!-- ========== table components start ========== -->
      <section class="table-components">
        <div class="container-fluid">
          <!-- ========== title-wrapper start ========== -->
          <div class="title-wrapper pt-30">
            <div class="row align-items-center">
              <div class="col-md-6">
                <div class="title mb-30">
                  <h2>문화프로그램 목록</h2>
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
                      <li class="breadcrumb-item"><a href="./proList">문화프로그램 관리</a></li>
                      <li class="breadcrumb-item active" aria-current="page">
                        문화프로그램 목록
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
                <form action="./proList" method="get">
                  <div class="card-style mb-30">
                    <!-- <h6 class="mb-10">Data Table</h6> -->
                    <div class="d-flex flex-wrap justify-content-between align-items-center py-1">
                      <div class="left">
                        <!-- <h6>Data Table</h6>
                        <p>Show <span>10</span> entries</p> -->
                      </div>
                      <div class="right d-flex align-items-center">
                        <!-- <div class="select-style-1" style="margin-bottom: 0;">
                          <div class="select-position select-sm">
                            <select name="kind">
                              <option value="선택안함">선택안함</option>
                              <option value="이름">이름</option>
                              <option value="접수기간">접수기간</option>
                              <option value="행사기간">행사기간</option>
                            </select>
                          </div>
                        </div> -->
                        <div class="input-style-3" style="margin-bottom: 0px;">
                          <input type="text" name="search" placeholder="Search...." style="height: 46px;" />
                          <span class="icon">
                            <i class="lni lni-search-alt"></i>
                          </span>
                        </div>
                        <div>
                          <button type="submit" class="main-btn btn-sm rounded-md info-btn">
                            검색
                            <span class="icon"><i class="lni lni-checkmark ms-1"></i></span>
                          </button>
                        </div>
                      </div>
                    </div>
                    <div class="table-wrapper table-responsive">
                      <table class="table text-center">
                        <thead>
                          <tr>
                            <!-- <th class="text-start"><h6>#</h6></th> -->
                            <th><h6>
                              구분
                              <!-- <div class="row justify-content-center">
                                <div class="col-9">
                                  <div class="select-style-1" style="margin-bottom: 0;">
                                    <div class="select-position select-sm">
                                      <select name="kind1">
                                        <option value="선택안함">구분</option>
                                        <option value="정기강좌">정기강좌</option>
                                        <option value="특강">특강</option>
                                        <option value="이벤트">이벤트</option>
                                        <option value="독서회">독서회</option>
                                        <option value="기타">기타</option>
                                      </select>
                                    </div>
                                  </div>
                                </div>
                              </div> -->
                            </h6></th>
                            <th><h6>이름</h6></th>
                            <th><h6>신청자/정원</h6></th>
                            <th><h6>접수기간</h6></th>
                            <th><h6>행사기간</h6></th>
                            <th><h6>접수상태
                              <!-- <div class="row justify-content-center">
                                <div class="col-9">
                                  <div class="select-style-1" style="margin-bottom: 0;">
                                    <div class="select-position select-sm">
                                      <select name="kind2">
                                        <option value="선택안함">접수상태</option>
                                        <option value="예정">예정</option>
                                        <option value="접수중">접수중</option>
                                        <option value="마감">마감</option>
                                        <option value="종료">종료</option>
                                      </select>
                                    </div>
                                  </div>
                                </div>
                              </div> -->
                            </h6></th>
                            <th class="text-start"><h6>수정/삭제</h6></th>
                          </tr>
                          <!-- end table row-->
                        </thead>
                        <tbody>
                          <c:forEach items="${proList}" var="proVO">
                          <tr>
                            <!-- <td>
                              <div class="employee-image">
                                이미지 어떤걸 넣을까 고민중 
                                <img src="/images/logo200.png" alt="씨앗도서관"/>
                              </div>
                            </td> -->
                            <td class="min-width">
                              <p>${proVO.proCate}</p>
                            </td>
                            <td class="min-width">
                              <p><a href="./proDetail?proNum=${proVO.proNum}">${proVO.proTitle}</a></p>
                            </td>
                            <td class="min-width">
                              <p>0 / ${proVO.total}</p>
                            </td>
                            <td class="min-width">
                              <fmt:formatDate value="${proVO.prsDate}" pattern="yyyy-MM-dd"/>
                              <fmt:formatDate value="${proVO.prlDate}" pattern="~ yyyy-MM-dd"/>
                              <%-- <p>${proVO.prsDate}-${proVO.}</p> --%>
                            </td>
                            <td class="min-width">
                            ${proVO.psDt}
                            <br>
                            ${proVO.plDt}
                              <%-- <fmt:formatDate value="${proVO.psDate}" pattern="yyyy-MM-dd HH:mm"/>
                              <fmt:formatDate value="${proVO.plDate}" pattern="~ yyyy-MM-dd HH:mm"/> --%>
                              <%-- <p>${proVO.total}</p> --%>
                            </td>
                            <td class="min-width">
                              <!-- onclick="FnChangeStatus()"  -->
                              <c:choose>
                                <c:when test="${proVO.recStatus eq '예정'}">
                                  <span id="changeBtn" class="status-btn success-btn" proNum="${proVO.proNum}"
                                  data-bs-toggle="modal" data-bs-target="#exampleModal${proVO.proNum}">${proVO.recStatus}</span>
                                </c:when>
                                <c:when test="${proVO.recStatus eq '접수중'}">
                                  <span id="changeBtn" class="status-btn active-btn" proNum="${proVO.proNum}"
                                  data-bs-toggle="modal" data-bs-target="#exampleModal${proVO.proNum}">${proVO.recStatus}</span>
                                </c:when>
                                <c:when test="${proVO.recStatus eq '마감'}">
                                  <span id="changeBtn" class="status-btn close-btn" proNum="${proVO.proNum}"
                                  data-bs-toggle="modal" data-bs-target="#exampleModal${proVO.proNum}">${proVO.recStatus}</span>
                                </c:when>
                                <c:otherwise>
                                  <span id="changeBtn" class="status-btn success-btn" proNum="${proVO.proNum}"
                                data-bs-toggle="modal" data-bs-target="#exampleModal${proVO.proNum}">${proVO.recStatus}</span>
                                </c:otherwise>
                                
                              </c:choose>

                              
                            </td>


                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal${proVO.proNum}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel" style="color: #a9d66a;">접수상태 변경</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                  </div>
                                        <input type="hidden" name="proNum" value="${proVO.proNum}">
                                        <div class="modal-body">

                                          <div class="form-check form-check-inline">
                                            <input class="form-check-input check${proVO.proNum}" type="radio" name="recStatus" id="inlineRadio1" value="예정">
                                            <label class="form-check-label" for="inlineRadio1">접수예정</label>
                                          </div>
                                          <div class="form-check form-check-inline">
                                            <input class="form-check-input check${proVO.proNum}" type="radio" name="recStatus" id="inlineRadio2" value="접수중">
                                            <label class="form-check-label" for="inlineRadio2">접수중</label>
                                          </div>
                                          <div class="form-check form-check-inline">
                                            <input class="form-check-input check${proVO.proNum}" type="radio" name="recStatus" id="inlineRadio3" value="마감">
                                            <label class="form-check-label" for="inlineRadio3">접수마감</label>
                                          </div>

                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                          <button type="button" onclick="FnUpdate(${proVO.proNum})" id="statusBtn" class="btn btn-primary" style="background: #a9d66a; border-color: #a9d66a;">변경</button>
                                        </div>

                                        <script>
                                          
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
                                              url: "./proUpdateStatus",
                                              traditional: true,
                                              data: {
                                                proNum: num,
                                                recStatus: status
                                              },
                                              success: function(data){
                                                location.href="./proList"
                                              },
                                              error: function(){
                                                console.log("에러");
                                              }
                                            })
                                            }

                                            

                                           
                                          }
                                        </script>
                                </div>
                              </div>
                            </div>


                            <td>
                              <div class="action text-start">
                                <button onclick="location.href='./proUpdate?proNum=${proVO.proNum}'" type="button">
                                  <a class="text-info">
                                    <i class="lni lni-pencil-alt"></i>
                                  </a>
                                </button>
                                <button type="button" onclick="fnDeleteBtn(${proVO.proNum})" id="deleteBtn">
                                  <a class="text-danger">
                                    <i class="lni lni-trash-can"></i>
                                  </a>
                                </button>
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
                            <a class="page-link text-success" href="./proList?page=${pager.startNum-1}" aria-label="Previous">
                              <span aria-hidden="true">&laquo;</span>
                            </a>
                          </li>
                        </c:if>
                        <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                          <li class="page-item"><a class="page-link text-success" href="./proList?page=${i}">${i}</a></li>
                        </c:forEach>
                        <c:if test="${pager.next}">
                          <li class="page-item">
                            <a class="page-link text-success" href="./proList?page=${pager.lastNum+1}" aria-label="Next">
                              <span aria-hidden="true">&raquo;</span>
                            </a>
                          </li>
                        </c:if>
                      </ul>
                    </nav>
                  </div>
                  <!-- end card -->
                </form>
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
      <c:import url="../temp/footer.jsp"></c:import>
      <!-- ========== footer end =========== -->
    </main>
    <!-- ======== main-wrapper end =========== -->

    <!-- ========= All Javascript files linkup ======== -->
    <c:import url="../temp/js.jsp"></c:import>

    <script>
      function fnDeleteBtn(num){
        console.log("?");
        if(confirm("프로그램을 삭제하시겠습니까?")) {
          location.href='./proDelete?proNum='+num;
        }
      }

      function FnChangeStatus(){
        console.log("?");
      }
    </script>
  </body>
</html>