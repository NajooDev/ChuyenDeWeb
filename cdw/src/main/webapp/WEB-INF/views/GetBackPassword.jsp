<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!--vendor css(để dùng mdb4 chỗ class table) dùng để tạo ra bảng và làm cho bảng đẹp hơn-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <link rel="stylesheet" href="/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href="/vendor/css/mdb.min.css">
    <link rel="stylesheet" href="/vendor/css/style.css">
    
    <link type="text/css" rel="stylesheet" href="/css/getBackPassword.css"/>
</head>
<body>

<!--CENTER-->
<div class="container get_back_password_center center">

    <form action="/getBackPassword" method="post">
        <div class="outer_wrap">
            <div class="in_wrap get_back_password_wrap">
            <c:choose>
         		<c:when test = "${message != null}">
            		<p class="message">${message}</p>
                    <a class="signInButton" href="/TMDT/Login.jsp">Đăng nhập</a>
         		</c:when>
         		<c:otherwise>
            		<div class="center_title">
                    	<h4>Vui lòng nhập email</h4>
                    	<p class="error">${error}</p>
                	</div>
                	<input type="text" placeholder="Nhập username" class="input_big" name="username">
                	<input type="text" placeholder="Nhập email" class="input_big" name="email">
                	<div class="Login">
                    	<input type="submit" value="Xác nhận" class="login_button">
                	</div>
         		</c:otherwise>
         								
      		</c:choose>
            </div>
        </div>
    </form>

</div>
<!--CENTER-->
</body>
</html>