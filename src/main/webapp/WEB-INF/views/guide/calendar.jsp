<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="shortcut icon" href="/images/favicon.png">
<title>도서관 행사 일정 : 씨앗도서관 ☘</title>
</head>
<body>
    <div class="wrap">
        <!-- header -->
       <c:import url="../temp/header.jsp"></c:import>
        <!-- header -->
       <div id="container" class="sub">
            <div class="sVisualWrap">
                <div class="sVisual">
                    <h3>도서관 행사 일정</h3>
                </div>
            </div>
            <div id="contentGroup">
                <div id="lnbNav" class="navArea">
                    <c:import url="../sideBar/CsideBar.jsp"></c:import>
                </div>
                <div id="contentcore">
                    <div class="naviandtitle">
                        <h3>도서관 행사 일정</h3>
                        <div class="navi"><a href="/" title="홈으로 이동" class="home"><span class="blind">홈</span></a><i class="arrow"></i> 도서관 안내 <i class="arrow"></i>도서관 행사 일정<i class="arrow"></i>일정 안내</div>
                    </div> 
                    <div id="contents" class="contentArea">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- footer -->
    <c:import url="../temp/footer.jsp"></c:import>
    <!-- //footer -->
</body>
</html>