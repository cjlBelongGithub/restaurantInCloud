<%@ page import="javax.swing.plaf.basic.BasicEditorPaneUI" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<body id="body" class="wide-layout preloader-active" onload="load()">

     
    <script>
        function load(){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.open({
                    title: '店家通知'
                    ,content: '${restaurant.notice.content }'
                });
            });
        }
    </script>

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
                                <c:if test="${not empty sessionScope.restaurant}">
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
                                        <c:if test="${not empty sessionScope.restaurant}">
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
                                        <%--<li><a href="index.html">首页</a>
                                        </li>--%>
                                        <li><a href="<%=basePath%>quit.action">退出</a>
                                        </li>
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
                        <div class="page-sidebar col-sm-4 col-md-3">
                            <aside class="store-header-area panel t-center">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <figure class="pt-10 pl-10">
                                            <img src="<%=basePath%>${restaurant.logo}" alt="">
                                        </figure>
                                    </div>
                                    <div class="col-xs-12">
                                        <%--<div class="store-about ptb-30 prl-10">
                                            <h3 class="mb-10"></h3>
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
                                            </div>--%>
                                            <%--<p class="mb-15">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio officiis at accusantium ducimus excepturi cumque ad commodi libero nihil rem voluptatibus veniam ipsa ullam esse quia quae fuga, quidem iusto.</p>--%>
                                            <%--<button class="btn btn-info">FOLLOW</button>--%>
                                        </div>
                                    </div>
                                    <div class="col-xs-12">
                                        <div class="store-splitter-left">
                                        </div>
                                    </div>
                                </div>
                            </aside>
                            <div class="page-content col-sm-8 col-md-9">

                            <!-- Store Tabs Area -->
                            <div class="section store-tabs-area">
                                <div class="tabs tabs-v1">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs panel" role="tablist">
                                        <li role="presentation" class="active">
                                            <a href="#deals" aria-controls="deals" role="tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-comment mr-10"></i>餐食</a>
                                        </li>
                                        <li role="presentation">
                                            <a href="#coupons" aria-controls="coupons" role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-star mr-10"></i>文章</a>
                                        </li>
                                        <%--<li role="presentation" class="">
                                            <a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-user mr-10"></i>Reviews</a>
                                        </li>--%>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane ptb-20 active" id="deals">
                                            <section class="section deals-area">
                                                <div class="row row-masnory row-tb-20">
                                                    <c:forEach items="${menuList}" var="menu">
                                                        <div class="col-sm-12 col-lg-6">
                                                            <div class="deal-single panel">
                                                                <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="<%=basePath%>${menu.picture}">
                                                                    <div class="label-discount left-20 top-15">-50%</div>
                                                                    <ul class="deal-actions top-15 right-20">
                                                                        <li class="like-deal" onclick="like(${menu.menuid})" title="收藏">

                                                                            <c:if test="${menu.liked}">
                                                                            <span class="menu${menu.menuid} menuRedHeart">
                                                    </c:if>
                                                    <c:if test="${!menu.liked}">
                                                        <span class="menu${menu.menuid} ">
                                                    </c:if>
                                                        <i class="fa fa-heart"></i>
                                                    </span>
                                                                        </li>
                                                                        <li class="haha" onclick="makeAComment(${menu.menuid})" title="快捷评价">
                                                                            <span><i class="fa  fa-comments"></i></span>
                                                                        </li>
                                                                    </ul>
                                                                    <div class="deal-store-logo">
                                                                        <img src="<%=basePath%>${menu.restaurant.logo}" alt="">
                                                                    </div>
                                                                </figure>
                                                                <script>
                                                                    function like(menuId) {
                                                                        $.ajax({
                                                                            url:"<%=basePath%>like/likeMenu.action?menuId="+menuId
                                                                            , async: true
                                                                            , success:function (num) {
                                                                                if(num)
                                                                                    layui.use('layer', function() {
                                                                                        var layer = layui.layer;
                                                                                        $(".menu"+menuId).removeClass('menuWhiteHeart');
                                                                                        $(".menu"+menuId).addClass('menuRedHeart');
                                                                                        layer.msg('收藏菜品成功')
                                                                                    })
                                                                                else{
                                                                                    layui.use('layer', function() {
                                                                                        var layer = layui.layer;
                                                                                        $(".menu"+menuId).removeClass('menuRedHeart');
                                                                                        $(".menu"+menuId).addClass('menuWhiteHeart');
                                                                                        layer.msg('取消收藏成功')
                                                                                    })
                                                                                }

                                                                            }
                                                                        })
                                                                    }
                                                                </script>
                                                                <script type="text/javascript">
                                                                    function makeAComment(MenuId){
                                                                        layui.use('layer', function(){
                                                                            var layer = layui.layer;

                                                                            layer.open({
                                                                                type: 2,
                                                                                title: '快捷评价',
                                                                                shadeClose: true,
                                                                                shade: false,
                                                                                maxmin: true, //开启最大化最小化按钮
                                                                                area: ['600px', '600px'],
                                                                                content: '<%=basePath%>menu/toComment.action?menuId='+MenuId
                                                                            });
                                                                        });

                                                                    }
                                                                </script>
                                                                <div class="bg-white pt-20 pl-20 pr-15">
                                                                    <div class="pr-md-10">
                                                                        <div id="starScore${menu.menuid}" style="margin-left: auto"  class="layui-input-block"></div>
                                                                        <script>
                                                                            layui.use('rate', function(){
                                                                                var rate = layui.rate;

                                                                                //渲染

                                                                                rate.render({
                                                                                    elem: '#starScore${menu.menuid}'
                                                                                    ,value:${menu.score}
                                                                                    ,choose:function (score) {
                                                                                        $.ajax({

                                                                                        })
                                                                                    }
                                                                                });
                                                                            });
                                                                        </script>
                                                                        <h3 class="deal-title mb-10">
                                                                            <a href="deal_single.html">${menu.name}</a>
                                                                        </h3>
                                                                        <ul class="deal-meta list-inline mb-10 color-mid">
                                                                            <li><i class="ico fa fa-map-marker mr-10"></i>${menu.restaurant.position}</li>
                                                                                <%--<li><i class="ico fa fa-shopping-basket mr-10"></i>120 Bought</li>--%>
                                                                        </ul>
                                                                        <p class="text-muted mb-20">${menu.materials}</p>
                                                                    </div>
                                                                    <div class="deal-price pos-r mb-15">
                                                                        <h3 class="price ptb-5 text-right">
                                                <span class="price-sale">
                                                    <c:if test="${menu.price != 0}">￥${menu.price}</c:if>
                                                </span>
                                                                                ￥${menu.saleprice}
                                                                        </h3>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </section>
                                        </div>
                                        <%--下面是文章的标签--%>
                                        <div role="tabpanel" class="tab-pane ptb-20" id="coupons">
                                            <section class="section coupons-area coupons-area-grid">
                                                <div class="row row-masnory row-tb-20">
                                                    <c:forEach items="${posts}" var="post" varStatus="statu">
                                                        <div class="col-sm-6">
                                                            <div class="coupon-single panel t-center">
                                                                <div class="row">
                                                                    <!-- end col -->
                                                                    <div class="col-xs-12">
                                                                        <div class="panel-body">
                                                                                <div class="panel-group" id="accordion">
                                                                                    <div class="panel panel-default">
                                                                                        <div class="panel-heading">
                                                                                            <h4 class="panel-title">
                                                                                                <a data-toggle="collapse" data-parent="#accordion"
                                                                                                   href="#collapse${statu.index}">
                                                                                                    <strong title="点击展开文章内容">${post.title}</strong>
                                                                                                    <small>To ${post.menu.name}<p></p></small>
                                                                                                    <small>${post.username}</small>
                                                                                                </a>
                                                                                            </h4>
                                                                                        </div>
                                                                                        <div id="collapse${statu.index}" class="panel-collapse collapse">
                                                                                            <div class="panel-body" style="font-size: 18px;font-family: inherit">
                                                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${post.content}
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <p class="mb-15 color-muted mb-20 font-12">发表于 <fmt:formatDate value="${post.time}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate> </p>
                                                                        </div>
                                                                    </div>
                                                                    <!-- end col -->
                                                                </div>
                                                                <!-- end row -->
                                                            </div>
                                                        </div>
                                                    </c:forEach>
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
