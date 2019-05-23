<%@ page import="javax.swing.plaf.basic.BasicEditorPaneUI" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Latest compiled and minified Bootstrap    -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="<%=basePath%>assets/js/bootstrap.min.js"></script>

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

<body id="body" class="wide-layout preloader-active" style="font-family: 等线">





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

        <!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
        <main id="mainContent" class="main-content">
            <div class="page-container ptb-20">
                <div class="container">
                    <section class="wishlist-area ptb-30">
                        <div class="container">
                            <div class="wishlist-wrapper">
                                <h3 class="h-title mb-40 t-uppercase">我的收藏</h3>
                                <table id="cart_list" class="wishlist">
                                    <tbody>
                                        <c:forEach items="${likeMenuList}" var="menu">
                                        <tr class="panel alert" id="menu${menu.menu.menuid}">
                                            <td class="col-sm-4 col-md-6">
                                                <div class="media-left is-hidden-sm-down">
                                                    <figure class="product-thumb">
                                                        <img src="assets/images/cart/product_11.jpg" alt="product">
                                                    </figure>
                                                </div>
                                                <div class="media-body valign-middle" style="text-align: center">
                                                    <h5 class="title mb-5 t-uppercase"><a href="#"><strong>${menu.menu.name}</strong></a></h5>
                                                    <%--<div class="rating mb-5">
                                                        <span class="rating-stars rate-allow" data-rating="2">
				                        		<i class="fa fa-star-o"></i>
				                        		<i class="fa fa-star-o"></i>
				                        		<i class="fa fa-star-o"></i>
				                        		<i class="fa fa-star-o star-active"></i>
				                        		<i class="fa fa-star-o"></i>
				                        	</span>
                                                        <span class="rating-reviews">
				                        		( <span class="rating-count">100</span> rates )
                                                        </span>
                                                    </div>--%>
                                                    于<fmt:formatDate value="${menu.time}" type="both"/>加入收藏
                                                    <h4 class="price color-green"><span class="price-sale">￥${menu.menu.price}</span><strong>￥${menu.menu.saleprice}</strong></h4>

                                                    <button class="btn btn-rounded btn-sm mt-15 is-hidden-sm-up" onclick="makeAComment(${menu.menu.menuid})">评论</button>
                                                    <button class="btn btn-rounded btn-sm mt-15 is-hidden-sm-up"onclick="removeLike(${menu.menu.menuid})">移除收藏</button>
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
                                                                    area: ['600px', '500px'],
                                                                    content: '<%=basePath%>menu/toComment.action?menuId='+MenuId
                                                                });
                                                            });

                                                        }

                                                        function removeLike(MenuId){
                                                            $.ajax({
                                                                url:"<%=basePath%>like/removeAnLikeMenu.action?menuId="+MenuId
                                                                , async: true
                                                                , success:function () {
                                                                    window.location.reload()
                                                                }
                                                            })
                                                        }
                                                    </script>
                                                </div>
                                            </td>
                                            <%--<td class="col-sm-3 col-md-2 is-hidden-xs-down">
                                                <button class="btn btn-rounded btn-sm">移除</button>
                                            </td>--%>
                                            <%--<td class="col-sm-1">
                                                <button type="button" class="close pr-xs-0 pr-sm-10" data-dismiss="alert" aria-hidden="true">
                                                    <i class="fa fa-trash-o"></i>
                                                </button>
                                            </td>--%>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </section>
                </div>
            </div>


        </main>
        <!-- –––––––––––––––[ END PAGE CONTENT ]––––––––––––––– -->

        <!-- –––––––––––––––[ FOOTER ]––––––––––––––– -->

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
