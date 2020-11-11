<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement"  %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="DBPKG.DBcon" %>
<%@ page import="java.util.*, java.text.*"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix</title>
    <link rel="shortcut icon" href="./image/netflixIcon.ico">
    <link rel="stylesheet" href="./style/login.css">

</head>

<body>

    <div class="content">
        <div class="navbar">
            <li class="logo"><a href="index.jsp"><img src="./image/Netflix-Logo-PNG-image-200x200.png"></a></li>


        </div>
        <div class="login">
            <h1 class="login_title">로그인</h1>
            <div class="login__group">
                <input class="login__group__input" type="text" placeholder="이메일 주소 또는 전화번호" />
            </div>
            <div class="login__group">
                <input class="login__group__input" type="password" placeholder="비밀번호" />

            </div>
            <button class="buttons" type="button">로그인</button>
            <div class="login_not">Netflix 회원이 아닌가요?<a href="newmem.jsp">지금 가입하세요</a></div>
        </div>
    </div>


</body>

</html>