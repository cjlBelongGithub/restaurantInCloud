
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
            <div class="container">
                <section class="sign-area panel p-40">
                    <h3 class="sign-title"><strong>餐厅公告</strong></h3>
                    <div class="row row-rl-0">
                        <div class="row row-masnory row-tb-20 input-group" style="height: 40px;">
                                <%--<textarea class="form-control"></textarea>--%>
                            <input id="noticeTitle" name="title" class="form-control" value="${notice.title}" placeholder="公告标题"/>
                            <input id="notice" name="notice" type="text" class="form-control" value="${notice.content}" style="height: 60px;" placeholder="公告内容">
                            <span class="input-group-btn">
                                 <button class="btn btn-default" style="height: 100px;" type="button" onclick="notice()" >提交</button>
                            </span>
                        </div>
                        <script>
                            function notice(){
                                var notice = $("#notice").val();
                                var title = $("#noticeTitle").val();
                                $.ajax({
                                    url:"<%=basePath%>restaurant/pushANotice.action?content="+notice+"&title="+title
                                    , async: true
                                    , success:function () {
                                        layui.use('layer', function() {
                                            var layer = layui.layer;
                                            layer.msg('成功发布公告')
                                        })
                                    },error:function () {
                                        layui.use('layer', function() {
                                            var layer = layui.layer;
                                            layer.msg('发布公告出错')
                                        })
                                    }


                                })
                            }
                        </script>
                    </div>
                </section>
                <section class="sign-area panel p-40">
                    <h3 class="sign-title"><strong>店家管理</strong></h3>
                    <div class="row row-rl-0">
                        <div class="row row-masnory row-tb-20">
                            <c:forEach items="${menus}"  var="menu">
                                <div class="deal-single panel item col-sm-6 col-lg-4">
                                    <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="<%=basePath%>${menu.picture}" style="background-image: url('<%=basePath%>${menu.picture}');">
                                        <ul class="deal-actions top-10 left-10">

                                            <li class="haha" onclick="makeAComment(${menu.menuid})">
                                                <span><i class="fa  fa-comments"></i></span>
                                            </li>
                                                <li onclick="editMenu(${menu.menuid})">
                                                    <span class="fa fa-edit" aria-hidden="true"></span>
                                                </li>
                                            <li onclick="removeMenu(${menu.menuid})">
                                                <span class="fa fa-trash" aria-hidden="true"></span>
                                            </li>
                                                <script>
                                                    function editMenu(menuId){
                                                        layui.use('layer', function(){
                                                            var layer = layui.layer;
                                                            layer.open({
                                                                type: 2,
                                                                title: '菜谱管理',
                                                                shadeClose: true,
                                                                shade: false,
                                                                maxmin: false, //开启最大化最小化按钮
                                                                area: ['480px', '500px'],
                                                                content: '<%=basePath%>menu/getAMenu.action?menuId='+menuId
                                                            });
                                                        });
                                                    }
                                                    function removeMenu(menuId){
                                                        layui.use('layer', function(){
                                                            var layer = layui.layer;
                                                            layer.confirm('确认删除该菜谱？', {icon: 3, title:'提示'}, function(index){
                                                                $.ajax({
                                                                    url:"<%=basePath%>menu/removeAMenu.action?menuId="+menuId
                                                                    , async: true
                                                                    , success:function () {
                                                                        window.location.reload();
                                                                    }
                                                                })
                                                                layer.close(index);
                                                            });
                                                        });
                                                    }
                                                </script>

                                        </ul>
                                        <div class="deal-about p-20 pos-a bottom-0 left-0">
                                            <h3 class="deal-title mb-10 ">
                                                <a href="deal_single.html" class="color-light color-h-lighter">${menu.name}</a>
                                            </h3>
                                        </div>
                                    </figure>
                                </div>
                            </c:forEach>
                        </div>
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
                        <%--<div class="col-sm-6 col-md-5 col-right">
                            <div class="social-login p-40">
                                <div class="mb-20">
                                    <button class="btn btn-lg btn-block btn-social btn-facebook"><i class="fa fa-facebook-square"></i>Sign In with Facebook</button>
                                </div>
                                <div class="mb-20">
                                    <button class="btn btn-lg btn-block btn-social btn-twitter"><i class="fa fa-twitter"></i>Sign In with Twitter</button>
                                </div>
                                <div class="mb-20">
                                    <button class="btn btn-lg btn-block btn-social btn-google-plus"><i class="fa fa-google-plus"></i>Sign In with Google</button>
                                </div>
                                <div class="custom-checkbox mb-20">
                                    <input type="checkbox" id="remember_social" checked>
                                    <label class="color-mid" for="remember_social">Keep me signed in on this computer.</label>
                                </div>
                                <div class="text-center color-mid">
                                    Need an Account ? <a href="signup.html" class="color-green">Create Account</a>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                    <div style="">
                        <button style="margin-bottom: 20px;font-size: 16px" onclick="addMenu()" type="button" class="col-xs-12 btn btn-default">添加菜谱</button>
                        <button style="font-size: 16px" onclick="tendence()"  type="button" class="col-xs-12 btn btn-default">趋势</button>
                    </div>
                    <script>
                        function tendence() {
                            layui.use('layer', function(){
                                var layer = layui.layer;
                                layer.open({
                                    type: 2,
                                    title: '添加菜谱',
                                    shadeClose: true,
                                    shade: false,
                                    maxmin: false, //开启最大化最小化按钮
                                    area: ['480px', '500px'],
                                    content: '<%=basePath%>restaurant/getAllMenuOfRestaurantForData.action'
                                });
                            });
                        }
                        function addMenu() {
                            layui.use('layer', function(){
                                var layer = layui.layer;
                                layer.open({
                                    type: 2,
                                    title: '添加菜谱',
                                    shadeClose: true,
                                    shade: false,
                                    maxmin: false, //开启最大化最小化按钮
                                    area: ['480px', '500px'],
                                    content: '<%=basePath%>addMenu.jsp'
                                });
                            });
                        }

                    </script>
                </section>
                <section class="sign-area panel p-40">
                    <h3 class="sign-title"><strong>有关文章</strong></h3>
                    <div class="row row-rl-0">
                        <div class="row row-masnory row-tb-20">
                            <c:forEach items="${posts}" var="post" varStatus="statu">
                                <div class="col-sm-6">
                                    <div class="coupon-single panel">
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
                                                                <div class="panel-body" style="font-size: 14px;font-family: inherit">
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
