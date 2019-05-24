
<%@ page import="javax.swing.plaf.basic.BasicEditorPaneUI" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <!-- bootstrap-select -->
    <link rel="stylesheet" href="<%=basePath%>assets/css/bootstrap-select.min.css">
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Initialize jQuery library                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script src="<%=basePath%>assets/js/jquery-1.12.3.min.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Latest compiled and minified Bootstrap    -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="<%=basePath%>assets/js/bootstrap.min.js"></script>

    <script src="<%=basePath%>assets/js/bootstrap-select.min.js"></script>

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
    <!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
    <main id="mainContent" class="main-content">
        <div class="page-container ptb-60">
            <H1 style="margin:0 10%">搜索结果&nbsp;&nbsp;&nbsp;&nbsp;<small>关键字“${requestScope.searchWord}”</small>
            </H1>
            <hr/>
            <div class="container">
                <section class="sign-area panel p-40">
                    <h3 class="sign-title"><strong>餐厅</strong></h3>
                    <div class="row row-rl-0">
                        <c:if test="${empty restaurants}">
                            <span>无相关结果</span>
                        </c:if>
                        <c:forEach items="${restaurants}" var="restaurant">
                            <div class="media well well-large">
                                <div class="media-left">
                                    <a href="<%=basePath%>restaurant/getAllMenuOfTheRestaurant.action?restaurantId=${restaurant.id}">
                                        <img class="media-object" width="64px" height="64px"
                                             src="<%=basePath%>${restaurant.logo}" alt="...">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading"><a
                                            href="<%=basePath%>restaurant/getAllMenuOfTheRestaurant.action?restaurantId=${restaurant.id}"><strong>${restaurant.name}</strong></a>
                                    </h4>
                                        ${restaurant.position}/${restaurant.windownum}号窗口[${restaurant.shortsaying}]
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </section>
                <section class="sign-area panel p-40">
                    <h3 class="sign-title"><strong>菜谱</strong></h3>
                    <div class="row row-rl-0">
                        <c:if test="${empty menus}">
                            <span>无相关结果</span>
                        </c:if>
                        <c:forEach items="${menus}" var="menu">
                            <div class="media well well-large">
                                <div class="media-left">
                                    <a href="#">
                                        <img class="media-object" width="64px" height="64px" src="<%=basePath%>${menu.picture}" alt="...">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <div style="width: 80%;display: inline-block">
                                        <h4 class="media-heading">
                                            <a href="#" onclick="makeAComment(${menu.menuid})">
                                                <strong>${menu.name}</strong>
                                            </a>
                                        </h4>
                                        ${menu.materials}
                                    </div>
                                    <div style="width: 20px;display:inline-block">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button type="button" onclick="makeAComment(${menu.menuid})" style="background-color: white;color: black" class="btn btn-default">评论</button>
                                            <button type="button" onclick="like(${menu.menuid})" style="background-color: white;color: black" class="btn btn-default">收藏</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </section>
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
                <section class="sign-area panel p-40">
                    <h3 class="sign-title"><strong>文章</strong></h3>
                    <div class="row row-rl-0">
                        <c:if test="${empty posts}">
                            <span>无相关结果</span>
                        </c:if>
                        <c:forEach items="${posts}" var="post">
                            <div class="media  well well-large">
                                <div class="media-body">
                                    <h3 class="media-heading">
                                        <a href="<%=basePath%>post/showPost.action?postId=${post.id}"><strong>${post.title}</strong>
                                            <small>
                                                /${post.username}/<fmt:formatDate value="${post.time}"
                                                                                  pattern="yy-MM-dd hh:mm:ss"></fmt:formatDate>
                                            </small>
                                        </a>
                                    </h3>
                                    <p style="width:100%;  overflow-y: hidden">${post.content}</p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </section>
            </div>
        </div>

    </main>
    <!-- –––––––––––––––[ END PAGE CONTENT ]––––––––––––––– -->
    <%--<section class="footer-top-area pt-70 pb-30 pos-r bg-blue">
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
    </section>--%>
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
    <!-- JavaScript Plugins                        -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- (!) Include all compiled plugins (below), or include individual files as needed -->

    <!-- Modernizer JS -->
    <script src="assets/vendors/modernizr/modernizr-2.6.2.min.js"></script>
    
    <!-- Owl Carousel -->
    <script type="text/javascript" src="assets/vendors/owl-carousel/owl.carousel.min.js"></script>

    <!-- FlexSlider -->
    <script type="text/javascript" src="assets/vendors/flexslider/jquery.flexslider-min.js"></script>

    <!-- Coutdown -->
    <script type="text/javascript" src="assets/vendors/countdown/jquery.countdown.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Custom Template JavaScript                   -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="assets/js/main.js"></script>
</body>

</html>
