<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	  <link rel="stylesheet" href="/css/admin/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/admin/lineicons.css" />
    <link rel="stylesheet" href="/css/admin/materialdesignicons.min.css" />
    <link rel="stylesheet" href="/css/admin/fullcalendar.css" />
    <link rel="stylesheet" href="/css/admin/fullcalendar.css" />
    <link rel="stylesheet" href="/css/admin/main.css" />
    <aside class="sidebar-nav-wrapper">
    <!-- ======== sidebar-nav start =========== -->
        <div class="navbar-logo">
          <a href="/">
            <img src="/images/logo200.png" alt="씨앗도서관">
          </a>
        </div>
        <nav class="sidebar-nav">
          <ul>
            <li class="nav-item">
              <a
                href="/admin/main"
              >
                <span class="icon">
                  <svg width="22" height="22" viewBox="0 0 22 22">
                    <path
                      d="M17.4167 4.58333V6.41667H13.75V4.58333H17.4167ZM8.25 4.58333V10.0833H4.58333V4.58333H8.25ZM17.4167 11.9167V17.4167H13.75V11.9167H17.4167ZM8.25 15.5833V17.4167H4.58333V15.5833H8.25ZM19.25 2.75H11.9167V8.25H19.25V2.75ZM10.0833 2.75H2.75V11.9167H10.0833V2.75ZM19.25 10.0833H11.9167V19.25H19.25V10.0833ZM10.0833 13.75H2.75V19.25H10.0833V13.75Z"
                    />
                  </svg>
                </span>
                <span class="text">Dashboard</span>
              </a>
            </li>
            <li class="nav-item nav-item-has-children">
              <a
                href="#0"
                class="collapsed"
                data-bs-toggle="collapse"
                data-bs-target="#ddmenu_1"
                aria-controls="ddmenu_1"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="icon">
                  <svg 
                    class="bi bi-person-check" 
                    width="22"
                    height="22"
                    viewBox="0 0 22 22"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                     >
                    <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                    <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                  </svg>
                </span>
                <span class="text">회원관리</span>
              </a>
              <ul id="ddmenu_1" class="collapse dropdown-nav">
                <li>
                  <a href="/admin/member/adMemberList">회원목록</a>
                </li>
                <li>
                  <a href="#">Blank Page</a>
                </li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-children">
              <a
                href="#0"
                class="collapsed"
                data-bs-toggle="collapse"
                data-bs-target="#ddmenu_2"
                aria-controls="ddmenu_2"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="icon">
                  <svg 
                    width="22"
                    height="22"
                    viewBox="0 0 22 22"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg" 
                    >
                    <path d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z"/>
                    <path d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z"/>
                  </svg>
                </span>
                <span class="text">도서 관리</span>
              </a>
              <ul id="ddmenu_2" class="collapse dropdown-nav">
                <li>
                  <a href="/admin/book/boList">도서 목록</a>
                </li>
                <li>
                  <a href="/admin/book/boAdd">도서 추가</a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a
                href="/admin/hopeBoList"
              >
                <span class="icon">
                  <svg
                    width="22"
                    height="22"
                    viewBox="0 0 22 22"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                  <path d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z"/>
                  <path d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z"/>
                  </svg>
                </span>
                <span class="text">희망도서관리</span>
              </a>
            </li>
            <li class="nav-item">
              <a
                href="/admin/donaBoList"
              >
                <span class="icon">
                  <svg
                    width="22"
                    height="22"
                    viewBox="0 0 22 22"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                  <path d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z"/>
                  <path d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z"/>
                  </svg>
                </span>
                <span class="text">기증도서관리</span>
              </a>
            </li>
            <li class="nav-item nav-item-has-children">
              <a
                href="#0"
                class="collapsed"
                data-bs-toggle="collapse"
                data-bs-target="#ddmenu_3"
                aria-controls="ddmenu_3"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="icon">
                  <svg
                    width="22"
                    height="22"
                    viewBox="0 0 22 22"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M4.58341 8.70841L6.87508 12.8334H2.29175L4.58341 8.70841ZM2.75008 3.66675H6.41675V7.33341H2.75008V3.66675ZM4.58341 18.3334C5.06964 18.3334 5.53596 18.1403 5.87978 17.7964C6.22359 17.4526 6.41675 16.9863 6.41675 16.5001C6.41675 16.0139 6.22359 15.5475 5.87978 15.2037C5.53596 14.8599 5.06964 14.6667 4.58341 14.6667C4.09718 14.6667 3.63087 14.8599 3.28705 15.2037C2.94324 15.5475 2.75008 16.0139 2.75008 16.5001C2.75008 16.9863 2.94324 17.4526 3.28705 17.7964C3.63087 18.1403 4.09718 18.3334 4.58341 18.3334ZM8.25008 4.58341V6.41675H19.2501V4.58341H8.25008ZM8.25008 17.4167H19.2501V15.5834H8.25008V17.4167ZM8.25008 11.9167H19.2501V10.0834H8.25008V11.9167Z"
                    />
                  </svg>
                </span>
                <span class="text">문화프로그램 관리</span>
              </a>
              <ul id="ddmenu_3" class="collapse dropdown-nav">
                <li>
                  <a href="/admin/program/proList"> 문화프로그램 목록 </a>
                </li>
                <li>
                  <a href="/admin/program/proAdd"> 문화프로그램 개설 </a>
                </li>
              </ul>
            </li>
            <span class="divider"><hr /></span>
          </ul>
        </nav>
      </aside>
      <div class="overlay"></div>
      <!-- ======== sidebar-nav end =========== -->