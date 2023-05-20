<!--phải có dòng này thì jsp mới chạy đc-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
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

    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="/css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="/css/slick-theme.css"/>
    <link type="text/css" rel="stylesheet" href="/css/nouislider.min.css"/>
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="/css/tmdt.css"/>
    <style type="text/css">
    	p.error{
    		color: red;
    	}
    </style>
</head>
<body>
<!-- HEADER -->
<jsp:include page="header.jsp"></jsp:include>
<!-- /HEADER -->


<!--CENTER-->
<div class="center">
    <form action="/login" method="post">
        <div class="outer_wrap">
            <div class="in_wrap">
                <div class="center_title">
                    <h2>Đăng nhập</h2>
                </div>

                <p class="error">${error}</p>

                <input type="text" placeholder="Nhập username" class="input_big" name="username">
                <input type="password" placeholder="Nhập mật khẩu" class="password input_big" name="password">

                <!-- An element to toggle between password visibility -->
                <input type="checkbox" onclick="myFunction()">Show Password

                <div class="signUp">
                    <a href="GetBackPassword.jsp">Quên mật khẩu</a>
                    <a href="signUp.jsp">Đăng ký</a>
                </div>

                <div class="Login">
                    <input type="submit" value="Đăng nhập" class="login_button">
<%--                    <div class="formGroup facebook">--%>
<%--                        <i class="fa fa-facebook"></i>--%>
<%--                        <a href="https://www.facebook.com/dialog/oauth?client_id=557125926235695&redirect_uri=http://localhost:8080/CDW/login-facebook" class="login_facebook">Đăng nhập bằng facebook</a>--%>
<%--                    </div>--%>
                    <div class="formGroup google">
                        <i class="fa fa-google"></i>
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8080/loginGoogle&response_type=code
    &client_id=1040664649135-i77husqacdhjaao826mn1cpnkgncv9aj.apps.googleusercontent.com&approval_prompt=force" class="login_facebook">Đăng nhập bằng google</a>
                    </div>
                    <!-- <button class="facebook"></button> -->
                    <!-- <button class="google">Đăng nhập bằng google</button> -->
                </div>


            </div>
        </div>
    </form>
</div>
<!--CENTER-->

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
