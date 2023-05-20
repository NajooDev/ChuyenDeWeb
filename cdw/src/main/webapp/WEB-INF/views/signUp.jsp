<!--phải có dòng này thì jsp mới chạy đc-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<%--cái <% %> phía dưới được gọi là jsp tag --%>
<%--get du lieu co attribute la error duoc gui vao day va gan no vao String error --%>
<%
    //NEU XOA O DAY THI PHAI XOA LUON O DUOI NEU KHONG SE BI LOI
    String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Electro - HTML Ecommerce Template</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link type="text/css" rel="stylesheet" href="css/tmdt.css"/>
    
    <style type="text/css">
    	.center {
    		height: 1090px;
		}
    	.center .outer_wrap {
    		height: 1099px;
    	}
    	
    	.center .outer_wrap .in_wrap {
    		height: 930px;
    
		}
    	input.otherInput{
    		width:100%;
    		height: 43px;
    	}
    	input.big{
    		width:100%;
    		height: 43px;
    		margin-top: 20px;
    	}
    	
    	input[type="checkbox"]{
    		width: 14px;
    		height: 12px;
    		margin: 16px 0px;
    	}
    	
    </style>
</head>
<body>
<!-- HEADER -->
<jsp:include page="header.jsp"></jsp:include>
<!-- /HEADER -->

<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- <div class="col-md-12">
                <h3 class="breadcrumb-header">Regular Page</h3>
                <ul class="breadcrumb-tree">
                    <li><a href="#">Home</a></li>
                    <li class="active">Blank</li>
                </ul>
            </div> -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /BREADCRUMB -->

<div class="center">
    <form:form action="/signUp" method="post" modelAttribute="userRegister">
			<div class="outer_wrap">
				<div class="in_wrap">
					<div class="center_title">
                    	<h2>Đăng ký</h2>
                	</div>
					<div>
						<form:input path="userName" placeholder="Nhập username" class="big"/>
						<form:errors path="userName" cssClass="error" />
					</div>

					<div>
						<form:input type="password" path="password" placeholder="Nhập mật khẩu" class="big password"/>
						<form:errors path="password" cssClass="error" />
					</div>

					<input type="password" placeholder="Nhập lại mật khẩu" class="password input_big" name="password_again" id="password_again">
					
					<div class="show_password">
						<!-- An element to toggle between password visibility -->
                		<input type="checkbox" onclick="myFunction()">Show Password
					</div>
					

					<div class="other">
						<div class="birth_year">
							<form:label path="birthday">Ngày sinh:</form:label>
							<form:input path="birthday" type="date" />
							<form:errors path="birthday" cssClass="error" />
						</div>

						<div class="Sex">
							<form:label path="sex">Giới tính:</form:label>
							<form:input path="sex" placeholder="Nhập giói tính"/>
							<form:errors path="sex" cssClass="error" />
						</div>
					</div>
					<div class="under">
						<form:label path="email">Email:</form:label>
						<form:input path="email" placeholder="xxx@example.com" class="otherInput"/>
						<form:errors path="email" cssClass="error" />
					</div>

					<div class="under">
						<form:label path="phone">Số điện thoại:</form:label>
						<form:input path="phone" placeholder="Số điện thoại" class="otherInput"/>
						<form:errors path="phone" cssClass="error" />
					</div>
					
					<div class="under">
						<form:label path="address">Địa chỉ:</form:label>
						<form:input path="address" placeholder="Địa chỉ" class="otherInput"/>
						<form:errors path="address" cssClass="error" />
					</div>

					<div>

						<div class="signUp" style="margin-top: 16px;">
							<form:button>Register</form:button>
						</div>

						<div class="signIn">
                    		<a href="/CDW/Login.jsp">Đăng nhập</a>
                		</div>
					</div>
				</div>
			</div>
		</form:form>
</div>

<!-- FOOTER -->
<footer id="footer">
    <!-- top footer -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">About Us</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
                            ut.</p>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Categories</h3>
                        <ul class="footer-links">
                            <li><a href="#">Hot deals</a></li>
                            <li><a href="#">Laptops</a></li>
                            <li><a href="#">Smartphones</a></li>
                            <li><a href="#">Cameras</a></li>
                            <li><a href="#">Accessories</a></li>
                        </ul>
                    </div>
                </div>

                <div class="clearfix visible-xs"></div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Information</h3>
                        <ul class="footer-links">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Orders and Returns</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Service</h3>
                        <ul class="footer-links">
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">View Cart</a></li>
                            <li><a href="#">Wishlist</a></li>
                            <li><a href="#">Track My Order</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /top footer -->

    <!-- bottom footer -->
    <div id="bottom-footer" class="section">
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="footer-payments">
                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                    </ul>
                    <span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i
                            class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                                target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>


                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /bottom footer -->
</footer>
<!-- /FOOTER -->

<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>

<script src="js/cdw.js"></script>

</body>
</html>
