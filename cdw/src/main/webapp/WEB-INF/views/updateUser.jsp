<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
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
    
    <link type="text/css" rel="stylesheet" href="/css/updateUser.css"/>
    <!-- <link type="text/css" rel="stylesheet" href="/css/checkout.css"/> -->
    
        <!--để dùng thư viện datatable (ứng dụng: để thực hiện được thêm các chức năng cho table như: sắp xêp, phân trang , tìm kiếm, add, delete,...-->
    <link href="/dt/datatables.min.css" rel="stylesheet"/>
</head>
<body>

<!-- HEADER -->
<jsp:include page="header.jsp"></jsp:include>
<!-- /HEADER -->

	<div class="update-user">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1 class="heading">Thông tin người dùng</h1>
					<form:form action="/updateUser" method="post"
						modelAttribute="userShow">
						<form:input path="id" style="display:none"/>
						<div class="item">
							<form:label path="userName" class="title">Username:</form:label>
							<form:input path="userName" placeholder="Username"
								class="input-update-user" />
							<form:errors path="userName" cssClass="error" />
						</div>
						<div class="item">
							<form:label path="password" class="title">Password:</form:label>
							<form:input type="password" path="password" placeholder="Nhập mật khẩu"
								id="myInput" class="input-update-user" />
							<div class="show_password">
								<!-- An element to toggle between password visibility -->
                				<input type="checkbox" onclick="myFunction()">Show Password
							</div>
							<form:errors path="password" cssClass="error" />
						</div>
						<div class="item">
							<form:label path="birthday" class="title">Ngày sinh:</form:label>
							<form:input path="birthday" type="date"  value=""
								onfocus="this.value = '';"
								onblur="if(this.value == '') {this.value = '${userShow.birthday}';}"
								class="input-update-user" />
							<form:errors path="birthday" cssClass="error" />
						</div>
						<div class="item">
							<form:label path="sex" class="title">Giới tính:</form:label>
							<form:input path="sex" value=""
								onfocus="this.value = '';"
								onblur="if(this.value == '') {this.value = '${userShow.sex}';}"
								class="input-update-user" />
							<form:errors path="sex" cssClass="error" />
						</div>
						<div class="item">
							<form:label path="email" class="title">Email:</form:label>
							<form:input path="email" value=""
								onfocus="this.value = '';"
								onblur="if(this.value == '') {this.value = '${userShow.email}';}"
								class="input-update-user" />
							<form:errors path="email" cssClass="error" />
						</div>
						<div class="item">
							<form:label path="phone" class="title">Điện thoại:</form:label>
							<form:input path="phone" value=""
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = '${userShow.phone}';}" name="phone"
								class="input-update-user" />
							<form:errors path="phone" cssClass="error" />
						</div>
						<div class="item">
							<form:label path="address" class="title">Địa chỉ:</form:label>
							<form:input path="address" value=""
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = '${userShow.address}';}" name="address"
								class="input-update-user" />
							<form:errors path="address" cssClass="error" />
						</div>
						<div class="control-update">
							<input type="submit" value="Update"
								style="background-color: #D10024; color: #fff; outline: none; border: none; padding: 8px 18px;">
							<input type="hidden" value="" name="id">
						</div>
					</form:form>
				</div>
				
				<div class="col-md-6 productShow">
				<h1 class="heading">Lịch sử mua hàng</h1>
					<table id="myTable" style="width:100%" class="table table-hover" > <!--dùng mdb4 ở đây-->
					<thead>
        <tr>
            <th>Img</th>
            <th>Name</th>
            <th>Price</th>
            <th>Day Order</th>
        </tr>
        </thead>
        <tbody>
						<c:forEach items="${userOrderDetail}" var="od">
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
								<td class="product__price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${od.productOrder.price}" /> đ</td>
								<td>${od.dayOrder}</td>
							</tr>
						</c:forEach>
						</tbody>
   					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery Plugins -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/slick.min.js"></script>
<script src="/js/nouislider.min.js"></script>
<script src="/js/jquery.zoom.min.js"></script>
<script src="/js/main.js"></script>

<!--thư viện datatable-->
<script src="dt/datatables.min.js"></script>
<script>
$(document).ready( function () {
	 $('#myTable').DataTable( {
         pagingType: 'full_numbers',
     } );
});
	function myFunction() {
		var x = document.getElementById("myInput");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
</script>
</body>
</html>