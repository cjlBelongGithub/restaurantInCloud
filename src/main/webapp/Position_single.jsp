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
        <%@include file="header.jsp"%>
        <!-- –––––––––––––––[ HEADER ]––––––––––––––– -->

        <!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
        <main id="mainContent" class="main-content">
            <!-- Page Container -->
            <div class="page-container ptb-60">
                <div class="container">
                    <div class="row row-rl-10 row-tb-20">
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
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane ptb-20 active" id="deals">
                                            <section class="section deals-area">
                                                <div class="row row-masnory row-tb-20">
                                                    <c:forEach items="${requestScope.company.restaurants}" var="post">
                                                        <div class="col-sm-12 col-lg-3">
                                                            <div class="deal-single panel">
                                                                <figure class="deal-thumbnail embed-responsive embed-responsive-16by9"
                                                                        data-bg-img="<%=basePath%>${post.logo}">
                                                                    </ul>
                                                                    <div class="deal-store-logo">
                                                                        <img src="<%=basePath%>${post.logo}" alt="">
                                                                    </div>
                                                                </figure>
                                                                <div class="bg-white pt-20 pl-20 pr-15">
                                                                    <div class="pr-md-10">
                                                                        <h3 class="deal-title mb-10">
                                                                            <a href="<%=basePath%>restaurant/getAllMenuOfTheRestaurant.action?restaurantId=${post.id}">${post.name}</a>
                                                                        </h3>
                                                                        <ul class="deal-meta list-inline mb-10 color-mid">
                                                                            <li>
                                                                                <i class="ico fa fa-map-marker mr-10"></i>${post.position}
                                                                            </li>
                                                                        </ul>
                                                                        <p class="text-muted mb-20">${post.shortsaying}</p>
                                                                    </div>
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
        <%@include file="footer.jsp"%>

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
