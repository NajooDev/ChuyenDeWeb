<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
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
    <title>Chi tiết sản phẩm</title>
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
	.error{
		color:red;
	}
	.rounded-circle {
    border-radius: 0%!important;
}
.sub_img {
    display: flex;
    justify-content: space-between;
    margin-bottom: 30px;
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
                        <!-- <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="/assets/images/users/1.jpg" alt="user" class="profile-pic me-2">Markarn Doe
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown"></ul>
                        </li> -->
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
                        <a href="/logout" class="link" data-toggle="tooltip" title="" data-original-title="Logout"><i
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
                        <!-- <h3 class="page-title mb-0 p-0">Profile</h3> -->
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/admin/productList">Danh sách sản phẩm</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Chi tiết sản phẩm</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-6 col-4 align-self-center">
                        <!-- <div class="text-end upgrade-btn">
                            <a href="https://www.wrappixel.com/templates/materialpro/"
                                class="btn btn-danger d-none d-md-inline-block text-white" target="_blank">Upgrade to
                                Pro</a>
                        </div> -->
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
                <!-- Row -->
                <form:form action="" method="post" modelAttribute="productInAdmin" class="form-horizontal form-material mx-2">
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-body profile-card">
                                <center class="mt-4"> <img src="${productInAdmin.img}"
                                        class="rounded-circle" width="150" />
                                    <h4 class="card-title mt-2">Hình sản phẩm</h4>
                                </center>
                            </div>
                            
                            
                        </div>
                        
                        <div class="sub_img">
                        	<img src="${productInAdmin.small_img_1}"
                                        class="img_small_1" width="100" />
                            <img src="${productInAdmin.small_img_2}"
                                        class="img_small_2" width="100" />
                            <img src="${productInAdmin.small_img_3}"
                                        class="img_small_3" width="100" />
                        </div>
                        
                        <div class="card form-material">
                        	<div class="card-body">
                        		<div class="form-group">
                                 	<label class="col-md-12 mb-0">Image small 1</label>
                                 	<div class="col-md-12">
                                    	<form:input type="text" path="small_img_1"
                                                class="form-control ps-0 form-control-line img_small_link_1" />
                                 	</div>
                            	</div>
                            	<div class="form-group">
                                 	<label class="col-md-12 mb-0">Image small 2</label>
                                 	<div class="col-md-12">
                                    	<form:input type="text" path="small_img_2"
                                                class="form-control ps-0 form-control-line img_small_link_2" />
                                 	</div>
                            	</div>
                            	<div class="form-group">
                                 	<label class="col-md-12 mb-0">Image small 3</label>
                                 	<div class="col-md-12">
                                    	<form:input type="text" path="small_img_3"
                                                class="form-control ps-0 form-control-line img_small_link_3" />
                                 	</div>
                            	</div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                                
                                    <form:input path="id" style="display:none"/>
                                    <div class="form-group">
                                        <form:label path="productName" class="col-md-12 mb-0">Tên sản phẩm</form:label>
                                        <div class="col-md-12">
                                            <form:input type="text" path="productName" 
                                                class="form-control ps-0 form-control-line" />
                                        </div>
                                        <form:errors path="productName" cssClass="error" />
                                    </div>
                                    <div class="form-group">
                                        <form:label path="price" for="example-email" class="col-md-12">Giá</form:label>
                                        <div class="col-md-12">
                                            <form:input path="price" 
                                                class="form-control ps-0 form-control-line" name="example-email"
                                                id="example-email" onblur="if(this.value == '') {this.value = '${productInAdmin.price}';}" onfocus="this.value = '';"/>
                                        </div>
                                        <form:errors path="price" cssClass="error" />
                                    </div>
                                    <div class="form-group">
                                        <form:label path="img" class="col-md-12 mb-0">Image</form:label>
                                        <div class="col-md-12">
                                            <form:input type="text" path="img"
                                                class="form-control ps-0 form-control-line img_link" />
                                        </div>
                                        <form:errors path="img" cssClass="error" />
                                    </div>
                                    <div class="form-group">
                                        <form:label path="categoryBig" class="col-sm-12">Category Big</form:label>
                                        <div  class="col-sm-12 border-bottom">
                                            <form:select path="categoryBig" items="${cateBig}" class="form-select shadow-none ps-0 border-0 form-control-line" value="CategoryBig.id"/>
                                        </div>
                                        <form:errors path="categoryBig" cssClass="error" />
                                    </div>
                                    <div class="form-group">
                                        <form:label path="categorySmall" class="col-sm-12">Category Small</form:label>
                                        <div  class="col-sm-12 border-bottom">
                                            <form:select path="categorySmall" items="${cateSmall}" class="form-select shadow-none ps-0 border-0 form-control-line" />
                                        </div>
                                        <form:errors path="categorySmall" cssClass="error" />
                                    </div>
                                    <div class="form-group">
                                        <form:label path="description" class="col-md-12 mb-0">Description</form:label>
                                        <div class="col-md-12">
                                            <form:textarea path="description" rows="5" class="form-control ps-0 form-control-line"></form:textarea>
                                        </div>
                                        <form:errors path="description" cssClass="error" />
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                                            <button class="btn btn-success mx-auto mx-md-0 text-white">Submit</button>
                                        </div>
                                    </div>
                                
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                </form:form>
                <!-- Row -->
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
    
    <script type="text/javascript">
    $(document).ready( function () {
    	$('.img_link').blur(function () {
    		$(".rounded-circle").attr("src", $(this).val());
    	});
    	$('.img_small_link_1').blur(function () {
    		$(".img_small_1").attr("src", $(this).val());
    	});
    	$('.img_small_link_2').blur(function () {
    		$(".img_small_2").attr("src", $(this).val());
    	});
    	$('.img_small_link_3').blur(function () {
    		$(".img_small_3").attr("src", $(this).val());
    	});
    });
    </script>
</body>

</html>