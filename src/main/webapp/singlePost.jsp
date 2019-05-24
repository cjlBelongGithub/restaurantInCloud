<%@ page import="javax.swing.plaf.basic.BasicEditorPaneUI" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
    <meta name="description"
          content="FRIDAY is a responsive multipurpose-ecommerce site template allows you to store coupons and promo codes from different brands and create store for deals, discounts, It can be used as coupon website such as groupon.com and also as online store">
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
        .menuRedHeart {
            color: Red;
        }

        .menuWhiteHeart {
            color: white;
        }
    </style>
</head>

<body id="body" class="wide-layout preloader-active">


<!--[if lt IE 9]>
<p class="browserupgrade alert-error">
    You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your
    browser</a> to improve your experience.
</p>
<![endif]-->

<noscript>
    <div class="noscript alert-error">
        For full functionality of this site it is necessary to enable JavaScript. Here are the <a
            href="http://www.enable-javascript.com/" target="_blank">
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
        <H1 style="margin:0 10%">文章讨论&nbsp;&nbsp;<small>${post.title}</small>
        </H1>
        <hr/>
        <div class="container">
            <section class="sign-area panel p-40">
                <div class="row row-rl-0">
                    <div class="media">
                        <div class="media-body  well well-large">
                            <h3 class="media-heading">${post.content}</h3>
                        </div>
                    </div>
                    <c:forEach items="${restaurants}" var="post">
                        <div class="media">
                            <div class="media-left">
                                <a href="<%=basePath%>restaurant/getAllMenuOfTheRestaurant.action?restaurantId=${post.id}">
                                    <img class="media-object" width="64px" height="64px" src="<%=basePath%>${post.logo}"
                                         alt="...">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><strong>${post.name}</strong></h4>
                                    ${post.position}/${post.windownum}号窗口[${post.shortsaying}]
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </section>
            <section class="sign-area panel p-40">
                <h3 class="sign-title"><strong>菜谱</strong></h3>
                <div class="row row-rl-0">
                    <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" width="64px" height="64px"
                                     src="<%=basePath%>${post.menu.picture}" alt="...">
                            </a>
                        </div>
                        <div class="media-body">
                            <div style="width: 80%;display: inline-block">
                                <h4 class="media-heading">
                                    <a href="#" onclick="makeAComment(${post.menu.menuid})">
                                        <strong>${post.menu.name}</strong>
                                    </a>
                                </h4>
                                ${post.menu.materials}
                            </div>
                            <div style="width: 20px;display:inline-block">
                                <div class="btn-group" role="group" aria-label="...">
                                    <button type="button" onclick="makeAComment(${post.menu.menuid})"
                                            style="background-color: white;color: black" class="btn btn-default">评论
                                    </button>
                                    <button type="button" onclick="like(${post.menu.menuid})"
                                            style="background-color: white;color: black" class="btn btn-default">收藏
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <script type="text/javascript">
                function makeAComment(MenuId) {
                    layui.use('layer', function () {
                        var layer = layui.layer;
                        layer.open({
                            type: 2,
                            title: '快捷评价',
                            shadeClose: true,
                            shade: false,
                            maxmin: true, //开启最大化最小化按钮
                            area: ['600px', '600px'],
                            content: '<%=basePath%>menu/toComment.action?menuId=' + MenuId
                        });
                    });

                }
            </script>
            <script>
                function like(menuId) {
                    $.ajax({
                        url: "<%=basePath%>like/likeMenu.action?menuId=" + menuId
                        , async: true
                        , success: function (num) {
                            if (num)
                                layui.use('layer', function () {
                                    var layer = layui.layer;
                                    $(".menu" + menuId).removeClass('menuWhiteHeart');
                                    $(".menu" + menuId).addClass('menuRedHeart');
                                    layer.msg('收藏菜品成功')
                                })
                            else {
                                layui.use('layer', function () {
                                    var layer = layui.layer;
                                    $(".menu" + menuId).removeClass('menuRedHeart');
                                    $(".menu" + menuId).addClass('menuWhiteHeart');
                                    layer.msg('取消收藏成功')
                                })
                            }

                        }
                    })
                }
            </script>
            <section class="sign-area panel p-40" style="font-family: 等线">
                <h3 class="sign-title"><strong>讨论</strong></h3>
                <div class="row row-rl-0">
                    <c:if test="${empty post.comments}">
                        <span>没有评论内容</span>
                    </c:if>
                    <c:forEach items="${post.comments}" var="comment">
                        <div class="media">
                            <div class="media-body">
                                <div style="width: 80%;display: inline-block">
                                    <h3 class="media-heading"><strong>${comment.content}</strong></h3>
                                        ${comment.username}/发表时间：
                                    <fmt:formatDate value="${comment.time}"
                                                    pattern="yy年MM月dd日 hh点mm分ss秒"></fmt:formatDate>
                                </div>
                                <div style="width: 20px;display:inline-block">
                                    <div class="btn-group" role="group" aria-label="...">
                                        <button type="button" onclick="reply('${comment.username}')"
                                                style="background-color: white;color: black" class="btn btn-default">评论
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <hr>
                    <form class="form" action="<%=basePath%>/post/toCommentPost.action">
                        <div class="form-group">
                            <label class="sr-only" for="content">content</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" id="content" name="content" rows="3"></textarea>
                            </div>
                            <input name="topostid" value="${post.id}" hidden/>
                        </div>
                        <input type="submit" class="btn btn-primary" value="评论"/>
                    </form>
                    <script>
                        function reply(username) {
                            $("#content").val("@" + username + ":");
                        }
                    </script>

                </div>
            </section>
        </div>
    </div>

</main>
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
