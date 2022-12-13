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
    <title>회원 목록 : 씨앗도서관 ☘</title>

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
                  <h2>회원 목록</h2>
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
                      <li class="breadcrumb-item"><a href="./proList">회원 관리</a></li>
                      <li class="breadcrumb-item active" aria-current="page">
                        회원 목록
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
                    <div class="d-flex flex-wrap justify-content-between align-items-center py-3">
                      <div class="left">
                        <h6>Data Table</h6>
                        <p>Show <span>10</span> entries</p>
                      </div>
                      <div class="right d-flex align-items-center">
                        <div class="select-style-1" style="margin-bottom: 0;">
                          <div class="select-position select-sm">
                            <select name="kind">
                              <option value="선택안함">선택안함</option>
                              <option value="이름">이름</option>
                              <option value="접수기간">접수기간</option>
                              <option value="행사기간">행사기간</option>
                            </select>
                          </div>
                        </div>
                        <div class="input-style-3" style="margin-bottom: 0px;">
                          <input type="text" placeholder="Search...." style="height: 46px;" />
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
                            <th class="text-start"><h6>#</h6></th>
                            <th><h6>이름</h6></th>
                            <th><h6>아이디</h6></th>
                            <th><h6>성별</h6></th>
                            <th><h6>생년월일</h6></th>
                            <th><h6>이메일</h6></th>
                            <th><h6>회원가입일</h6></th>
                            <th><h6>연체반납횟수</h6></th>
                            <th><h6>
                              <div class="row justify-content-center">
                                <div class="col-9">
                                  <div class="select-style-1" style="margin-bottom: 0;">
                                    <div class="select-position select-sm">
                                      <select name="kind">
                                        <option value="선택안함">회원탈퇴상태</option>
                                        <option value="회원">회원</option>
                                        <option value="회원탈퇴">회원탈퇴</option>
                                      </select>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </h6></th>
                            <th><h6>계정비활성화</h6></th>
                          </tr>
                          <!-- end table row-->
                        </thead>
                        <tbody>
                          <c:forEach items="${memberList}" var="MemberVO">
                          <tr>
                            <td>
                              <div class="employee-image">
                                <!-- 이미지 어떤걸 넣을까 고민중 -->
                                <img src="/images/logo200.png" alt="씨앗도서관"/>
                              </div>
                            </td>
                            <td class="min-width">
                              <p>${MemberVO.name}</p>
                            </td>
                            <td class="min-width">
                              <p><a href="./memberDetail?userNaeme=${MemberVO.userName}">${MemberVO.userName}</a></p>
                            </td>
                            <td class="min-width">
                              <p>${MemberVO.gender}</p>
                            </td>
                            <td class="min-width">
                              <fmt:formatDate value="${MemberVO.birth}" pattern="yyyy-MM-dd"/>
                            </td>
                            <td class="min-width">
                              <p>${MemberVO.email}</p>
                            </td>
                            <td class="min-width">
                              <fmt:formatDate value="${MemberVO.regDate}" pattern="yyy-MM-dd"/>
                            </td>
                            <td class="min-width">
                              <p>${MemberVO.ovMyrCount}</p>
                            </td>
                            <td class="min-width">
                              <span class="status-btn active-btn">${MemberVO.enabled}</span>
                            </td>
                            <td>
                              <div class="action d-grid gap-2 d-md-flex justify-content-center">
                                <button>
                                  <a href="./memberUpdate?userName=${MemberVO.userName}" class="text-info">
                                    <i class="lni lni-pencil-alt"></i>
                                  </a>
                                </button>
<%--                                 <button>
                                  <a href="./memberDelete?userName=${MemberVO.userName}" class="text-danger">
                                    <i class="lni lni-trash-can"></i>
                                  </a>
                                </button> --%>
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
  </body>
</html>