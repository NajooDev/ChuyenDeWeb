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
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="/">Trang chủ</a></li>
                    <li class="active">${category.categoryName}</li>
                </ul>
            </div>
        </div>
        <!-- /row -->
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
            <!-- ASIDE -->
            <div id="aside" class="col-md-3">
                <!-- aside Widget -->
                <div class="aside">
                    <div class="aside-header">
                        <h3 class="aside-title">Categories</h3>
                        <button class="aside-button">Xác nhận</button>
                    </div>

                    <div class="checkbox-filter">

                        <div class="input-checkbox">
                            <input type="checkbox" id="category-1" class="category" name="category">
                            <label for="category-1">
                                <span></span>
                                Laptops
                                <small>(120)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="category-2" class="category" name="category">
                            <label for="category-2">
                                <span></span>
                                Smartphones
                                <small>(740)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="category-3" class="category" name="category">
                            <label for="category-3">
                                <span></span>
                                Cameras
                                <small>(1450)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="category-4" class="category" name="category">
                            <label for="category-4">
                                <span></span>
                                Accessories
                                <small>(578)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="category-5" class="category" name="category">
                            <label for="category-5">
                                <span></span>
                                Laptops
                                <small>(120)</small>
                            </label>
                        </div>

                        <div class="input-checkbox">
                            <input type="checkbox" id="category-6" class="category" name="category">
                            <label for="category-6">
                                <span></span>
                                Smartphones
                                <small>(740)</small>
                            </label>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->

                <!-- aside Widget -->
<!--                <div class="aside">-->
<!--                    <h3 class="aside-title">Price</h3>-->
<!--                    <div class="price-filter">-->
<!--                        <div id="price-slider"></div>-->
<!--                        <div class="input-number price-min">-->
<!--                            <input id="price-min" type="number">-->
<!--                            <span class="qty-up">+</span>-->
<!--                            <span class="qty-down">-</span>-->
<!--                        </div>-->
<!--                        <span>-</span>-->
<!--                        <div class="input-number price-max">-->
<!--                            <input id="price-max" type="number">-->
<!--                            <span class="qty-up">+</span>-->
<!--                            <span class="qty-down">-</span>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
                <!-- /aside Widget -->

                <!-- aside Widget -->
                <div class="aside">
                    <div class="aside-header">
                        <h3 class="aside-title">Brand</h3>
                        <button class="aside-button">Xác nhận</button>
                    </div>
                    <div class="checkbox-filter">
                        <div class="input-checkbox">
                            <input type="checkbox" id="brand-1">
                            <label for="brand-1">
                                <span></span>
                                SAMSUNG
                                <small>(578)</small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="brand-2">
                            <label for="brand-2">
                                <span></span>
                                LG
                                <small>(125)</small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="brand-3">
                            <label for="brand-3">
                                <span></span>
                                SONY
                                <small>(755)</small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="brand-4">
                            <label for="brand-4">
                                <span></span>
                                SAMSUNG
                                <small>(578)</small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="brand-5">
                            <label for="brand-5">
                                <span></span>
                                LG
                                <small>(125)</small>
                            </label>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="brand-6">
                            <label for="brand-6">
                                <span></span>
                                SONY
                                <small>(755)</small>
                            </label>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->

                <!-- aside Widget -->
                <!-- <div class="aside">
                    <h3 class="aside-title">Top selling</h3>
                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product01.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00
                                <del class="product-old-price">$990.00</del>
                            </h4>
                        </div>
                    </div>

                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product02.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00
                                <del class="product-old-price">$990.00</del>
                            </h4>
                        </div>
                    </div>

                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product03.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00
                                <del class="product-old-price">$990.00</del>
                            </h4>
                        </div>
                    </div>
                </div> -->
                <!-- /aside Widget -->
            </div>
            <!-- /ASIDE -->

            <!-- STORE -->

            <div id="store" class="col-md-9">
                <!-- store top filter -->
                <form action="/HTMT/ProductListIncrease" method="post">
                    <div class="store-filter clearfix">
                        <div class="store-sort">
                            <label>
                                Sort By:
                                <select class="input-select" name="selectSort">
                                    <option value="0">Popular</option>
                                    <option value="1">Position</option>
                                </select>
                            </label>

                            <button class="aside-button">Xác nhận</button>
                        </div>
                    </div>
                </form>

                <!-- /store top filter -->

                <!-- store products -->
					<div class="row">

						<!-- Product -->
						<c:forEach items="${productList}" var="product">
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<a class="product-img" href="#"> <img src="${product.img}"
										alt="">
									</a>
									<div class="product-body">
										<h3 class="product-name">
											<a href="/productDetail/${product.id}">${product.productName}</a>
										</h3>
										<h4 class="product-price">
											<fmt:formatNumber type="number" maxFractionDigits="3"
												value="${product.price}" />
											đ
										</h4>
									</div>
									<div class="add-to-cart">
									<p hidden>${product.id}</p>
										<button class="add-to-cart-btn">
											<i class="fa fa-shopping-cart"></i> add to cart
										</button>
									</div>
								</div>
							</div>
						</c:forEach>

						<!-- /product -->

						
					</div>
					<!-- /store products -->

                <!-- store bottom filter -->
                <div class="store-filter clearfix">
                    <!-- <span class="store-qty">Showing 20-100 products</span> -->
                    <ul class="store-pagination">
                    	<c:forEach begin="1" end="${totalpage}" var="i">
                    	<c:choose>
                             <c:when test="${pageSelected == i}">
                                  <li><a href="${category.id}?page=${i}" class="active">${i}</a></li>
                             </c:when>
                             <c:otherwise>
                                  <li><a href="${category.id}?page=${i}">${i}</a></li>
                             </c:otherwise>
						</c:choose>
						</c:forEach>
                        <!-- <li class="active">1</li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li> -->
                    </ul>
                </div>
                <!-- /store bottom filter -->
            </div>
            <!-- /STORE -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

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
<script>
    // function myFunction() {
    // 	var checkBox = document.getElementById("category-1");
    // 	if (checkBox.checked == true){
    // 		console.log("checked");
    // 		document.getElementById("category-2").setAttribute("checked", "unchecked");
    // 		document.getElementById("category-3").setAttribute("checked", "unchecked");
    // 		document.getElementById("category-4").setAttribute("checked", "unchecked");
    // 		document.getElementById("category-5").setAttribute("checked", "unchecked");
    // 		document.getElementById("category-6").setAttribute("checked", "unchecked");
    // 	} else {
    // 		console.log("unchecked");
    // 	}
    // }
    $(document).ready(function () {

        $('.category').click(function () {
            $('.category').not(this).prop('checked', false);
        });

        $("button.add-to-cart-btn").click(function(){
    		var id = $(this).parent().find("p").text();
    		
    		var cartList = $(".cart-list");
    		var data={"id": id, "quality" : 1};
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
