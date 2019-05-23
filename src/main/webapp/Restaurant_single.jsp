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
        <%@include file="header.jsp"%>
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
