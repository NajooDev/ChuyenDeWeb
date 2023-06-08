<!--phải có dòng này thì jsp mới chạy đc-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="/css/slick.css" />
<link type="text/css" rel="stylesheet" href="/css/slick-theme.css" />
<link type="text/css" rel="stylesheet" href="/css/nouislider.min.css" />
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="/css/style.css" />
<link type="text/css" rel="stylesheet" href="/css/tmdt.css" />
<title>Home</title>

<style type="text/css">
body {
	background-color: #f8f8f8;
}

.section_service .row {
	display: flex;
	justify-content: space-around;
}

.section_service .col-lg-3.col-md-6 {
	background-color: white;
	padding: 14px;
	width: 350px;
}

.section_service .itemsv {
	display: flex;
}

.section_service .itemsv .image {
	margin-right: 12px;
	margin-top: 8px;
}

.section_service .itemsv h4 {
	margin: 10px 0px 0px 0px;
}

/*poster*/
img.img-responsive.center-block {
	width: 100%;
	margin-top: 22px;
}

/*product*/
.product {
	background-color: white;
}

/*product last*/
.products-tabs.product-last {
	width: 100%;
	margin-left: 15px;
}

.products-tabs.product-last .product {
	width: 255px;
	display: inline-block;
	margin-right: 26px;
}

#footer p, #footer a {
	color: white;
}
</style>
</head>
<body>

	<!-- HEADER -->
		<jsp:include page="header.jsp"></jsp:include>
	<!-- /HEADER -->

		<!-- SECTION -->
		<div class="section section-padding">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<a class="shop-img" href="#">
								<img src="https://bizweb.dktcdn.net/100/092/840/themes/885495/assets/bb1.jpg?1678853570350" alt="">
							</a>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<a class="shop-img" href="#">
								<img src="https://bizweb.dktcdn.net/100/092/840/themes/885495/assets/bb2.jpg?1678853570350" alt="">
							</a>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<a class="shop-img" href="#">
								<img src="https://bizweb.dktcdn.net/100/092/840/themes/885495/assets/bb3.jpg?1678853570350" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /SECTION -->
	<section class="section_service container">
		<div class="row justify-content-around">
			<div class="col-lg-3 col-md-6">
				<div class="itemsv">
					<div class="image">
						<img class="lazyload loaded" src="//bizweb.dktcdn.net/100/092/840/themes/885495/assets/ico_sv1.png?1678853570350" data-src="//bizweb.dktcdn.net/100/092/840/themes/885495/assets/ico_sv1.png?1678853570350" alt="Miễn phí" data-was-processed="true">
					</div>
					<div class="contentsv">
						<h4>
							Miễn phí
						</h4>
						<p>
							Giao hàng nội thành HCM
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="itemsv">
					<div class="image">
						<img class="lazyload loaded" src="//bizweb.dktcdn.net/100/092/840/themes/885495/assets/ico_sv2.png?1678853570350" data-src="//bizweb.dktcdn.net/100/092/840/themes/885495/assets/ico_sv2.png?1678853570350" alt="Đảm bảo" data-was-processed="true">
					</div>
					<div class="contentsv">
						<h4>
							Đảm bảo
						</h4>
						<p>
							Chất lượng uy tín hàng đầu
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="itemsv">
					<div class="image">
						<img class="lazyload loaded" src="//bizweb.dktcdn.net/100/092/840/themes/885495/assets/ico_sv3.png?1678853570350" data-src="//bizweb.dktcdn.net/100/092/840/themes/885495/assets/ico_sv3.png?1678853570350" alt="Hỗ trợ 24/7" data-was-processed="true">
					</div>
					<div class="contentsv">
						<h4>
							Hỗ trợ 24/7
						</h4>
						<p>
							Chăm sóc khách hàng uy tín
						</p>
					</div>
				</div>
			</div>
			<!-- <div class="col-lg-3 col-md-6">
				<div class="itemsv">
					<div class="image">
						<img class="lazyload loaded" src="//bizweb.dktcdn.net/100/092/840/themes/885495/assets/ico_sv4.png?1678853570350" data-src="//bizweb.dktcdn.net/100/092/840/themes/885495/assets/ico_sv4.png?1678853570350" alt="Tư vấn bán hàng" data-was-processed="true">
					</div>
					<div class="contentsv">
						<h4>
							Tư vấn bán hàng
						</h4>
						<a href="tel:0786236336">
							0786236336
						</a>
					</div>
				</div>
			</div> -->
		</div>

		<img src="//bizweb.dktcdn.net/100/092/840/themes/885495/assets/slider_2.jpg?1678853570350" alt="Miễn Phí Giao Hàng" class="img-responsive center-block">
	</section>
		<!-- SECTION -->
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h4 class="title"><a href="/u/categoryBig/8">DỤNG CỤ SINH HOẠT</a></h4>
							<div id="slick-nav-1" class="products-slick-nav section-nav"></div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="products-tabs">
							<div id="tab1" class="tab-pane active">
								<div class="products-slick" data-nav="#slick-nav-1">
								<!-- Product -->
								<c:forEach items="${productList1}" var="product">
									<div class="product">
										<a class="product-img" href="#"> <img
											src="${product.img}"
											alt="">
										</a>
										<div class="product-body">
											<h3 class="product-name">
												<a href="/u/productDetail/${product.id}">${product.productName}</a>
											</h3>
											<!-- <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${product.price}" />đ -->
											<h4 class="product-price">${product.currencyFormat()}</h4>
										</div>
										<div class="add-to-cart">
											<p hidden>${product.id}</p>
											<button class="add-to-cart-btn">
												<i class="fa fa-shopping-cart"></i> add to cart
											</button>
										</div>
									</div>
								</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
		
		<!-- /HOT DEAL SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h4 class="title"><a href="/u/categoryBig/3">QUẦN ÁO THỜI TRANG</a></h4>
							<div id="slick-nav-2" class="products-slick-nav section-nav"></div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="products-tabs">
							<div id="tab2" class="tab-pane active">
								<div class="products-slick" data-nav="#slick-nav-2">
									<c:forEach items="${productList2}" var="product">
									<div class="product">
										<a class="product-img" href="#"> <img
											src="${product.img}"
											alt="">
										</a>
										<div class="product-body">
											<h3 class="product-name">
												<a href="/u/productDetail/${product.id}">${product.productName}</a>
											</h3>
											<h4 class="product-price">${product.currencyFormat()}</h4>
										</div>
										<div class="add-to-cart">
											<p hidden>${product.id}</p>
											<button class="add-to-cart-btn">
												<i class="fa fa-shopping-cart"></i> add to cart
											</button>
										</div>
									</div>
								</c:forEach>

									
								</div>
								<!-- <div id="slick-nav-2" class="products-slick-nav"></div> -->
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
							<h4 class="title"><a href="/u/categoryBig/10">LỒNG NHÀ NỆM</a></h4>
						</div>
					</div>
					<div class="col-md-12">
						<div class="products-tabs product-last">
									<c:forEach items="${productList3}" var="product">
									<div class="product">
										<a class="product-img" href="#"> <img
											src="${product.img}"
											alt="">
										</a>
										<div class="product-body">
											<h3 class="product-name">
												<a href="/u/productDetail/${product.id}">${product.productName}</a>
											</h3>
											<h4 class="product-price">${product.currencyFormat()}</h4>
										</div>
										<div class="add-to-cart">
											<p hidden>${product.id}</p>
											<button class="add-to-cart-btn">
												<i class="fa fa-shopping-cart"></i> add to cart
											</button>
										</div>
									</div>
								</c:forEach>
									<!--product-->
								<!-- </div> -->
								<!-- <div id="slick-nav-2" class="products-slick-nav"></div> -->
							<!-- </div> -->
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /SECTION -->

		<!-- NEWSLETTER -->


		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-4 col-xs-6">
							<div class="footer">
								<h5 class="footer-title">Công ty TNHH PetSaigon</h5>
								<p>Shop là tất cả tâm huyết của 1 nhóm bạn sinh viên Đại Học Nông Lâm với tinh thần khởi nghiệp.</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>285/55 Cách Mạng Tháng Tám, phường 12, quận 10, thành phố Hồ Chí Minh.</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>028.38.68.36.79</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>petsaigononline@gmail.com</a></li>
								</ul>
							</div>
						</div>

						<!-- <div class="col-md-3 col-xs-6">
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
						</div> -->

						<div class="clearfix visible-xs"></div>

						<div class="col-md-4 col-xs-6">
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

						<div class="col-md-4 col-xs-6">
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
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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

		
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/slick.min.js"></script>
<script src="/js/nouislider.min.js"></script>
<script src="/js/jquery.zoom.min.js"></script>
<script src="/js/main.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("button.add-to-cart-btn").click(function(){
		var id = $(this).parent().find("p").text();
		
		var cartList = $(".cart-list");
		var data={"id": id, "quality" : 1};
		$.ajax({
			 type : "POST",
	          contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
	          url : "/u/addProduct", 
	          data : data, 
	          dataType : 'json', 
	          cache : false, 
	          timeout : 600000, 
	          success : function(orderProduct) {
	        	  
	        	  cartList.empty();
	        	  var od = orderProduct.orderdetails;
	        	  for (var i in od){
	        	  var orderProductPrice = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(od[i].price);
	        	  var html ="<div class='product-widget'>"
							 +"<div class='product-img'>"
							 	+"<img src=' "+od[i].productOrder.img+"' alt=''>"
						   	 +"</div>"
						     +"<div class='product-body'>"
								+"<h3 class='product-name'><a href='/u/productDetail/"+od[i].productOrder.id+"'>"+od[i].productOrder.productName+"</a></h3>"
							 	+"<h4 class='product-price'><span class='qty'>"+od[i].quality+"x</span>"+orderProductPrice+"</h4>"
						     +"</div>"
						   		+"<button class='delete' onclick='deleteProduct("+od[i].productOrder.id+")'><i class='fa fa-close'></i></button>"
							+"</div>";
					$(".cart-list").append(html);
	        	  }
	        	  console.log(orderProduct);
	        	  
	        	//other
	        	var length = orderProduct.orderdetails.length;
		       $(".dropdown-toggle .qty").text(length);
		       var totalOrderPrice = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(orderProduct.totalPrice);
		       
		       $(".cart-summary small").text(length+ " Item(s) selected")
		       $(".cart-summary h5").text(totalOrderPrice);
	          },
	          error : function() {
	           alert("Error");
	         }
			});
	});

	
});
</script>
	</body>
</html>
