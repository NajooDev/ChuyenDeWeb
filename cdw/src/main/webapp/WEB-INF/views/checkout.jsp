<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
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
    
<link type="text/css" rel="stylesheet" href="/css/checkout.css"/>
</head>
<body>

	<form action="/u/saveOrder"  method="post">
		<div class="container">
			<div class="row">

				<div class="col-md-6 information">
					<p class="title">
						<span class="title">Thông tin mua hàng</span>
					</p>

					<div class="center">
						<label for="customer.name" class="">Họ tên: (*)</label>
						<input id="customer.name" name="customer.name" type="text" value="${user.userName}" disabled>
						<br> 
						
						<label for="customer.address" class="">Địa chỉ:</label> 
						<input id="customer.address" name="customer.address" type="text" value="${user.address}" disabled>
						<br> 
						
						<label for="customer.email" class="">E-mail:(*)</label> 
						<input id="customer.email" name="customer.email" type="text"value="${user.email}" disabled> 
						<br> 
						
						<label for="customer.phone" class="">Điện thoại: </label> 
						<input id="customer.phone" name="customer.phone" type="text" value="${user.phone}" disabled> 
						<br> 
						
						<label for="customer.AnotherAddress" class="">Địa chỉ khác: </label> 
						<input id="customer.AnotherAddress" type="text" value="" name="otherAddress"> 
						<br>

					</div>
				</div>

				<div class="col-md-6 product" style="background-color: #fafafa">
					<div class="title_product">
						<span class="title">Đơn hàng (2 sản phẩm)</span>
					</div>

					<table class="product-table table">
						<tbody>
						<c:forEach items="${order.orderdetails}" var="od">
							<tr class="product">
								<td class="product__image">
									<div class="product-thumbnail">
										<div class="product-thumbnail__wrapper" data-tg-static="">
											<img
												src="${od.productOrder.img}"
												alt="áo cho chó" class="product-thumbnail__image">
										</div>
										<!-- <span class="product-thumbnail__quantity">1</span> -->
									</div>
								</td>
								<td class="product__description">
								<span class="product__description__name">${od.productOrder.productName}</span> 
								<span>Số lượng : ${od.quality}</span></td>
								<td class="product__price">${od.productOrder.currencyFormat()}</td>
							</tr>
						</c:forEach>
							<!-- <tr class="product">
								<td class="product__image">
									<div class="product-thumbnail">
										<div class="product-thumbnail__wrapper" data-tg-static="">
											<img
												src="//bizweb.dktcdn.net/thumb/thumb/100/092/840/products/dam-ngoi-sao-cho-cho-meo.png?v=1669018214190"
												alt="áo cho chó" class="product-thumbnail__image">
										</div>
										<span class="product-thumbnail__quantity">1</span>
									</div>
								</td>
								<td class="product__description"><span
									class="product__description__name"> Đầm Cho Chó Mèo Họa
										Tiết Ngôi Sao </span> <span>Số lượng :1</span></td>
								<td class="product__price">170.000₫</td>
							</tr> -->
						</tbody>
					</table>

					<div class="total">
						<span class="totalTitle">Tổng cộng: </span> <span
							class="totalPrice">${order.currencyFormat()}</span>
					</div>
					
					<div class="summary">
						<a href="/u/cart">❮ Quay về giỏ hàng</a>
						<button>Đặt hàng</button>
					</div>
				</div>
			</div>

		</div>
	</form>

	<!--mdb4-->
<script type="text/javascript" src="/vendor/js/jquery.min.js"></script>
<script type="text/javascript" src="/vendor/js/popper.min.js"></script>
<script type="text/javascript" src="/vendor/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/vendor/js/mdb.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>