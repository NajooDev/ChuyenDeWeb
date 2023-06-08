<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!--vendor css(để dùng mdb4 chỗ class table) dùng để tạo ra bảng và làm cho bảng đẹp hơn-->
   <!--  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <link rel="stylesheet" href="/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href="/vendor/css/mdb.min.css">
    <link rel="stylesheet" href="/vendor/css/style.css">

    để dùng thư viện datatable (ứng dụng: để thực hiện được thêm các chức năng cho table như: sắp xêp, phân trang , tìm kiếm, add, delete,...
    <link href="/dt/datatables.min.css" rel="stylesheet"/> -->
    
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css"/>
		<link type="text/css" rel="stylesheet" href="/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="/css/slick-theme.css"/>
		<link type="text/css" rel="stylesheet" href="/css/nouislider.min.css"/>
		<link rel="stylesheet" href="/css/font-awesome.min.css">
		<link type="text/css" rel="stylesheet" href="/css/style.css"/>
		<link type="text/css" rel="stylesheet" href="/css/tmdt.css"/>
		<link type="text/css" rel="stylesheet" href="/css/cart.css"/>
		<title>Cart</title>
		
		<style type="text/css">
			.header-ctn .dropdown{
				display:none;
			}
		</style>
</head>
<body>
<!-- HEADER -->
	<jsp:include page="header.jsp"></jsp:include>
<!-- /HEADER -->

<div class="center">
<div class="container">
    <div class="row">
    	<div class="col-md-4" style="background:white">
    		<div class="single-sidebar">
                    <h2 class="sidebar-title">Sản phẩm</h2>

					<c:forEach items="${productList1}" var="product">
                    <div class="thubmnail-recent">
                        <img src="${product.img}" class="recent-thumb" alt="">
                        <h2><a href="/u/productDetail/${product.id}" class="L-Affiliate-Tagged">${product.productName}</a></h2>
                        <div class="product-sidebar-price">
                            <ins>${product.currencyFormat()}</ins>
                        </div>
                    </div>

					</c:forEach>
                   <!--  <div class="thubmnail-recent">
                        <img src="https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/96225149.jpeg" class="recent-thumb" alt="">
                        <h2><a href="SingleProduct?id=22" class="L-Affiliate-Tagged">Iphone 12 pro max</a></h2>
                        <div class="product-sidebar-price">
                            <ins>893.54</ins>
                        </div>
                    </div>

                    <div class="thubmnail-recent">
                        <img src="https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/96225149.jpeg" class="recent-thumb" alt="">
                        <h2><a href="SingleProduct?id=9" class="L-Affiliate-Tagged">IPhone 12 Pro</a></h2>
                        <div class="product-sidebar-price">
                            <ins>722.53</ins>
                        </div>
                    </div>

                    <div class="thubmnail-recent">
                        <img src="https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/96225149.jpeg" class="recent-thumb" alt="">
                        <h2><a href="SingleProduct?id=7" class="L-Affiliate-Tagged">SamSung Galaxy A72 Thumb Black</a></h2>
                        <div class="product-sidebar-price">
                            <ins>478.28</ins>
                        </div>
                    </div> -->

                </div>
    	</div>
    	
    	<div class="col-md-8">
					<div class="product-content-right">
						<table id="myTable" style="width: 100%"
							class="table table-hover table-bordered">
							<!--dùng mdb4 ở đây-->
							<thead class="thead-dark">
								<tr>
									<th class="product-remove">&nbsp;</th>
									<th class="product-thumbnail">&nbsp;</th>
									<th class="product-name">Product</th>
									<th class="product-price">Price</th>
									<th class="product-quantity">Quantity</th>
									<th class="product-subtotal">Total</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${order.orderdetails}" var="od">
								<tr class="cart_item">
									<td class="product-remove">
									<a title="Remove this item" class="remove L-Affiliate-Tagged" pid="${od.productOrder.id}">×</a>
									<%-- <button class="delete" onclick="deleteProduct(${od.productOrder.id})"><i class="fa fa-close"></i></button> --%>
									</td>

									<td class="product-thumbnail"><a href="SingleProduct?id=7"
										class="L-Affiliate-Tagged"><img width="145" height="145"
											alt="poster_1_up" class="shop_thumbnail"
											src="${od.productOrder.img}"></a>
									</td>

									<td class="product-name"><a href="/u/productDetail/${od.productOrder.id}"
										class="L-Affiliate-Tagged">${od.productOrder.productName}</a>
									</td>

									<td class="product-price"><span class="amount" pPrice="${od.productOrder.price}">${od.productOrder.currencyFormat()}</span>
									</td>

									<td class="product-quantity">
										<div class="quantity buttons_added">

											<input class="changeQuantity" type="number" pId="${od.productOrder.id}" value="${od.quality}">

										</div>
									</td>

									<td class="product-subtotal"><span class="changeQuantity"
										pPrice="7">${od.currencyFormat()}</span></td>
								</tr>
								
								</c:forEach>
								<!-- <tr class="cart_item">
									<td class="product-remove"><a title="Remove this item"
										class="remove L-Affiliate-Tagged" pid="7" href="/Webdt/cart">×</a>
									</td>

									<td class="product-thumbnail"><a href="SingleProduct?id=7"
										class="L-Affiliate-Tagged"><img width="145" height="145"
											alt="poster_1_up" class="shop_thumbnail"
											src="https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/96225149.jpeg"></a>
									</td>

									<td class="product-name"><a href="SingleProduct?id=7"
										class="L-Affiliate-Tagged">SamSung Galaxy A72 Thumb Black</a>
									</td>

									<td class="product-price"><span class="amount">478.28</span>
									</td>

									<td class="product-quantity">
										<div class="quantity buttons_added">

											<input class="changeQuantity" type="number" pid="7" value="1">

										</div>
									</td>

									<td class="product-subtotal"><span class="changeQuantity"
										pid="7">478.28</span></td>
								</tr> -->

							</tbody>
						</table>
					</div>
				</div>
				
				<div class="cart_totals ">
                    <h2>Cart Totals</h2>

                     <table id="totalTable" style="width: 100%" class="table table-hover table-bordered">
                         <tbody>
                            <tr class="cart-subtotal">
                            	<th>Tổng tiền</th>
								<td><span class="total-cart">${order.currencyFormat()}</span></td>
							</tr>
							<tr class="shipping">
                                 <th>Thanh toán</th>
                                 <td><a class="checkout" href="/u/checkout">Thanh toán</a></td>
                             </tr>
                          </tbody>
                     </table>
                </div>
    </div>
</div>
</div>

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

<!--thư viện datatable-->
<script src="/dt/datatables.min.js"></script>

<script src="/js/cdw.js"></script>

<script type="text/javascript">

$(document).ready( function () {
	 $('#myTable tbody .product-quantity input.changeQuantity').blur(function () {
             value=$(this); 
             let quantity = value.val();

             console.log(quantity);
             let idProduct = value.attr("pId");
             console.log(idProduct);
             
             let parrent = $(this).parents('tr');

            /*  let price = parrent.find('td.product-price span').attr("pPrice");
             
             var totalProductPrice = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(quantity * price);
             console.log(totalProductPrice);
             
             parrent.find('td.product-subtotal span').text(totalProductPrice); */
             
             var data={"idProduct": idProduct, "quantity":quantity};
             $.ajax({
    			 type : "POST",
    	          contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
    	          url : "/u/addQuantityInCard", 
    	          data : data, 
    	          dataType : 'json', 
    	          cache : false, 
    	          timeout : 600000, 
    	          success : function(orderProduct) {
    	        	 console.log(orderProduct);
    	        	 let price = parrent.find('td.product-price span').attr("pPrice");
    	             
    	             var totalProductPrice = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(quantity * price);
    	             console.log(totalProductPrice);
    	             
    	             parrent.find('td.product-subtotal span').text(totalProductPrice);
    	             
    	             var totalOrderPrice = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(orderProduct.totalPrice);
    	             
    	             $("#totalTable .cart-subtotal .total-cart").text(totalOrderPrice);
    	          },
    	          error : function() {
    	           alert("Error");
    	         }
    			});
         });
	 
	 $('#myTable').dataTable({
		    "bPaginate": false,
		    "bLengthChange": false,
		    "bFilter": false,
		    "bInfo": false,
		    "bAutoWidth": false });
	 
	 let table = $('#myTable').DataTable();
     console.log(table);
	//delete một dòng khi tag <a> class delete được nhấn trong dòng đó
     $('#myTable tbody').on( 'click', 'a.remove', function () {
         table.row($(this).parents('tr')).remove().draw(); //thêm .draw() sau mỗi phương thức trong datatable để nó thay đổi
         
         let id =$(this).attr("pid");
         
         
         var data={"id": id};
			$.ajax({
				 type : "POST",
		          contentType : "application/x-www-form-urlencoded; charset=UTF-8", 
		          url : "/u/deleteProduct", 
		          data : data, 
		          dataType : 'json',
		          cache : false, 
		          timeout : 600000, 
		          success : function(orderProduct) {
		        	  
		        	  var totalOrderPrice = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(orderProduct.totalPrice);
	    	             
	    	          $("#totalTable .cart-subtotal .total-cart").text(totalOrderPrice);
		          	
		          },
		          error : function() {
		           alert("Error");
		         }
				});
     });
     } );
     
</script>
</body>
</html>