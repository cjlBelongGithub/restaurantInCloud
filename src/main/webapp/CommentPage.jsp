<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 19-3-12
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
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
<html>
<head>
    <title>Title</title>
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
</head>
<body>
<!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
<main id="mainContent" class="main-content">
    <!-- Page Container -->
    <div class="page-container ptb-60">
        <div class="container">
            <div class="row row-rl-10 row-tb-20">
                <div class="page-content col-xs-12 col-sm-7 col-md-8">

                    <!-- Blog Area -->
                    <div class="blog-area blog-single-post">
                        <div class="row row-tb-20">
                            <H1 style="margin:0 10%">
                                <c:if test="${empty restaurant}">
                                    快捷
                                </c:if>
                                <c:if test="${not empty restaurant}">
                                    菜品
                                </c:if>
                                评价
                            </H1>
                            <hr/>
                            <div style="margin: 10%">
                            <c:if test="${empty sessionScope.restaurant && not empty sessionScope.user}">
                                <form class="layui-form" action="<%=basePath%>menu/makeAComment.action">
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">评价：</label>
                                        <div class="layui-input-block">
                                            <textarea name="content" id="content" placeholder="请输入评论内容" class="layui-textarea"></textarea>
                                        </div>
                                    </div>
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">评分：</label>
                                        <div id="stars"  class="layui-input-block"></div>
                                    </div>
                                    <input type="hidden" id="score" name="score"/>
                                    <input type="hidden" id="menuId" name="menuId" value="${menuId}"/>
                                    <div class="layui-form-item">
                                        <div class="layui-input-block">
                                            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                        </div>
                                    </div>
                                    <script>
                                        layui.use('rate', function(){
                                            var rate = layui.rate;

                                            //渲染

                                            rate.render({
                                                elem: '#stars'
                                                ,setText: function(value){
                                                    var arrs = {
                                                        '1': '极差'
                                                        ,'2': '差'
                                                        ,'3': '中等'
                                                        ,'4': '好'
                                                    };
                                                    this.span.text(arrs[value] || ( value + "星"));
                                                } ,choose: function(value){
                                                    $('#score').attr("value",value);
                                                }
                                            });
                                        });
                                    </script>
                                </form>
                            </c:if>
                                <c:if test="${fn:length(comments)==0}">
                                    <div class="jumbotron">
                                        <h1>暂无评论</h1>
                                    </div>
                                </c:if>
                                <c:forEach items="${comments}" var="comment">
                                    <div class="col-xs-12" style="border: 1px solid #ddd;margin-top: -1px">
                                    <div class="post-author-area panel media p-20">
                                        <h3><span style="color: black;">${comment.username}</span><small style="color: #bbb">${comment.user.shortsaying}</small></h3>
                                            <h5><fmt:formatDate value="${comment.time}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                                <div id="starScore${comment.id}" style="margin-left: auto"  class="layui-input-block">

                                                </div>
                                            </h5>
                                            <p class="color-mid" style="word-break: break-all">&nbsp;&nbsp;&nbsp;&nbsp;${comment.content}</p>
                                            <c:if test="${not empty comment.restaurantReply}">
                                                <hr/>
                                                <p style="word-break: break-all;font-color: #000"><strong>&nbsp;&nbsp;&nbsp;&nbsp;商家回复：${comment.restaurantReply.content}</strong></p>
                                            </c:if>
                                            <c:if test="${not empty restaurant && empty comment.restaurantReply}">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="commentReply${comment.id}" placeholder="回复用户">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-default" type="button" onclick="sendUp(${comment.id})" >发送</button>
                                                    </span>
                                                </div><!-- /input-group -->
                                                <script>
                                                    function sendUp(id) {
                                                        var name = 'commentReply'+id;
                                                        $.ajax({
                                                            url:"<%=basePath%>restaurant/replyUser.action?commentid="+id+"&content="+$("#"+name).val()
                                                            ,type:'post'
                                                            , async: true
                                                            , success:function () {
                                                                window.location.reload();
                                                            }
                                                        })
                                                    }
                                                </script>
                                            </c:if>
                                    </div>
                                </div>
                                    <script>
                                        layui.use('rate', function(){
                                            var rate = layui.rate;

                                            //渲染

                                            rate.render({
                                                elem: '#starScore${comment.id}'
                                                ,value:${comment.score}
                                                ,readonly:true
                                            });
                                        });
                                    </script>
                                </c:forEach>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
