<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/board.css">
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/sub.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        .contentsGroup {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .seatArea {
            width: 100%;
            margin-left: 25px;
            margin-top: 50px;
            margin-bottom: 10px;
        }
        
        #seatNum {
            font-size: 30px;
            font-weight: bold;
        }

        .btnArea {
            margin-top: 30px;
        }

        .tbl td{
            padding: 0 5px;
            font-size: 17px;
        }

        .tabTr{
            line-height: 45px;
        }

        hr {
        width : 95%;
        border : 0px;
        border-top: 3px dotted #949494;
        margin-bottom: 15px;
        }

        #revBtn{
            border-radius: 5px;
            text-shadow: 1px 1px 3px rgb(0 0 0 / 30%);
        }

    </style>

    <title>좌석 예약</title>
</head>
<body>
    <div class="contentsGroup">
        <div class="seatArea">
            <span id="seatNum" value="${num}">선택한 좌석 번호 : ${num} </span>
        </div>
        <hr>   
        <div>
            <div style="margin-bottom: 15px;">
                <span style="font-size: 17px;">● 이용 시간</span>
            </div>
            <table class="tbl">
                <thead>
                    <tr>
                        <th scope="col">구 분</th>
                        <th scope="col">평 일</th>
                        <th scope="col">주 말</th>
                        <th scope="col">방역시간</th>
                        <th scope="col">비 고</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="tabTr">
                        <td rowspan="2" style="text-align: center;">열 람 실</td>
                        <td style="text-align: center;"><span style="color:#2980b9;">하절기(3월~10월) 07:00 ~ 23:00</span></td>
                        <td style="text-align: center;">하절기(3월~10월) 07:00 ~ 23:00</td>
                        <td rowspan="2" style="text-align: center;">수시 방역</td>
                        <td rowspan="2" style="text-align: center;"><span style="color:#ff0000;">현 장 발 권</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="btnArea">
            <button type="button" class="btn themeBtn" id="revBtn">좌석 예약</button>
        </div>
    </div>
   <script src="/js/studyRoomRes.js"></script> 
</body>
</html>