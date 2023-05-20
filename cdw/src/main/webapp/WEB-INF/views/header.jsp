
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> 
<!-- HEADER -->
		<header id="main-header">

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<div class="row">
						<!-- LOGO -->
					<div class="col-md-3">
						<div class="header-logo">
							<a href="/" class="logo">
								<img src="https://bizweb.dktcdn.net/100/092/840/themes/885495/assets/logo.png?1676876029121" alt="">
							</a>
						</div>
					</div>
					<!-- /LOGO -->

						<!-- SEARCH BAR -->
					<div class="col-md-5 ">

						<form action="/search" method="get">
							<input class="input" id="search_input" placeholder="Search here" name="productName">
							<button class="search-btn">Search</button>
						</form>
							<div id="liveSearch">
								<%-- <div class="product_search">
									<img src="https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-ngoi-sao-cho-cho-meo.png?v=1669018214190" alt="">
									<div class="product_search_detail">
										<h3 class="product-name">
												<a href="/productDetail/${product.id}">Đầm Cho Chó Mèo Họa Tiết Ngôi Sao</a>
											</h3>
											<h4 class="product-price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "170000" />đ</h4>
									</div>
								</div>
								<div class="product_search">
									<img src="https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-ngoi-sao-cho-cho-meo.png?v=1669018214190" alt="">
									<div class="product_search_detail">
										<h3 class="product-name">
												<a href="#">Đầm Cho Chó Mèo Họa Tiết Ngôi Sao</a>
											</h3>
											<h4 class="product-price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "170000" />đ</h4>
									</div>
								</div>
								
								<div class="product_search">
									<img src="https://bizweb.dktcdn.net/thumb/large/100/092/840/products/dam-ngoi-sao-cho-cho-meo.png?v=1669018214190" alt="">
									<div class="product_search_detail">
										<h3 class="product-name">
												<a href="#">Đầm Cho Chó Mèo Họa Tiết Ngôi Sao</a>
											</h3>
											<h4 class="product-price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "170000" />đ</h4>
									</div>
								</div> --%>
								
							</div>
					</div>
					<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-4 clearfix">
							<div class="header-ctn" style="display:flex;">

								<div class="myAccountSign">
									<div class="avata">
										<img src="https://icons.veryicon.com/png/o/internet--web/55-common-web-icons/person-4.png" alt="">
									</div>
									<div class="sign">
									<c:choose>
         								<c:when test = "${user.userPermission == 'admin'}">
            								<p><a href="/admin/userList" id="signUp">Admin</a>/ <a href="/exitUser" id="login">Thoát</a></p>
											<p>Tài khoảng của bạn</p>
         								</c:when>
        								<c:when test = "${user !=null}">
            								<p><a href="/showUser" id="signUp">Tài khoảng</a>/ <a href="/exitUser" id="login">Thoát</a></p>
											<p>Tài khoảng của bạn</p>
         								</c:when>
         								<c:otherwise>
            								<p><a href="/signUp" id="signUp">Đăng Ký</a>/ <a href="/login" id="login">Đăng nhập</a></p>
											<p>Tài khoảng của bạn</p>
         								</c:otherwise>
         								
      								</c:choose>
									</div>
								</div>
								<!-- Cart -->
							<div class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
									<i class="fa fa-shopping-cart"></i>
									<span>Your Cart</span>
									<div class="qty">${order.getTotalOrder()}</div>
								</a>
								<div class="cart-dropdown">
									<div class="cart-list">
									<c:forEach items="${orderDetail}" var="od">
										<div class="product-widget">
											<div class="product-img">
												<img src="${od.productOrder.img}" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-name"><a href="#">${od.productOrder.productName}</a></h3>
												<h4 class="product-price"><span class="qty">${od.quality}x</span><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${od.price}" />đ</h4>
											</div>
											<button class="delete" onclick="deleteProduct(${od.productOrder.id})"><i class="fa fa-close"></i></button>
										</div>
										</c:forEach>
										
									</div>
									<div class="cart-summary">
										<small>${order.getTotalOrder()} Item(s) selected</small>
										<h5>Tổng: <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${order.totalPrice}" />đ</h5>
									</div>
									<div class="cart-btns">
										<a href="/cart">View Cart</a>
										<a href="/checkout">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
									</div>
								</div>
							</div>
							<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
					</div>
				</div>

				<!--menu bar-->
				<div class="menu_bar">
					<div class="container">
						<div class="row">
							<ul class="item-big ">
								<li class="nav-item"><a href="/">Trang chủ</a></li>
								<li class="nav-item">
									<a href="#">
										Shop của chó
										<i class="fa fa-solid fa-caret-down"></i>
									</a>

									<ul class="item-small">
										<li>
											<a class="caret-down" href="/categoryBig/1">Thức ăn cho chó</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/1">Thức ăn hạt khô</a></li>
												<li><a class="caret-down" href="/categorySmall/2">Pate</a></li>
												<li><a class="caret-down" href="/categorySmall/3">Xương gặm bánh thưởng</a></li>
												<li><a class="caret-down" href="/categorySmall/4">Sữa</a></li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/categoryBig/3">Thời trang cho chó</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/9">quần áo hằng ngày</a></li>
												<li><a class="caret-down" href="/categorySmall/10">quần áo lễ hội</a></li>
												<li><a class="caret-down" href="/categorySmall/11">giày vớ</a></li>
												<li><a class="caret-down" href="/categorySmall/12">rọ mõm</a></li>
												<li><a class="caret-down" href="/categorySmall/13">phụ kiện thời trang</a></li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/categoryBig/4">Sức khỏe cho chó</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/14">thực phẩm sức khỏe</a></li>
												<li><a class="caret-down" href="/categorySmall/15">chăm sóc da lông</a></li>
												<li><a class="caret-down" href="/categorySmall/16">xổ giun</a></li>
												<li><a class="caret-down" href="/categorySmall/17">diệt ve rận bọ chét</a></li>
												<li><a class="caret-down" href="/categorySmall/18">tai mắt miệng</a></li>
												<li><a class="caret-down" href="/categorySmall/19">tiêu hóa tiết niệu</a></li>
											</ul>
										</li>
										<li><a class="caret-down" href="/categoryBig/5">Vòng cổ dây dắt</a></li>
										<li>
											<a class="caret-down" href="/categoryBig/6">Vận chuyển chó</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/20">túi balo</a></li>
												<li><a class="caret-down" href="/categorySmall/21">địu</a></li>
												<li><a class="caret-down" href="/categorySmall/22">lồng vận chuyển</a></li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/categoryBig/7">Đồ chơi cho chó</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/23">đồ chơi huấn luyện</a></li>
												<li><a class="caret-down" href="/categorySmall/24">đồ chơi âm thanh</a></li>
												<li><a class="caret-down" href="/categorySmall/25">đồ chơi thư giản</a></li>
												<li><a class="caret-down" href="/categorySmall/26">đồ chơi cào gặm</a></li>
												<li><a class="caret-down" href="/categorySmall/27">đồ chơi vận động</a></li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/categoryBig/8">Dụng cụ sinh hoạt cho chó</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/28">dụng cụ ăn uống</a></li>
												<li><a class="caret-down" href="/categorySmall/29">dụng cụ vệ sinh khử mùi</a></li>
											</ul>
										</li>
										<li><a class="caret-down" href="/categoryBig/9">Sữa tắm nước hoa cho chó</a></li>
										<li><a class="caret-down" href="/categoryBig/10">Lồng Nhà nệm</a></li>
										<li><a class="caret-down" href="/categoryBig/11">Dụng Cụ Grooming</a></li>

									</ul>
								</li>
								<li class="nav-item"><a href="#">
									Shop của mèo
									<i class="fa fa-solid fa-caret-down"></i>
								</a>
									<ul class="item-small">
										<li>
											<a class="caret-down" href="/categoryBig/2">Thức ăn cho mèo</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/5">Thức ăn hạt khô</a></li>
												<li><a class="caret-down" href="/categorySmall/6">Pate</a></li>
												<li><a class="caret-down" href="/categorySmall/7">bánh thưởng snack</a></li>
												<li><a class="caret-down" href="/categorySmall/8">Sữa</a></li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/categoryBig/3">Thời trang cho mèo</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/9">quần áo hằng ngày</a></li>
												<li><a class="caret-down" href="/categorySmall/10">quần áo lễ hội</a></li>
												<li><a class="caret-down" href="/categorySmall/11">giày vớ</a></li>
												<li><a class="caret-down" href="/categorySmall/13">phụ kiện thời trang</a></li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/categoryBig/4">Sức khỏe cho mèo</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/14">thực phẩm sức khỏe</a></li>
												<li><a class="caret-down" href="/categorySmall/15">chăm sóc da lông</a></li>
												<li><a class="caret-down" href="/categorySmall/16">xổ giun</a></li>
												<li><a class="caret-down" href="/categorySmall/17">diệt ve rận bọ chét</a></li>
												<li><a class="caret-down" href="/categorySmall/18">tai mắt miệng</a></li>
												<li><a class="caret-down" href="/categorySmall/19">tiêu hóa tiết niệu</a></li>
											</ul>
										</li>
										<li><a class="caret-down" href="/categoryBig/5">Vòng cổ dây dắt</a></li>
										<li>
											<a class="caret-down" href="/categoryBig/6">Vận chuyển mèo</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/20">túi balo</a></li>
												<li><a class="caret-down" href="/categorySmall/21">địu</a></li>
												<li><a class="caret-down" href="/categorySmall/22">lồng vận chuyển</a></li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/categoryBig/7">Đồ chơi cho mèo</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/23">đồ chơi huấn luyện</a></li>
												<li><a class="caret-down" href="/categorySmall/24">đồ chơi âm thanh</a></li>
												<li><a class="caret-down" href="/categorySmall/25">đồ chơi thư giản</a></li>
												<li><a class="caret-down" href="/categorySmall/26">đồ chơi cào gặm</a></li>
												<li><a class="caret-down" href="/categorySmall/27">đồ chơi vận động</a></li>
											</ul>
										</li>
										<li>
											<a class="caret-down" href="/categoryBig/8">Dụng cụ sinh hoạt cho mèo</a>
											<i class="fa fa-solid fa-caret-right"></i>
											<ul class="item-smallest">
												<li><a class="caret-down" href="/categorySmall/28">dụng cụ ăn uống</a></li>
												<li><a class="caret-down" href="/categorySmall/29">dụng cụ vệ sinh khử mùi</a></li>
											</ul>
										</li>
										<li><a class="caret-down" href="/categoryBig/9">Sữa tắm nước hoa cho mèo</a></li>
										<li><a class="caret-down" href="/categoryBig/10">Lồng Nhà nệm</a></li>
										<li><a class="caret-down" href="/categoryBig/11">Dụng Cụ Grooming</a></li>

									</ul>
								</li>
								<!-- <li class="nav-item"><a href="#">Liên hệ</a></li> -->
							</ul>
						</div>
					</div>
				</div>

			</div>
		</header>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>	
		<script>
			// Header
			var header = document.querySelector('#main-header');
			var scrollable = 192;
			
			window.onscroll = function() {
				myFunc()
			}
			
			function myFunc() {
				if(window.pageYOffset >= scrollable) {
					header.classList.add('scrollable')
				}else {
					header.classList.remove('scrollable')
				}
			}
			
			$(document).ready(function() {
				$("#search_input").keyup(function(){
					let text = $("#search_input").val();
					
					
					var liveSearch = $("#liveSearch");
					if(text == "" || text == " "){
						liveSearch.css("display","none");
						liveSearch.empty();
					}else{
						var data ={"data": text};
						$.ajax({
						 type : "POST",
				          contentType : "application/x-www-form-urlencoded; charset=UTF-8", //dữ liệu trong body muốn gửi là loại dữ liệu gì
				          url : "/search_mini", //controller trả về json
				          data : data, //dữ liệu muốn gửi
				          dataType : 'json', //mong muốn response trả về loại dữ liệu gì
				          cache : false, //Một giá trị Boolean cho biết liệu trình duyệt có lưu các trang được yêu cầu vào bộ đệm ẩn hay không. Mặc định là đúng
				          timeout : 600000, //Thời gian chờ cục bộ (tính bằng mili giây) cho yêu cầu
				          success : function(data) {
				          	
				          	liveSearch.css("display","grid");
				          	liveSearch.empty();
				          	for (var i in data){
				          		var price = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(data[i].price);
				          		var html ="<div class='product_search'>" +
								"<img src=' "+data[i].img+" ' alt=''>"
								+"<div class='product_search_detail'>"
									+"<h3 class='product-name'> <a href='/productDetail/"+data[i].id+"'>"+data[i].productName+"</a></h3>"
									+"<h4 class='product-price'>"+ price+"</h4>"
								+"</div>"
							+"</div>"
							liveSearch.append(html);
				          	}
				          
				          },
				          error : function() {
				           alert("Error");
				         }
						});
					} 
					
				});
				
				/* //không focus thì sẽ display none live search
				$("#search_input").focusout(function(){
					var liveSearch = $("#liveSearch");
					liveSearch.css("display","none");
					liveSearch.empty();
				}); */
				
				/* $("button.delete").click(function(){
					console.log("delete");
				}); */
			});
			
			function deleteProduct(id){
				console.log(id);
				var cartList = $(".cart-list");
				var data={"id": id};
				$.ajax({
					 type : "POST",
			          contentType : "application/x-www-form-urlencoded; charset=UTF-8", //dữ liệu trong body muốn gửi là loại dữ liệu gì
			          url : "/deleteProduct", //controller trả về json
			          data : data, //dữ liệu muốn gửi
			          dataType : 'json', //mong muốn response trả về loại dữ liệu gì
			          cache : false, //Một giá trị Boolean cho biết liệu trình duyệt có lưu các trang được yêu cầu vào bộ đệm ẩn hay không. Mặc định là đúng
			          timeout : 600000, //Thời gian chờ cục bộ (tính bằng mili giây) cho yêu cầu
			          success : function(orderProduct) {
			        	  
			        	  cartList.empty();
			        	  var od = orderProduct.orderdetails;
			        	  
			        	  //nếu có sản phẩm thì nó mới vào đây rồi thêm từng sản phẩm lại vào trong cart 
			        	  if(od.length != 0){
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
			        	  }  
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
			}
		</script>
		<!-- /HEADER -->