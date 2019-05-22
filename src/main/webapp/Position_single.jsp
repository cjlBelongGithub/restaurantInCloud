<%@ page import="javax.swing.plaf.basic.BasicEditorPaneUI" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!--[if lt IE 9 ]> <html lang="en" dir="ltr" class="no-js ie-old"> <![endif]-->
<!--[if IE 9 ]> <html lang="en" dir="ltr" class="no-js ie9"> <![endif]-->
<!--[if IE 10 ]> <html lang="en" dir="ltr" class="no-js ie10"> <![endif]-->
<!--[if (gt IE 10)|!(IE)]><!-->
<html lang="en" dir="ltr" class="no-js">
<!--<![endif]-->

<head>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- META TAGS                                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <meta charset="utf-8">
    <!-- Always force latest IE rendering engine -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile specific meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- PAGE TITLE                                -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <title>郑航食堂 | 首页，推荐，目录，优质评价</title>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- SEO METAS                                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <meta name="description" content="FRIDAY is a responsive multipurpose-ecommerce site template allows you to store coupons and promo codes from different brands and create store for deals, discounts, It can be used as coupon website such as groupon.com and also as online store">
    <meta name="	black friday, coupon, coupon codes, coupon theme, coupons, deal news, deals, discounts, ecommerce, friday deals, groupon, promo codes, responsive, shop, store coupons">
    <meta name="robots" content="index, follow">
    <meta name="author" content="CODASTROID">

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- PAGE FAVICON                              -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <link rel="apple-touch-icon" href="assets/images/favicon/apple-touch-icon.png">
    <link rel="icon" href="assets/images/favicon/favicon.ico">

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- GOOGLE FONTS                              -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600" rel="stylesheet">

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Include CSS Filess                        -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->

    <!-- Bootstrap -->
    <link href="<%=basePath%>assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="<%=basePath%>assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Linearicons -->
    <link href="<%=basePath%>assets/vendors/linearicons/css/linearicons.css" rel="stylesheet">

    <!-- Owl Carousel -->
    <link href="<%=basePath%>assets/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
    <link href="<%=basePath%>assets/vendors/owl-carousel/owl.theme.min.css" rel="stylesheet">

    <!-- Flex Slider -->
    <link href="<%=basePath%>assets/vendors/flexslider/flexslider.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="<%=basePath%>assets/css/base.css" rel="stylesheet">
    <link href="<%=basePath%>assets/css/style.css" rel="stylesheet">
    <link href="<%=basePath%>layui/css/layui.css" rel="stylesheet">
    <script src="<%=basePath%>layui/layui.js"></script>
    <style>
        .menuRedHeart{
            color: Red;
        }
        .menuWhiteHeart{
            color: white;
        }
    </style>
</head>

<body id="body" class="wide-layout preloader-active">

     


    <!--[if lt IE 9]>
        <p class="browserupgrade alert-error">
            You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.
        </p>
    <![endif]-->

    <noscript>
        <div class="noscript alert-error">
            For full functionality of this site it is necessary to enable JavaScript. Here are the <a href="http://www.enable-javascript.com/" target="_blank">
         instructions how to enable JavaScript in your web browser</a>.
        </div>
    </noscript>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- PRELOADER                                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Preloader -->
    <div id="preloader" class="preloader">
        <div class="loader-cube">
            <div class="loader-cube__item1 loader-cube__item"></div>
            <div class="loader-cube__item2 loader-cube__item"></div>
            <div class="loader-cube__item4 loader-cube__item"></div>
            <div class="loader-cube__item3 loader-cube__item"></div>
        </div>
    </div>
    <!-- End Preloader -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- WRAPPER                                   -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <div id="pageWrapper" class="page-wrapper">
        <!-- –––––––––––––––[ HEADER ]––––––––––––––– -->
        <header id="mainHeader" class="main-header">

            <!-- Top Bar -->
            <div class="top-bar bg-gray">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-md-4 is-hidden-sm-down">
                            <ul class="nav-top nav-top-left list-inline t-left">
                                <c:if test="${empty restaurant}">
                                    <li onclick="signInForRestaurant()">
                                        <a href="#">
                                            <i class="fa fa-user">
                                            </i>
                                            店家登录
                                        </a>
                                    </li>
                                </c:if>
                                <c:if test="${not empty restaurant}">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-user">
                                            </i>
                                            <strong style="color: #000">${restaurant.name}</strong>
                                        </a>
                                    </li>
                                </c:if>
                                <%--<li><a href="faq.html"><i class="fa fa-support"></i>顾客指引</a>
                                </li>--%>
                            </ul>
                        </div>
                        <script>
                            function signInForRestaurant(){
                                layui.use('layer', function(){
                                    var layer = layui.layer;
                                    layer.open({
                                        type: 2,
                                        title: '店家登录/注册',
                                        shadeClose: true,
                                        shade: false,
                                        maxmin: false, //开启最大化最小化按钮
                                        area: ['500px', '600px'],
                                        content: '<%=basePath%>login/getRestaurantLoginInfo.action'
                                    });
                                });
                            }
                        </script>
                        <div class="col-sm-12 col-md-8">
                            <ul class="nav-top nav-top-right list-inline t-xs-center t-md-right">
                                <c:if test="${empty sessionScope.user }">
                                    <li onclick="signIn()"><a href="#"><i class="fa fa-lock"></i>登入</a>
                                    </li>
                                    <li onclick="signUp()"><a href="#"><i class="fa fa-user"></i>注册</a>
                                    </li>
                                </c:if>
                                <c:if test="${not empty sessionScope.user }">
                                    <li onclick="InformationChange()"><a><i class="fa fa-lock"></i>${user.name}</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Top Bar -->
            <script>
                function signIn(){
                    layui.use('layer', function(){
                        var layer = layui.layer;
                        layer.open({
                            type: 2,
                            title: '登录/注册',
                            shadeClose: true,
                            shade: false,
                            maxmin: false, //开启最大化最小化按钮
                            area: ['500px', '600px'],
                            content: '<%=basePath%>signin.jsp'
                        });
                    });
                }
                function signUp(){
                    layui.use('layer', function(){
                        var layer = layui.layer;
                        layer.open({
                            type: 2,
                            title: '登录/注册',
                            shadeClose: true,
                            shade: false,
                            maxmin: false, //开启最大化最小化按钮
                            area: ['500px', '600px'],
                            content: '<%=basePath%>signup.html'
                        });
                    });
                }
                function InformationChange(){
                    layui.use('layer', function(){
                        var layer = layui.layer;

                        layer.open({
                            type: 2,
                            title: '信息维护',
                            shadeClose: true,
                            shade: false,
                            maxmin: true, //开启最大化最小化按钮
                            area: ['500px', '600px'],
                            content: '<%=basePath%>informationChange.action'
                        });
                    });
                }
            </script>
            <!-- Header Header -->
            <div class="header-header bg-white">
                <div class="container">
                    <div class="row row-rl-0 row-tb-20 row-md-cell">
                        <div class="brand col-md-3 t-xs-center t-md-left valign-middle">
                            <a href="#" class="logo">
                                <img src="<%=basePath%>assets/images/logo.png" alt="" width="250">
                            </a>
                        </div>
                        <div class="header-search col-md-9">
                            <div class="row row-tb-10 ">
                                <div class="col-sm-8">
                                    <form class="search-form">
                                        <div class="input-group">
                                            <input type="text" class="form-control input-lg search-input" placeholder="在这输入搜索内容..." required="required">
                                            <div class="input-group-btn">
                                                <div class="input-group">
                                                    <select class="form-control input-lg search-select">
                                                        <option>选择类型</option>
                                                        <option value="餐食">餐食</option>
                                                        <option value="窗口">窗口</option>
                                                        <option value="点评">点评</option>
                                                    </select>
                                                    <div class="input-group-btn">
                                                        <button type="submit" class="btn btn-lg btn-search btn-block">
                                                            <i class="fa fa-search font-16"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-sm-4 t-xs-center t-md-right">
                                    <!--<div class="header-cart">
                                        <a href="cart.html">
                                            <span class="icon lnr lnr-cart"></span>
                                            <div><span class="cart-number">0</span>
                                            </div>
                                            <span class="title">Cart</span>
                                        </a>
                                    </div>-->
                                    <div class="header-wishlist ml-20">
                                        <c:if test="${not empty user}">
                                            <a href="#" onclick="myLikeMenu()">
                                                <span class="icon lnr lnr-heart font-20"></span>
                                                <span class="title" style="color: #000;line-height: 40px;margin-left: 10px;">收藏</span>
                                            </a>
                                        </c:if>
                                        <c:if test="${not empty restaurant}">
                                            <a href="#" onclick="manageMyRestaurant()">
                                                <i class="fa fa-user font-30">
                                                </i>
                                                <strong style="color: #000">管理餐厅</strong>
                                            </a>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                function manageMyRestaurant(){
                    layui.use('layer', function() {
                        var layer = layui.layer;

                        layer.open({
                            type: 2,
                            title: '<strong>管理餐厅</strong>',
                            shadeClose: true,
                            shade: false,
                            maxmin: true, //开启最大化最小化按钮
                            area: ['893px', '700px'],
                            content: '<%=basePath%>restaurant/toManageAllMenuOfRestaurant.action'
                        });
                    })
                }
                function myLikeMenu(){
                    layui.use('layer', function() {
                        var layer = layui.layer;

                        layer.open({
                            type: 2,
                            title: '我的收藏',
                            shadeClose: true,
                            shade: false,
                            maxmin: true, //开启最大化最小化按钮
                            area: ['600px', '600px'],
                            content: '<%=basePath%>menu/myLikeMenu.action'
                        });
                    })
                }
            </script>
            <!-- End Header Header -->

            <!-- Header Menu -->
            <div class="header-menu bg-blue">
                <div class="container">
                    <nav class="nav-bar">
                        <div class="nav-header">
                            <span class="nav-toggle" data-toggle="#header-navbar">
		                        <i></i>
		                        <i></i>
		                        <i></i>
		                    </span>
                        </div>
                        <div id="header-navbar" class="nav-collapse">
                            <ul class="nav-menu">
                                <li class="active">
                                    <a href="<%=basePath%>homePage/first.action">首页</a>
                                </li>
                                <li>
                                    <a href="coupons_grid.html">推荐餐馆</a>
                                    <ul>
                                        <c:forEach items="${recommendRestaurant}" var="restaurant" begin="0" end="4">
                                            <li><a href="<%=basePath%>restaurant/getAllMenuOfTheRestaurant.action?restaurantId=${restaurant.id}">${restaurant.name}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </li>
                                <%--<li>
                                    <a href="stores_01.html">Stores</a>
                                    <ul>
                                        <li><a href="stores_01.html">Stores Search</a>
                                        </li>
                                        <li><a href="stores_02.html">Stores Categories</a>
                                        </li>
                                        <li><a href="store_single_01.html">Store Single 1</a>
                                        </li>
                                        <li><a href="store_single_02.html">Store Single 2</a>
                                        </li>
                                    </ul>
                                </li>--%>
                                <li>
                                    <a href="#">文章</a>
                                    <ul>
                                        <c:if test="${not empty sessionScope.user}">
                                            <li onclick="makeAPost()">
                                                <a href="#">发表文章</a>
                                            </li>
                                        </c:if>
                                        <script>
                                            function makeAPost() {
                                                layui.use('layer', function() {
                                                    var layer = layui.layer;

                                                    layer.open({
                                                        type: 2,
                                                        title: '发表文章',
                                                        shadeClose: true,
                                                        shade: false,
                                                        maxmin: true, //开启最大化最小化按钮
                                                        area: ['600px', '600px'],
                                                        content: '<%=basePath%>post/posting.action'
                                                    });
                                                })
                                            }
                                        </script>
                                        <li>
                                            <a href="#">浏览全部文章</a>

                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="contact_us_01.html">联系我们</a>
                                    <ul>
                                        <li><a href="contact_us_01.html">微信：cjh1059886465</a>
                                        </li>
                                        <li><a href="contact_us_02.html">QQ：1059886465</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#">个人中心</a>
                                    <ul>
                                        <c:if test="${not empty sessionScope.user }">
                                            <li><a onclick="InformationChange()" href="#">个人信息管理</a>
                                            </li>
                                        </c:if>
                                        <li><a href="#" onclick="myLikeMenu()">我的收藏</a></li>
                                        <li><a href="#" onclick="myComment()">发表的评论</a></li>
                                        <li><a href="#" onclick="showMyPost()">发表的文章</a></li>
                                        <li><a href="<%=basePath%>quit.action">退出</a>
                                        </li>
                                        <script>
                                            function myComment(){
                                                layui.use('layer', function(){
                                                    var layer = layui.layer;
                                                    layer.open({
                                                        type: 2,
                                                        title: '发表的评论',
                                                        shadeClose: true,
                                                        shade: false,
                                                        maxmin: true, //开启最大化最小化按钮
                                                        area: ['600px', '600px'],
                                                        content: '<%=basePath%>comment/myComment.action'
                                                    });
                                                });
                                            }
                                            function showMyPost() {
                                                layui.use('layer', function(){
                                                    var layer = layui.layer;
                                                    layer.open({
                                                        type: 2,
                                                        title: '发表的文章',
                                                        shadeClose: true,
                                                        shade: false,
                                                        maxmin: true, //开启最大化最小化按钮
                                                        area: ['600px', '600px'],
                                                        content: '<%=basePath%>post/myPost.action'
                                                    });
                                                });
                                            }
                                        </script>

                                        <%--<li><a href="404.html">404 页</a>
                                        </li>
                                        <li><a href="faq.html">FAQ Page</a>
                                        </li>
                                        <li><a href="cart.html">Cart Page</a>
                                        </li>
                                        <li>
                                            <a href="checkout_method.html">Checkout</a>
                                            <ul>
                                                <li><a href="checkout_method.html">Checkout method</a>
                                                </li>
                                                <li><a href="checkout_billing.html">Billing Information</a>
                                                </li>
                                                <li><a href="checkout_payment.html">Payment Information</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Contact Us</a>
                                            <ul>
                                                <li><a href="contact_us_01.html">Contact Us 1</a>
                                                </li>
                                                <li><a href="contact_us_02.html">Contact Us 2</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Deals Pages</a>
                                            <ul>
                                                <li><a href="deals_grid.html">Grid View</a>
                                                </li>
                                                <li><a href="deals_list.html">List View</a>
                                                </li>
                                                <li><a href="deal_single.html">Deal Single</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Coupons Pages</a>
                                            <ul>
                                                <li><a href="coupons_grid.html">Grid View</a>
                                                </li>
                                                <li><a href="coupons_grid_sidebar.html">Grid With Sidebar</a>
                                                </li>
                                                <li><a href="coupons_list.html">List View</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="terms_conditions.html">Terms &amp; conditions</a>
                                        </li>--%>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <%--<div class="nav-menu nav-menu-fixed">
                            <a href="#">Get Quote</a>
                        </div>--%>
                    </nav>
                </div>
            </div>
            <!-- End Header Menu -->

        </header>
        <!-- –––––––––––––––[ HEADER ]––––––––––––––– -->

        <!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
        <main id="mainContent" class="main-content">
            <!-- Page Container -->
            <div class="page-container ptb-60">
                <div class="container">
                    <div class="row row-rl-10 row-tb-20">
                        <%--<div class="page-sidebar col-sm-4 col-md-3">
                            <aside class="store-header-area panel t-center">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <figure class="pt-10 pl-10">
                                            <img src="assets/images/brands/store_logo.jpg" alt="">
                                        </figure>
                                    </div>
                                    <div class="col-xs-12">
                                        <div class="store-about ptb-30 prl-10">
                                            <h3 class="mb-10">${company.companyname}</h3>
                                            <div class="rating mb-10">
                                                <span class="rating-stars rate-allow" data-rating="3">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o star-active"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                                <span class="rating-reviews">
                                        ( <span class="rating-count">205</span> rates )
                                                </span>
                                            </div>
                                            <p class="mb-15">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio officiis at accusantium ducimus excepturi cumque ad commodi libero nihil rem voluptatibus veniam ipsa ullam esse quia quae fuga, quidem iusto.</p>
                                            <button class="btn btn-info">FOLLOW</button>
                                        </div>
                                    </div>
                                    <div class="col-xs-12">
                                        <div class="store-splitter-left">
                                            <header class="left-splitter-header prl-10 ptb-20 bg-lighter">
                                                <div class="row">
                                                    <div class="col-xs-6">
                                                        <h2>${fn:length(company.restaurants)}</h2>
                                                        <p>家餐厅</p>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        <h2>122</h2>
                                                        <p>Coupons</p>
                                                    </div>
                                                </div>
                                            </header>
                                            <div class="left-splitter-body prl-20 ptb-20">
                                                <div class="row row-rl-10 row-tb-10">
                                                    <div class="col-md-6 col-sm-4 col-xs-6">
                                                        <img src="assets/images/products/thumb_01.jpg" alt="">
                                                    </div>
                                                    <div class="col-md-6 col-sm-4 col-xs-6">
                                                        <img src="assets/images/products/thumb_02.jpg" alt="">
                                                    </div>
                                                    <div class="col-md-6 col-sm-4 col-xs-6">
                                                        <img src="assets/images/products/thumb_03.jpg" alt="">
                                                    </div>
                                                    <div class="col-md-6 col-sm-4 col-xs-6">
                                                        <img src="assets/images/products/thumb_04.jpg" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </aside>
                        </div>--%>
                        <div class="page-content col-sm-8 col-md-12">

                            <!-- Store Tabs Area -->
                            <div class="section store-tabs-area">
                                <h1 style="align-content: center"><span class="mb-10">${company.companyname}</span></h1>
                                <div class="tabs tabs-v1">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs panel" role="tablist">

                                        <li role="presentation" class="active">

                                                <a href="#deals" aria-controls="deals" role="tab" data-toggle="tab" aria-expanded="false">
                                                <i class="fa fa-comment mr-10"></i>窗口</a>
                                        </li>
                                        <%--<li role="presentation">
                                            <a href="#coupons" aria-controls="coupons" role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-star mr-10"></i>点评</a>
                                        </li>--%>
                                        <%--<li role="presentation" class="">
                                            <a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-user mr-10"></i>Reviews</a>
                                        </li>--%>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane ptb-20 active" id="deals">
                                            <section class="section deals-area">
                                                <div class="row row-masnory row-tb-20">
                                                    <c:forEach items="${requestScope.company.restaurants}" var="restaurant">
                                                        <div class="col-sm-12 col-lg-6">
                                                            <div class="deal-single panel">
                                                                <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="<%=basePath%>${restaurant.logo}">
                                                                    <%--<div class="label-discount left-20 top-15">-50%</div>
                                                                    <ul class="deal-actions top-15 right-20">
                                                                        <li class="like-deal" onclick="like(${restaurant.menuid})">

                                                                            <c:if test="${restaurant.liked}">
                                                                            <span class="menu${restaurant.menuid} menuRedHeart">
                                                                            </c:if>
                                                                            <c:if test="${!menu.liked}">
                                                                                <span class="menu${menu.menuid} ">
                                                                            </c:if>
                                                                                <i class="fa fa-heart"></i>
                                                                            </span>
                                                                        </li>

                                                                            &lt;%&ndash;<li class="share-btn">
                                                                                <div class="share-tooltip fade">
                                                                                    <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                                                    <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                                                    <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                                                    <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                                                </div>
                                                                                <span><i class="fa fa-share-alt"></i></span>
                                                                            </li>
                                                                            <li>&ndash;%&gt;
                                                                        <span>
                                <i class="fa fa-camera"></i>
                            </span>
                                                                        </li>
                                                                    </ul>--%>
                                                                    <div class="deal-store-logo">
                                                                        <img src="<%=basePath%>${restaurant.logo}" alt="">
                                                                    </div>
                                                                </figure>
                                                                <div class="bg-white pt-20 pl-20 pr-15">
                                                                    <div class="pr-md-10">
                                                                            <%--<div class="rating mb-10">
                                                                                <span class="rating-stars rate-allow" data-rating="5">
                                                                                    <i class="fa fa-star-o"></i>
                                                                                    <i class="fa fa-star-o"></i>
                                                                                    <i class="fa fa-star-o"></i>
                                                                                    <i class="fa fa-star-o"></i>
                                                                                    <i class="fa fa-star-o"></i>
                                                                                </span>
                                                                                <span class="rating-reviews">
                                                                ( <span class="rating-count">241</span> rates )
                                                                                </span>
                                                                            </div>--%>
                                                                        <h3 class="deal-title mb-10">
                                                                            <a href="<%=basePath%>restaurant/getAllMenuOfTheRestaurant.action?restaurantId=${restaurant.id}">${restaurant.name}</a>
                                                                        </h3>
                                                                        <ul class="deal-meta list-inline mb-10 color-mid">
                                                                            <li><i class="ico fa fa-map-marker mr-10"></i>${restaurant.position}</li>
                                                                                <%--<li><i class="ico fa fa-shopping-basket mr-10"></i>120 Bought</li>--%>
                                                                        </ul>
                                                                        <p class="text-muted mb-20">${restaurant.shortsaying}</p>
                                                                    </div>
                                                                    <%--<div class="deal-price pos-r mb-15">
                                                                        <h3 class="price ptb-5 text-right">
                                                                            <span class="price-sale">
                                                                                <c:if test="${menu.price != 0}">${menu.price}</c:if>
                                                                            </span>
                                                                                                            ${menu.saleprice}
                                                                        </h3>
                                                                    </div>--%>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>

                                                </div>
                                            </section>
                                        </div>
                                        <div role="tabpanel" class="tab-pane ptb-20" id="coupons">
                                            <section class="section coupons-area coupons-area-grid">
                                                <div class="row row-masnory row-tb-20">
                                                    <div class="col-sm-6">
                                                        <div class="coupon-single panel t-center">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="text-center p-20">
                                                                        <img class="store-logo" src="assets/images/coupons/coupon_07.jpg" alt="">
                                                                    </div>
                                                                    <!-- end media -->
                                                                </div>
                                                                <!-- end col -->

                                                                <div class="col-xs-12">
                                                                    <div class="panel-body">
                                                                        <ul class="deal-meta list-inline mb-10">
                                                                            <li class="color-green"><i class="ico lnr lnr-smile mr-5"></i>Verifed</li>
                                                                            <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>125 Used</li>
                                                                        </ul>
                                                                        <h4 class="color-green mb-10 t-uppercase">10% OFF</h4>
                                                                        <h5 class="deal-title mb-10">
                                                            <a href="#">10% off select XPS & Alienware laptops</a>
                                                        </h5>
                                                                        <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 01/01/2018</p>
                                                                        <div class="showcode">
                                                                            <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_07">Get Coupon Code</button>
                                                                            <div class="coupon-hide">X455-17GT-OL58</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- end col -->
                                                            </div>
                                                            <!-- end row -->
                                                        </div>

                                                        <div class="modal fade get-coupon-area" tabindex="-1" role="dialog" id="coupon_07">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content panel">
                                                                    <div class="modal-body">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                        <div class="row row-v-10">
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <img src="assets/images/brands/store_logo.jpg" alt="">
                                                                                <h3 class="mb-20">Save 30% off New Domains Names</h3>
                                                                                <p class="color-mid">Not applicable to ICANN fees, taxes, transfers,or gift cards. Cannot be used in conjunction with any other offer, sale, discount or promotion. After the initial purchase term.</p>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <a href="#" class="btn btn-link">Visit Our Store</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <h6 class="color-mid t-uppercase">Click below to get your coupon code</h6>
                                                                                <a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <div class="like-report mb-10">
                                                                                    <span>Share this coupon :</span>
                                                                                    <ul class="list-inline social-icons social-icons--colored mt-10">
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-linkedin"></i></a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer footer-info t-center ptb-40 prl-30">
                                                                        <h4 class="mb-15">Subscribe to Mail</h4>
                                                                        <p class="color-mid mb-20">Get our Daily email newsletter with Special Services, Updates, Offers and more!</p>
                                                                        <form method="post" action="#">
                                                                            <div class="input-group">
                                                                                <input type="text" class="form-control bg-white" placeholder="Your Email Address" required="required">
                                                                                <span class="input-group-btn">
                    <button class="btn" type="submit">Sign Up</button>
                </span>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="coupon-single panel t-center">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="text-center p-20">
                                                                        <img class="store-logo" src="assets/images/coupons/coupon_08.jpg" alt="">
                                                                    </div>
                                                                    <!-- end media -->
                                                                </div>
                                                                <!-- end col -->

                                                                <div class="col-xs-12">
                                                                    <div class="panel-body">
                                                                        <ul class="deal-meta list-inline mb-10">
                                                                            <li class="color-muted"><i class="ico fa fa-map-marker mr-5"></i>California</li>
                                                                            <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>13 Used</li>
                                                                        </ul>
                                                                        <h4 class="color-green mb-10 t-uppercase">15% OFF</h4>
                                                                        <h5 class="deal-title mb-10">
                                                            <a href="#">15% off 2 select Amazon Fire cases</a>
                                                        </h5>
                                                                        <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 05/02/2018</p>
                                                                        <div class="showcode">
                                                                            <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_08">Show Code</button>
                                                                            <div class="coupon-hide">X455-17GT-OL58</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- end col -->
                                                            </div>
                                                            <!-- end row -->
                                                        </div>

                                                        <div class="modal fade get-coupon-area" tabindex="-1" role="dialog" id="coupon_08">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content panel">
                                                                    <div class="modal-body">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                        <div class="row row-v-10">
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <img src="assets/images/brands/store_logo.jpg" alt="">
                                                                                <h3 class="mb-20">Save 30% off New Domains Names</h3>
                                                                                <p class="color-mid">Not applicable to ICANN fees, taxes, transfers,or gift cards. Cannot be used in conjunction with any other offer, sale, discount or promotion. After the initial purchase term.</p>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <a href="#" class="btn btn-link">Visit Our Store</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <h6 class="color-mid t-uppercase">Click below to get your coupon code</h6>
                                                                                <a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <div class="like-report mb-10">
                                                                                    <span>Share this coupon :</span>
                                                                                    <ul class="list-inline social-icons social-icons--colored mt-10">
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-linkedin"></i></a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer footer-info t-center ptb-40 prl-30">
                                                                        <h4 class="mb-15">Subscribe to Mail</h4>
                                                                        <p class="color-mid mb-20">Get our Daily email newsletter with Special Services, Updates, Offers and more!</p>
                                                                        <form method="post" action="#">
                                                                            <div class="input-group">
                                                                                <input type="text" class="form-control bg-white" placeholder="Your Email Address" required="required">
                                                                                <span class="input-group-btn">
                    <button class="btn" type="submit">Sign Up</button>
                </span>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="coupon-single panel t-center">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="text-center p-20">
                                                                        <img class="store-logo" src="assets/images/coupons/coupon_09.jpg" alt="">
                                                                    </div>
                                                                    <!-- end media -->
                                                                </div>
                                                                <!-- end col -->

                                                                <div class="col-xs-12">
                                                                    <div class="panel-body">
                                                                        <ul class="deal-meta list-inline mb-10">
                                                                            <li class="color-muted"><i class="ico fa fa-tag mr-5"></i>Coupon</li>
                                                                            <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>425 Used</li>
                                                                        </ul>
                                                                        <h4 class="color-green mb-10 t-uppercase">20% OFF</h4>
                                                                        <h5 class="deal-title mb-10">
                                                            <a href="#">Flat 40% off hotel bookings in 10 cities</a>
                                                        </h5>
                                                                        <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 15/01/2018</p>
                                                                        <div class="showcode">
                                                                            <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_09">See Sale</button>
                                                                            <div class="coupon-hide">X455-17GT-OL58</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- end col -->
                                                            </div>
                                                            <!-- end row -->
                                                        </div>

                                                        <div class="modal fade get-coupon-area" tabindex="-1" role="dialog" id="coupon_09">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content panel">
                                                                    <div class="modal-body">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                        <div class="row row-v-10">
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <img src="assets/images/brands/store_logo.jpg" alt="">
                                                                                <h3 class="mb-20">Save 30% off New Domains Names</h3>
                                                                                <p class="color-mid">Not applicable to ICANN fees, taxes, transfers,or gift cards. Cannot be used in conjunction with any other offer, sale, discount or promotion. After the initial purchase term.</p>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <a href="#" class="btn btn-link">Visit Our Store</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <h6 class="color-mid t-uppercase">Click below to get your coupon code</h6>
                                                                                <a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <div class="like-report mb-10">
                                                                                    <span>Share this coupon :</span>
                                                                                    <ul class="list-inline social-icons social-icons--colored mt-10">
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-linkedin"></i></a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer footer-info t-center ptb-40 prl-30">
                                                                        <h4 class="mb-15">Subscribe to Mail</h4>
                                                                        <p class="color-mid mb-20">Get our Daily email newsletter with Special Services, Updates, Offers and more!</p>
                                                                        <form method="post" action="#">
                                                                            <div class="input-group">
                                                                                <input type="text" class="form-control bg-white" placeholder="Your Email Address" required="required">
                                                                                <span class="input-group-btn">
                    <button class="btn" type="submit">Sign Up</button>
                </span>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="coupon-single panel t-center">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="text-center p-20">
                                                                        <img class="store-logo" src="assets/images/coupons/coupon_10.jpg" alt="">
                                                                    </div>
                                                                    <!-- end media -->
                                                                </div>
                                                                <!-- end col -->

                                                                <div class="col-xs-12">
                                                                    <div class="panel-body">
                                                                        <ul class="deal-meta list-inline mb-10">
                                                                            <li class="color-green"><i class="ico lnr lnr-smile mr-5"></i>Verifed</li>
                                                                            <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>230 Used</li>
                                                                        </ul>
                                                                        <h4 class="color-green mb-10 t-uppercase">30% OFF</h4>
                                                                        <h5 class="deal-title mb-10">
                                                            <a href="#">There is no place like home 25% off</a>
                                                        </h5>
                                                                        <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 02/03/2018</p>
                                                                        <div class="showcode">
                                                                            <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_10">Print Code</button>
                                                                            <div class="coupon-hide">X455-17GT-OL58</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- end col -->
                                                            </div>
                                                            <!-- end row -->
                                                        </div>

                                                        <div class="modal fade get-coupon-area" tabindex="-1" role="dialog" id="coupon_10">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content panel">
                                                                    <div class="modal-body">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                        <div class="row row-v-10">
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <img src="assets/images/brands/store_logo.jpg" alt="">
                                                                                <h3 class="mb-20">Save 30% off New Domains Names</h3>
                                                                                <p class="color-mid">Not applicable to ICANN fees, taxes, transfers,or gift cards. Cannot be used in conjunction with any other offer, sale, discount or promotion. After the initial purchase term.</p>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <a href="#" class="btn btn-link">Visit Our Store</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <h6 class="color-mid t-uppercase">Click below to get your coupon code</h6>
                                                                                <a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <div class="like-report mb-10">
                                                                                    <span>Share this coupon :</span>
                                                                                    <ul class="list-inline social-icons social-icons--colored mt-10">
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-linkedin"></i></a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer footer-info t-center ptb-40 prl-30">
                                                                        <h4 class="mb-15">Subscribe to Mail</h4>
                                                                        <p class="color-mid mb-20">Get our Daily email newsletter with Special Services, Updates, Offers and more!</p>
                                                                        <form method="post" action="#">
                                                                            <div class="input-group">
                                                                                <input type="text" class="form-control bg-white" placeholder="Your Email Address" required="required">
                                                                                <span class="input-group-btn">
                    <button class="btn" type="submit">Sign Up</button>
                </span>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="coupon-single panel t-center">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="text-center p-20">
                                                                        <img class="store-logo" src="assets/images/coupons/coupon_11.jpg" alt="">
                                                                    </div>
                                                                    <!-- end media -->
                                                                </div>
                                                                <!-- end col -->

                                                                <div class="col-xs-12">
                                                                    <div class="panel-body">
                                                                        <ul class="deal-meta list-inline mb-10">
                                                                            <li class="color-muted"><i class="ico fa fa-tag mr-5"></i>Coupon</li>
                                                                            <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>86 Used</li>
                                                                        </ul>
                                                                        <h4 class="color-green mb-10 t-uppercase">10% OFF</h4>
                                                                        <h5 class="deal-title mb-10">
                                                            <a href="#">10% off $399+ refurbished laptops</a>
                                                        </h5>
                                                                        <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 20/02/2018</p>
                                                                        <div class="showcode">
                                                                            <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_11">Show Code</button>
                                                                            <div class="coupon-hide">X455-17GT-OL58</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- end col -->
                                                            </div>
                                                            <!-- end row -->
                                                        </div>

                                                        <div class="modal fade get-coupon-area" tabindex="-1" role="dialog" id="coupon_11">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content panel">
                                                                    <div class="modal-body">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                        <div class="row row-v-10">
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <img src="assets/images/brands/store_logo.jpg" alt="">
                                                                                <h3 class="mb-20">Save 30% off New Domains Names</h3>
                                                                                <p class="color-mid">Not applicable to ICANN fees, taxes, transfers,or gift cards. Cannot be used in conjunction with any other offer, sale, discount or promotion. After the initial purchase term.</p>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <a href="#" class="btn btn-link">Visit Our Store</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <h6 class="color-mid t-uppercase">Click below to get your coupon code</h6>
                                                                                <a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <div class="like-report mb-10">
                                                                                    <span>Share this coupon :</span>
                                                                                    <ul class="list-inline social-icons social-icons--colored mt-10">
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-linkedin"></i></a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer footer-info t-center ptb-40 prl-30">
                                                                        <h4 class="mb-15">Subscribe to Mail</h4>
                                                                        <p class="color-mid mb-20">Get our Daily email newsletter with Special Services, Updates, Offers and more!</p>
                                                                        <form method="post" action="#">
                                                                            <div class="input-group">
                                                                                <input type="text" class="form-control bg-white" placeholder="Your Email Address" required="required">
                                                                                <span class="input-group-btn">
                    <button class="btn" type="submit">Sign Up</button>
                </span>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="coupon-single panel t-center">
                                                            <div class="row">
                                                                <div class="col-xs-12">
                                                                    <div class="text-center p-20">
                                                                        <img class="store-logo" src="assets/images/coupons/coupon_12.jpg" alt="">
                                                                    </div>
                                                                    <!-- end media -->
                                                                </div>
                                                                <!-- end col -->

                                                                <div class="col-xs-12">
                                                                    <div class="panel-body">
                                                                        <ul class="deal-meta list-inline mb-10">
                                                                            <li class="color-green"><i class="ico lnr lnr-smile mr-5"></i>Verifed</li>
                                                                            <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>24 Used</li>
                                                                        </ul>
                                                                        <h4 class="color-green mb-10 t-uppercase">25% OFF</h4>
                                                                        <h5 class="deal-title mb-10">
                                                            <a href="#">There is no place like home 25% off</a>
                                                        </h5>
                                                                        <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 14/01/2018</p>
                                                                        <div class="showcode">
                                                                            <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_12">Show Coupon</button>
                                                                            <div class="coupon-hide">X455-17GT-OL58</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- end col -->
                                                            </div>
                                                            <!-- end row -->
                                                        </div>

                                                        <div class="modal fade get-coupon-area" tabindex="-1" role="dialog" id="coupon_12">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content panel">
                                                                    <div class="modal-body">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                        <div class="row row-v-10">
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <img src="assets/images/brands/store_logo.jpg" alt="">
                                                                                <h3 class="mb-20">Save 30% off New Domains Names</h3>
                                                                                <p class="color-mid">Not applicable to ICANN fees, taxes, transfers,or gift cards. Cannot be used in conjunction with any other offer, sale, discount or promotion. After the initial purchase term.</p>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <a href="#" class="btn btn-link">Visit Our Store</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <h6 class="color-mid t-uppercase">Click below to get your coupon code</h6>
                                                                                <a href="#" target="_blank" class="coupon-code">X455-17GT-OL58</a>
                                                                            </div>
                                                                            <div class="col-md-10 col-md-offset-1">
                                                                                <div class="like-report mb-10">
                                                                                    <span>Share this coupon :</span>
                                                                                    <ul class="list-inline social-icons social-icons--colored mt-10">
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                                                                        </li>
                                                                                        <li class="social-icons__item">
                                                                                            <a href="#"><i class="fa fa-linkedin"></i></a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer footer-info t-center ptb-40 prl-30">
                                                                        <h4 class="mb-15">Subscribe to Mail</h4>
                                                                        <p class="color-mid mb-20">Get our Daily email newsletter with Special Services, Updates, Offers and more!</p>
                                                                        <form method="post" action="#">
                                                                            <div class="input-group">
                                                                                <input type="text" class="form-control bg-white" placeholder="Your Email Address" required="required">
                                                                                <span class="input-group-btn">
                    <button class="btn" type="submit">Sign Up</button>
                </span>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Page Pagination -->
                                                <div class="page-pagination text-center mt-30 p-10 panel">
                                                    <nav>
                                                        <!-- Page Pagination -->
                                                        <ul class="page-pagination">
                                                            <li><a class="page-numbers previous" href="#">Previous</a>
                                                            </li>
                                                            <li><a href="#" class="page-numbers">1</a>
                                                            </li>
                                                            <li><span class="page-numbers current">2</span>
                                                            </li>
                                                            <li><a href="#" class="page-numbers">3</a>
                                                            </li>
                                                            <li><a href="#" class="page-numbers">4</a>
                                                            </li>
                                                            <li><span class="page-numbers dots">...</span>
                                                            </li>
                                                            <li><a href="#" class="page-numbers">20</a>
                                                            </li>
                                                            <li><a href="#" class="page-numbers next">Next</a>
                                                            </li>
                                                        </ul>
                                                        <!-- End Page Pagination -->
                                                    </nav>
                                                </div>
                                                <!-- End Page Pagination -->
                                            </section>
                                        </div>
                                        <div role="tabpanel" class="tab-pane ptb-20" id="reviews">
                                            <div class="posted-review panel p-30">
                                                <h3 class="h-title">16 Review</h3>
                                                <div class="review-single pt-30">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <img class="media-object mr-10 radius-4" src="assets/images/avatars/avatar_01.jpg" width="90" alt="">
                                                        </div>
                                                        <div class="media-body">
                                                            <div class="review-wrapper clearfix">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <span class="review-holder-name h5">John Doe</span>
                                                                    </li>
                                                                    <li>
                                                                        <div class="rating">
                                                                            <span class="rating-stars" data-rating="5">
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                </span>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                                <p class="review-date mb-5">September 9, 2016</p>
                                                                <p class="copy">Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-single pt-30">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <img class="media-object mr-10 radius-4" src="assets/images/avatars/avatar_02.jpg" width="90" alt="">
                                                        </div>
                                                        <div class="media-body">
                                                            <div class="review-wrapper clearfix">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <span class="review-holder-name h5">John Doe</span>
                                                                    </li>
                                                                    <li>
                                                                        <div class="rating">
                                                                            <span class="rating-stars" data-rating="2">
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                </span>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                                <p class="review-date mb-5">September 9, 2016</p>
                                                                <p class="copy">Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-single pt-30">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <img class="media-object mr-10 radius-4" src="assets/images/avatars/avatar_03.jpg" width="90" alt="">
                                                        </div>
                                                        <div class="media-body">
                                                            <div class="review-wrapper clearfix">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <span class="review-holder-name h5">John Doe</span>
                                                                    </li>
                                                                    <li>
                                                                        <div class="rating">
                                                                            <span class="rating-stars" data-rating="3">
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                </span>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                                <p class="review-date mb-5">September 9, 2016</p>
                                                                <p class="copy">Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-single pt-30">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <img class="media-object mr-10 radius-4" src="assets/images/avatars/avatar_04.jpg" width="90" alt="">
                                                        </div>
                                                        <div class="media-body">
                                                            <div class="review-wrapper clearfix">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <span class="review-holder-name h5">John Doe</span>
                                                                    </li>
                                                                    <li>
                                                                        <div class="rating">
                                                                            <span class="rating-stars" data-rating="4">
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                </span>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                                <p class="review-date mb-5">September 9, 2016</p>
                                                                <p class="copy">Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="review-single pt-30">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <img class="media-object mr-10 radius-4" src="assets/images/avatars/avatar_05.jpg" width="90" alt="">
                                                        </div>
                                                        <div class="media-body">
                                                            <div class="review-wrapper clearfix">
                                                                <ul class="list-inline">
                                                                    <li>
                                                                        <span class="review-holder-name h5">John Doe</span>
                                                                    </li>
                                                                    <li>
                                                                        <div class="rating">
                                                                            <span class="rating-stars" data-rating="5">
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                </span>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                                <p class="review-date mb-5">September 9, 2016</p>
                                                                <p class="copy">Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Store Tabs Area -->

                        </div>
                    </div>
                </div>
            </div>
            <!-- End Page Container -->


        </main>
        <!-- –––––––––––––––[ END PAGE CONTENT ]––––––––––––––– -->
        <section class="footer-top-area pt-70 pb-30 pos-r bg-blue">
            <div class="container">
                <div class="row row-tb-20">
                    <div class="col-sm-12">
                        <div class="row row-tb-20">
                            <div class="footer-col">
                                <div class="footer-about" style="text-align: center;width:100%">
                                    <img class="mb-40" src="<%=basePath%>assets/images/logo_light.png" width="250" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="payment-methods t-center">
                            <span><img src="assets/images/icons/payment/paypal.jpg" alt=""></span>
                            <span><img src="assets/images/icons/payment/visa.jpg" alt=""></span>
                            <span><img src="assets/images/icons/payment/mastercard.jpg" alt=""></span>
                            <span><img src="assets/images/icons/payment/discover.jpg" alt=""></span>
                            <span><img src="assets/images/icons/payment/american.jpg" alt=""></span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- –––––––––––––––[ FOOTER ]––––––––––––––– -->
        <footer id="mainFooter" class="main-footer">
            <div class="container">
                <div class="row">
                    <p>Copyright &copy; 2016 . All rights reserved.</p>
                </div>
            </div>
        </footer>
        <!-- –––––––––––––––[ END FOOTER ]––––––––––––––– -->

    </div>
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- END WRAPPER                               -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->


    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- BACK TO TOP                               -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <div id="backTop" class="back-top is-hidden-sm-down">
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- SCRIPTS                                   -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->

    <!-- (!) Placed at the end of the document so the pages load faster -->

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Initialize jQuery library                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script src="<%=basePath%>assets/js/jquery-1.12.3.min.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Latest compiled and minified Bootstrap    -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="<%=basePath%>assets/js/bootstrap.min.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- JavaScript Plugins                        -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- (!) Include all compiled plugins (below), or include individual files as needed -->

    <!-- Modernizer JS -->
    <script src="<%=basePath%>assets/vendors/modernizr/modernizr-2.6.2.min.js"></script>

    <!-- Owl Carousel -->
    <script type="text/javascript" src="<%=basePath%>assets/vendors/owl-carousel/owl.carousel.min.js"></script>

    <!-- FlexSlider -->
    <script type="text/javascript" src="<%=basePath%>assets/vendors/flexslider/jquery.flexslider-min.js"></script>

    <!-- Coutdown -->
    <script type="text/javascript" src="<%=basePath%>assets/vendors/countdown/jquery.countdown.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Custom Template JavaScript                   -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="<%=basePath%>assets/js/main.js"></script>


</body>

</html>
