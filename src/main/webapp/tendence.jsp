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

        <!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
        <main id="mainContent" class="main-content" style="font-family: 等线">
            <div class="page-container ptb-60">
                <div class="container">
                    <section class="sign-area panel p-40">
                        <h3 class="sign-title">菜谱点评分析
                            <small>分析评分分布</small>
                        </h3>
                        <div class="row row-rl-0">
                            <div class="col-sm-6 col-md-7 col-left">
                                <c:forEach items="${menu}" var="menu0">
                                    <div>
                                        <span>${menu0.name}
                                        </span>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success"
                                             style="width: <fmt:formatNumber type="number"
                                                                             value="${menu0.perfectScoreNum*100}"
                                                                             maxFractionDigits="1"/>%">
                                            优<fmt:formatNumber type="number" value="${menu0.perfectScoreNum*100}"
                                                               maxFractionDigits="1"/>%
                                        </div>
                                        <div class="progress-bar progress-bar-warning progress-bar-striped"
                                             style="width: <fmt:formatNumber type="number"
                                                                             value="${menu0.goodScoreNum*100}"
                                                                             maxFractionDigits="1"/>%">
                                            中<fmt:formatNumber type="number" value="${menu0.goodScoreNum*100}"
                                                               maxFractionDigits="1"/>%
                                        </div>
                                        <div class="progress-bar progress-bar-danger"
                                             style="width: <fmt:formatNumber type="number"
                                                                             value="${menu0.badScoreNum*100}"
                                                                             maxFractionDigits="1"/>%">
                                            差<fmt:formatNumber type="number" value="${menu0.badScoreNum*100}"
                                                               maxFractionDigits="1"/>%
                                        </div>
                                        <div class="progress-bar progress-bar-info" style="width: 0%">
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                            <div class="col-sm-6 col-md-7 col-left">
                                <div>

                                    <div class="well well-large">
                                        <h3><strong>建议</strong>
                                        </h3>
                                        &nbsp;&nbsp;
                                        <strong>
                                            <c:forEach items="${menu}" var="menu1">
                                                <c:if test="${menu1.perfectScoreNum>0.6}">
                                                    ${menu1.name}&nbsp;
                                                </c:if>
                                            </c:forEach>
                                        </strong>
                                        <br>

                                        上述菜品表现很好，<strong style="color: green">请保留这些优秀菜品</strong>
                                        <hr>
                                        <strong>
                                            <c:forEach items="${menu}" var="menu1">
                                                <c:if test="${menu1.perfectScoreNum<0.5 &&(menu1.perfectScoreNum+menu1.goodScoreNum)>0.6}">
                                                    ${menu1.name}&nbsp;
                                                </c:if>
                                            </c:forEach>
                                        </strong>
                                        <br>
                                        上述菜品表现还行，<strong style="color: green">请适当地留意大家的评论做出调整</strong>
                                        <hr>
                                        <strong>
                                            <c:forEach items="${menu}" var="menu1">
                                                <c:if test="${menu1.badScoreNum>0.5 }">
                                                    ${menu1.name}&nbsp;
                                                </c:if>
                                            </c:forEach>
                                        </strong>
                                        <br>
                                        上述菜品表现较差，<strong style="color: green">若想保留，请积极留意大家的评论和文章做出调整</strong>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </main>

        <!-- –––––––––––––––[ END FOOTER ]––––––––––––––– -->

    </div>
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
    <script src="assets/js/jquery-1.12.3.min.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Latest compiled and minified Bootstrap    -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

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
