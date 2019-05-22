<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
                    content: '<%=basePath%>signup.jsp'
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
                            <div class="input-group">
                                <input type="text" class="form-control input-lg search-input" placeholder="在这输入搜索内容..." required="required">
                                <div class="input-group-btn">
                                    <div class="input-group">
                                        <%--<select class="form-control input-lg search-select">
                                            <option>选择类型</option>
                                            <option value="餐食">餐食</option>
                                            <option value="窗口">窗口</option>
                                            <option value="点评">点评</option>
                                        </select>--%>
                                        <div class="input-group-btn">
                                            <button type="submit" class="btn btn-lg btn-search btn-block">
                                                <i class="fa fa-search font-16"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
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