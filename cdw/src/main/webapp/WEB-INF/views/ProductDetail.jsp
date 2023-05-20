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
		<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css"/>
		<link type="text/css" rel="stylesheet" href="/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="/css/slick-theme.css"/>
		<link type="text/css" rel="stylesheet" href="/css/nouislider.min.css"/>
		<link rel="stylesheet" href="/css/font-awesome.min.css">
		<link type="text/css" rel="stylesheet" href="/css/style.css"/>
		<link type="text/css" rel="stylesheet" href="/css/tmdt.css"/>
		<title>Electro - HTML Ecommerce Template</title>
    </head>
	<body>

	<!-- HEADER -->
		<jsp:include page="header.jsp"></jsp:include>
	<!-- /HEADER -->
		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
                <ul class="breadcrumb">					
                    <li class="home">
                        <a href="/"><span>Trang chủ</span></a>						
                        <!-- <span class="mr_lr">&nbsp;/&nbsp;</span> -->
                    </li>
                    <li>
                        <a class="changeurl" href="/do-cho-meo-shop-cho-meo"><span>${productDetail.categoryBig.categoryName}</span></a>						
                        <!-- <span class="mr_lr">&nbsp;/&nbsp;</span> -->
                    </li>
        
                    <li><strong><span>${productDetail.productName}</span></strong></li><li>
                </li></ul>
            </div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section section-padding">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- Product main img -->
					<div class="col-md-5 col-md-push-2">
						<div id="product-main-img">
							<div class="product-preview" style="height: 458px;">
								<img src="${productDetail.img}" alt="">
							</div>

							<c:forEach items="${productDetail.details}" var="img_product">
							<c:if test="${img_product.imgName != ''}">
								<div class="product-preview" style="height: 458px;">
									<img src="${img_product.imgName}" alt="">
								</div>
							</c:if>
							
							</c:forEach>
							<!-- <div class="product-preview" style="height: 458px;">
								<img src="https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bang-size-a28f5e42-8f72-41b2-aa1a-f78004c9c59e.png?v=1669015736987" alt="">
							</div>

							<div class="product-preview" style="height: 458px;">
								<img src="https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bang-size-a28f5e42-8f72-41b2-aa1a-f78004c9c59e.png?v=1669015736987" alt="">
							</div> -->
						</div>
					</div>
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<div id="product-imgs">
							<div class="product-preview" style="height: 155px;">
								<img src="${productDetail.img}" alt="" style="height: 100%;">
							</div>
							<c:forEach items="${productDetail.details}" var="img_product">
							<c:if test="${img_product.imgName != ''}">
							<div class="product-preview" style="height: 155px;">
								<img src="${img_product.imgName}" alt="" style="height: 100%;">
							</div>
							</c:if>
							</c:forEach>
							<!-- <div class="product-preview" style="height: 155px;">
								<img src="https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bang-size-a28f5e42-8f72-41b2-aa1a-f78004c9c59e.png?v=1669015736987" alt="" style="height: 100%;">
							</div>

							<div class="product-preview" style="height: 155px;">
								<img src="https://bizweb.dktcdn.net/thumb/large/100/092/840/products/bang-size-a28f5e42-8f72-41b2-aa1a-f78004c9c59e.png?v=1669015736987" alt="" style="height: 100%;">
							</div> -->
						</div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">${productDetail.productName}</h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<a class="review-link">Xem 3 đánh giá</a>
							</div>
							<div>
								<h3 class="product-price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${productDetail.price}" />đ</h3>
								<span class="product-available">In Stock</span>
							</div>
                            <div class="number_product">
                                        <input type="number" name="" id="" class="number" value="1" disabled>
                                        <div class="up_down">
                                            <button class="add_product">+</button>
                                            <button class="degree_product">-</button>
                                        </div>
                                    </div>
							<div class="add-to-cart" style="margin-top: 60px">
								
                                    
								 	<button class="add-to-cart-btn"  pid="${productDetail.id}">
										<i class="fa fa-shopping-cart"></i>
										add to cart
									</button>
								</a>
							</div>
							<!-- <ul class="product-btns">
								<li><a href="#"><i class="fa fa-heart-o"></i> add to wishlist</a></li>
								<li><a href="#"><i class="fa fa-exchange"></i> add to compare</a></li>
							</ul> -->

							<!-- <ul class="product-links">
								<li>Share:</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
							</ul> -->

						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>
								<li><a data-toggle="tab" href="#tab2">Details</a></li>
								<li class="comment"><a data-toggle="tab" href="#tab3">Reviews (3)</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
											<p>${productDetail.description}</p>
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12">
											<p>${productDetail.description}</p>
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">John</h5>
															<p class="date">27 DEC 2018, 8:0 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
														</div>
													</li>
												</ul>
												<ul class="reviews-pagination">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
												</ul>
											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										<div class="col-md-3">
											<div id="review-form">
												<form class="review-form">
													<input class="input" type="text" placeholder="Your Name">
													<input class="input" type="email" placeholder="Your Email">
													<textarea class="input" placeholder="Your Review"></textarea>
													<div class="input-rating">
														<span>Your Rating: </span>
														<div class="stars">
															<input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
															<input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
															<input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
															<input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
															<input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
														</div>
													</div>
													<button class="primary-btn">Submit</button>
												</form>
											</div>
										</div>
										<!-- /Review Form -->
									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- Section -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title">
                            <h4 class="title"><a href="">SẢN PHẨM LIÊN QUAN</a></h4>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="products-tabs product-last">
                            <!-- <div class="tab-pane active"> -->
                            <!-- <div class="products-slick"> -->
                            <div class="product">
                                <a class="product-img" href="#">
                                    <img src="https://bizweb.dktcdn.net/100/092/840/products/bo-thuc-an-tu-dong-cho-cho-meo.jpg?v=1679631152000"
                                        alt="">
                                </a>
                                <div class="product-body">
                                    <!-- <p class="product-category">Category</p> -->
                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                    <h4 class="product-price">$980.00</h4>
                                </div>
                                <div class="add-to-cart">
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to
                                        cart</button>
                                </div>
                            </div>
        
                            <div class="product">
                                <a class="product-img" href="#">
                                    <img src="https://bizweb.dktcdn.net/100/092/840/products/bo-thuc-an-tu-dong-cho-cho-meo.jpg?v=1679631152000"
                                        alt="">
                                </a>
                                <div class="product-body">
                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                    <h4 class="product-price">$980.00</h4>
                                </div>
                                <div class="add-to-cart">
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to
                                        cart</button>
                                </div>
                            </div>
        
                            <div class="product">
                                <a class="product-img" href="#">
                                    <img src="https://bizweb.dktcdn.net/100/092/840/products/bo-thuc-an-tu-dong-cho-cho-meo.jpg?v=1679631152000"
                                        alt="">
                                </a>
                                <div class="product-body">
                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                    <h4 class="product-price">$980.00</h4>
                                </div>
                                <div class="add-to-cart">
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to
                                        cart</button>
                                </div>
                            </div>
        
                            <div class="product">
                                <a class="product-img" href="#">
                                    <img src="https://bizweb.dktcdn.net/100/092/840/products/bo-thuc-an-tu-dong-cho-cho-meo.jpg?v=1679631152000"
                                        alt="">
                                </a>
                                <div class="product-body">
                                    <h3 class="product-name"><a href="#">product name goes here</a></h3>
                                    <h4 class="product-price">$980.00</h4>
                                </div>
                                <div class="add-to-cart">
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to
                                        cart</button>
                                </div>
                            </div>
                            <!--product-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- /Section -->

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

		<!-- jQuery Plugins -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/slick.min.js"></script>
<script src="/js/nouislider.min.js"></script>
<script src="/js/jquery.zoom.min.js"></script>
<script src="/js/main.js"></script>

<script src="/js/cdw.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("button.add-to-cart-btn").click(function(){
		var id = $(this).attr("pid");
		
		var number = $("input.number").val();
		console.log(number);
		
		var cartList = $(".cart-list");
		var data={"id": id, "quality" :number};
		$.ajax({
			 type : "POST",
	          contentType : "application/x-www-form-urlencoded; charset=UTF-8", //dữ liệu trong body muốn gửi là loại dữ liệu gì
	          url : "/addProduct", //controller trả về json
	          data : data, //dữ liệu muốn gửi
	          dataType : 'json', //mong muốn response trả về loại dữ liệu gì
	          cache : false, //Một giá trị Boolean cho biết liệu trình duyệt có lưu các trang được yêu cầu vào bộ đệm ẩn hay không. Mặc định là đúng
	          timeout : 600000, //Thời gian chờ cục bộ (tính bằng mili giây) cho yêu cầu
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
								+"<h3 class='product-name'><a href='#'>"+od[i].productOrder.productName+"</a></h3>"
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
