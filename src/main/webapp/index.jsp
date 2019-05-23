<%@ page import="javax.swing.plaf.basic.BasicEditorPaneUI" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Initialize jQuery library                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script src="<%=basePath%>assets/js/jquery-1.12.3.min.js"></script>

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
        <
        <!-- –––––––––––––––[ HEADER ]––––––––––––––– -->

        <!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
        <main id="mainContent" class="main-content">
            <div class="page-container ptb-10">
                <div class="container">
                    <div class="section deals-header-area ptb-30">
                        <div class="row row-tb-20">
                            <div class="col-xs-12 col-md-4 col-lg-3">
                                <aside>
                                    <ul class="nav-coupon-category panel">
                                        <li><a href="<%=basePath%>company/allRestaurantOfPosition.action?position=东苑一楼"><i class="fa fa-cutlery"></i>东苑一楼<span>味邦餐饮有限公司</span></a>
                                        </li>
                                        <li><a href="<%=basePath%>company/allRestaurantOfPosition.action?position=东苑二楼"><i class="fa fa-calendar"></i>东苑二楼<span>好滋味餐饮有限公司</span></a>
                                        </li>
                                        <li><a href="<%=basePath%>company/allRestaurantOfPosition.action?position=东苑三楼"><i class="fa fa-female"></i>东苑三楼<span>味邦餐饮有限公司</span></a>
                                        </li>
                                        <li><a href="<%=basePath%>company/allRestaurantOfPosition.action?position=西苑一楼"><i class="fa fa-bolt"></i>西苑一楼<span>校办</span></a>
                                        </li>
                                        <li><a href="<%=basePath%>company/allRestaurantOfPosition.action?position=西苑二楼"><i class="fa fa-image"></i>西苑二楼<span>好食餐饮有限公司</span></a>
                                        </li>
                                        <li><a href="<%=basePath%>company/allRestaurantOfPosition.action?position=西苑三楼"><i class="fa fa-umbrella"></i>西苑三楼<span>好食餐饮有限公司</span></a>
                                        </li>
                                        <li><a href="#" onclick="myLikeMenu()"><i class="fa fa-shopping-cart"></i>我喜欢的餐食</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-home"></i>重庆小炒<span></span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-plane"></i>盖饭<span></span></a>
                                        </li>
                                        <li class="all-cat">
                                            <a class="font-14" href="#">所有窗口</a>
                                        </li>
                                    </ul>
                                </aside>
                            </div>
                            <div class="col-xs-12 col-md-8 col-lg-9">
                                <div class="header-deals-slider owl-slider" data-loop="true" data-autoplay="true" data-autoplay-timeout="10000" data-smart-speed="1000" data-nav-speed="false" data-nav="true" data-xxs-items="1" data-xxs-nav="true" data-xs-items="1" data-xs-nav="true" data-sm-items="1" data-sm-nav="true" data-md-items="1" data-md-nav="true" data-lg-items="1" data-lg-nav="true">
                                    <c:forEach items="${recommendMenu}" begin="5" end="7" var="menu">
                                    <div class="deal-single panel item">
                                        <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="<%=basePath%>${menu.picture}">
                                            <div class="label-discount top-10 right-10">推荐</div>
                                            <c:if test="${not empty user}">
                                                <ul class="deal-actions top-10 left-10">
                                                <li class="like-deal" onclick="like(${menu.menuid})">

                                                    <c:if test="${menu.liked}">
                                                        <span class="menu${menu.menuid} menuRedHeart">
                                                    </c:if>
                                                    <c:if test="${!menu.liked}">
                                                        <span class="menu${menu.menuid} ">
                                                    </c:if>
                                                        <i class="fa fa-heart"></i>
                                                    </span>
                                                </li>
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
                                                <li class="haha" onclick="makeAComment(${menu.menuid})">
                                                    <span><i class="fa  fa-comments"></i></span>
                                                </li>

                                            </ul>
                                            </c:if>
                                            <div class="deal-about p-20 pos-a bottom-0 left-0">
                                                <div class="rating mb-10">
                                                    <span class="rating-stars" data-rating="5">
                                                        <span style="color: #dddddd">综合评分：</span>
                                                        <strong>
                                                            <c:if test="${menu.score eq 0 }">
                                                                暂无评
                                                            </c:if>
                                                            <c:if test="${menu.score != 0}">
                                                                ${menu.score}
                                                            </c:if>
                                                            分
                                                        </strong>
                                                    </span>
                                                    <span class="rating-reviews color-light">
                                                    </span>
                                                </div>
                                                <h3 class="deal-title mb-10 ">
			                    <a href="#" onclick="makeAComment(${menu.menuid})" class="color-light color-h-lighter">${menu.name}</a>
			                </h3>
                                            </div>
                                        </figure>
                                    </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>


                    <section class="section latest-deals-area ptb-30">
                        <header class="panel ptb-15 prl-20 pos-r mb-30">
                            <h3 class="section-title font-18">人气餐食</h3>
                            <a class="btn btn-o btn-xs pos-a right-10 pos-tb-center">View All</a>
                        </header>
    <%--推荐菜单--%>
                        <div class="row row-masnory row-tb-20">
                            <c:forEach items="${requestScope.recommendMenu}" var="menu" begin="0" end="5">
                                <div class="col-sm-6 col-lg-4">
                                <div class="deal-single panel">
                                    <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="<%=basePath%>${menu.picture}"
                                            >
                                        <%--<div class="label-discount left-20 top-15">-50%</div>--%>
                                            <c:if test="${not empty user}">
                                                <ul class="deal-actions top-15 right-20">
                                                    <li class="like-deal" onclick="like(${menu.menuid})">

                                                        <c:if test="${menu.liked}">
                                                        <span class="menu${menu.menuid} menuRedHeart">
                                                    </c:if>
                                                    <c:if test="${!menu.liked}">
                                                        <span class="menu${menu.menuid} ">
                                                    </c:if>
                                                        <i class="fa fa-heart"></i>
                                                    </span>
                                                    </li>
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
                                                    <li class="haha" onclick="makeAComment(${menu.menuid})">
                                                        <span><i class="fa  fa-comments"></i></span>
                                                    </li>

                                                </ul>
                                            </c:if>
                                        <div class="deal-store-logo">
                                            <img src="<%=basePath%>${menu.restaurant.logo}" alt="">
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
                            <a href="#" onclick="makeAComment(${menu.menuid})">${menu.name}</a>
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



                    <section class="section stores-area stores-area-v1 ptb-30">
                        <header class="panel ptb-15 prl-20 pos-r mb-30">
                            <h3 class="section-title font-18">人气好店</h3>
                            <a href="stores_01.html" class="btn btn-o btn-xs pos-a right-10 pos-tb-center">All Stores</a>
                        </header>
                        <div class="popular-stores-slider owl-slider" data-loop="true" data-autoplay="true" data-smart-speed="1000" data-autoplay-timeout="10000" data-margin="20" data-items="2" data-xxs-items="2" data-xs-items="2" data-sm-items="3" data-md-items="5" data-lg-items="6">
                            <c:forEach items="${recommendRestaurant}" var="restaurant">
                                <div class="store-item t-center">
                                <a href="<%=basePath%>restaurant/getAllMenuOfTheRestaurant.action?restaurantId=${restaurant.id}" class="panel is-block">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <div class="store-logo">
                                            <img src="<%=basePath%>${restaurant.logo}" alt="">
                                        </div>
                                    </div>
                                    <h6 class="store-name ptb-10">${restaurant.name}</h6>
                                </a>
                            </div>
                            </c:forEach>
                            <c:forEach items="${recommendRestaurant}" var="restaurant">
                                <div class="store-item t-center">
                                    <a href="<%=basePath%>restaurant/getAllMenuOfTheRestaurant.action?restaurantId=${restaurant.id}" class="panel is-block">
                                        <div class="embed-responsive embed-responsive-4by3">
                                            <div class="store-logo">
                                                <img src="<%=basePath%>${restaurant.logo}" alt="">
                                            </div>
                                        </div>
                                        <h6 class="store-name ptb-10">${restaurant.name}</h6>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </section>
                </div>
            </div>


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
        layui.use('rate', function(){
            var rate = layui.rate;

            //渲染
            var ins1 = rate.render({
                elem: '#test1'  //绑定元素
                ,choose: function(value){
                    if(value > 4) alert('么么哒')
                }
                ,readonly:true
            });
        });
    </script>


</body>

</html>
