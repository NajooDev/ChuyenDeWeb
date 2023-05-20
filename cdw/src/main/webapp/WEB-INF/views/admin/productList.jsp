<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, materialpro admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, materialpro admin lite design, materialpro admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Material Pro Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Material Pro Lite Template by WrapPixel</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/materialpro-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/images/favicon.png">
    <!-- Custom CSS -->
    <link href="/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond./js/admin/1.4.2/respond.min.js"></script>
<![endif]-->

<style type="text/css">
img.product-thumbnail__image {
    width: 50px;
}
</style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand ms-4" href="index.html">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="/assets/images/logo-light-icon.png" alt="homepage" class="dark-logo" />

                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="/assets/images/logo-light-text.png" alt="homepage" class="dark-logo" />

                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-white d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <ul class="navbar-nav d-lg-none d-md-block ">
                        <li class="nav-item">
                            <a class="nav-toggler nav-link waves-effect waves-light text-white "
                                href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav me-auto mt-md-0 ">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->

                        <li class="nav-item search-box">
                            <a class="nav-link text-muted" href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search" style="display: none;">
                                <input type="text" class="form-control" placeholder="Search &amp; enter"> <a
                                    class="srh-btn"><i class="ti-close"></i></a> </form>
                        </li>
                    </ul>

                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav">
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <%-- <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="/userInformation/${user.id}" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="/assets/images/users/1.jpg" alt="user" class="profile-pic me-2">${user.userName}
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown"></ul>
                        </li> --%>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="/admin/userList" aria-expanded="false">
                                <i class="mdi me-2 mdi-account-check"></i><span class="hide-menu">Quản lý người dùng</span></a>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link active"
                                href="/admin/productList" aria-expanded="false"><i class="mdi me-2 mdi-table"></i><span
                                    class="hide-menu">Quản lý sản phẩm</span></a></li>
                         <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="/admin/orderList" aria-expanded="false">
                                <i class="mdi me-2 mdi-account-check"></i><span class="hide-menu">Quản lý đơn hàng</span></a>
                        </li>
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
            <div class="sidebar-footer">
                <div class="row">
                    <div class="col-12 link-wrap">
                        <!-- item-->
                        <a href="/" class="link" data-toggle="tooltip" title="" data-original-title="Logout"><i
                                class="mdi mdi-power"></i></a>
                    </div>
                </div>
            </div>
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <!-- <h3 class="page-title mb-0 p-0">Table</h3> -->
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/admin/productList">Danh sách sản phẩm</a></li>
                                    <!-- <li class="breadcrumb-item active" aria-current="page">Table</li> -->
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-6 col-4 align-self-center">
                        <div class="text-end upgrade-btn">
                            <a href="/admin/createProductInAdmin"
                                class="btn btn-danger d-none d-md-inline-block text-white">Add Product</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <%-- <h4 class="card-title">Danh sách người dùng</h4>
                                <h6 class="card-subtitle">Add class <code>.table</code></h6> --%>
                                <div class="table-responsive">
                                    <table id="myTable" class="table user-table">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0">#</th>
                                                <th class="border-top-0">Img</th>
                                                <th class="border-top-0">Name</th>
                                                <th class="border-top-0">Category Big</th>
                                                <th class="border-top-0">Category Small</th>
                                                <th class="border-top-0">Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${productListInAdmin}" var="product">
                                            <tr>
                                                <td>
                                                   	<div class="delete">
                                                        <button pid="${product.id}" class="btn btn-success mx-auto mx-md-0 text-white delete">Xóa</button>
                                                     </div>
                                                </td>
                                                    
                                                <td><img src="${product.img}" alt="áo cho chó" class="product-thumbnail__image"></td>    
                                                <td><a href="/admin/productInformation/${product.id}">${product.productName}</a></td>
                                                <td>${product.categoryBig.categoryName}</td>
                                                <td>${product.categorySmall.categoryName}</td>
                                                <td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${product.price}" />đ</td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer"> © 2021 Material Pro Admin by <a href="https://www.wrappixel.com/">wrappixel.com </a>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="/assets/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/assets/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/js/admin/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="/js/admin/waves.js"></script>
    <!--Menu sidebar -->
    <script src="/js/admin/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="/js/admin/custom.js"></script>
    
    <!--thư viện datatable-->
	<script src="/dt/datatables.min.js"></script>
    
    <script type="text/javascript">
    $(document).ready( function () {
    	$('#myTable').dataTable({
		    "bPaginate": false,
		    "bLengthChange": false,
		    "bFilter": true,
		    "bInfo": false,
		    "bAutoWidth": false });
	 let table = $('#myTable').DataTable();
     console.log(table);
	//delete một dòng khi tag <a> class delete được nhấn trong dòng đó
     $('#myTable tbody').on( 'click', 'button.delete', function () {
         table.row($(this).parents('tr')).remove().draw(); //thêm .draw() sau mỗi phương thức trong datatable để nó thay đổi
         
         let id =$(this).attr("pid");
         var data={"id": id};
			$.ajax({
				 type : "POST",
		          contentType : "application/x-www-form-urlencoded; charset=UTF-8", //dữ liệu trong body muốn gửi là loại dữ liệu gì
		          url : "/admin/deleteProductInAdmin", //controller trả về json
		          data : data, //dữ liệu muốn gửi
		          dataType : 'json', //mong muốn response trả về loại dữ liệu gì
		          cache : false, //Một giá trị Boolean cho biết liệu trình duyệt có lưu các trang được yêu cầu vào bộ đệm ẩn hay không. Mặc định là đúng
		          timeout : 600000, //Thời gian chờ cục bộ (tính bằng mili giây) cho yêu cầu
		          success : function(product) {
		          	console.log(product);
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