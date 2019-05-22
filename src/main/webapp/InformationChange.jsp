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
                            <H1 style="margin:0 10%">信息修改</H1>
                            <hr/>
                            <div style="margin: 10%">

                                <form class="layui-form" action="<%=basePath%>menu/makeAComment.action">
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">用户ID</label>
                                        <div class="layui-input-block">
                                            <input class="input-lg" title="无法修改" value="${currentInfor.uid}" disabled name="uid">
                                        </div>
                                    </div>
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">学号</label>
                                        <div class="layui-input-block">
                                            <input class="input-lg" value="${currentInfor.xhid}" name="xhid" disabled>
                                        </div>
                                    </div>
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">性别</label>
                                        <div class="layui-input-block">
                                            <input class="input-lg" value="${currentInfor.gender}" id="gender" name="gender">
                                            <input type="button" onclick="changeGender()"  class="input-lg"  value="修改"/>
                                        </div>
                                    </div>
                                    <script>
                                        function changeGender(){
                                            var gender = $("#gender").val();
                                            $.ajax({
                                                url:"<%=basePath%>rewriteGender.action?gender="+gender
                                                , async: true
                                                , success:function (isSuccess) {
                                                    if (isSuccess)
                                                        layui.use('layer', function () {
                                                            var layer = layui.layer;
                                                            layer.closeAll();
                                                            layer.msg('简介修改成功');
                                                            return;
                                                        })
                                                }
                                            })
                                        }
                                        function changeName(){
                                            var name = $("#name").val();
                                            $.ajax({
                                                url:"<%=basePath%>rewriteName.action?name="+name
                                                , async: true
                                                , success:function (isSuccess) {
                                                    if (isSuccess)
                                                        layui.use('layer', function () {
                                                            var layer = layui.layer;
                                                            layer.closeAll();
                                                            layer.msg('简介修改成功');
                                                            return;
                                                        })
                                                }
                                            })
                                        }
                                    </script>
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">姓名</label>
                                        <div class="layui-input-block">
                                            <input class="input-lg" value="${currentInfor.name}" id="name" name="name">
                                            <input type="button" onclick="changeName()"  class="input-lg" value="修改"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">签名</label>
                                        <div class="layui-input-block">
                                            <textarea class="input-lg" value="${currentInfor.shortsaying}"id="shortSaying" name="shortSaying">${currentInfor.shortsaying}</textarea>
                                            <input type="button" onclick="changeShortSaying()"  class="input-lg" style="display: inline;position: relative;bottom: 30px; " value="修改"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">密码</label>
                                        <div class="layui-input-block" onclick="changePassword()">
                                            <input class="input-lg" type="button" value="修改密码" name="password">
                                        </div>
                                    </div>
                                    <script>
                                        function changeShortSaying() {
                                            var shortSaying = $("#shortSaying").val();
                                            $.ajax({
                                                url:"<%=basePath%>rewriteShortSaying.action?shortSaying="+shortSaying
                                                , async: true
                                                , success:function (isSuccess) {
                                                    if (isSuccess)
                                                        layui.use('layer', function () {
                                                            var layer = layui.layer;
                                                            layer.closeAll();
                                                            layer.msg('简介修改成功');
                                                            return;
                                                        })
                                                }
                                            })
                                        }
                                        function changePassword() {
                                            layui.use('layer', function() {
                                                var layer = layui.layer;
                                                layer.open({
                                                    id: 1,
                                                    type: 1,
                                                    title: '修改密码',
                                                    skin: 'layui-layer-rim',
                                                    area: ['450px', 'auto'],

                                                    content: ' <div class="row" style="width: 420px;  margin-left:7px; margin-top:10px;">'
                                                    + '<div class="col-sm-12">'
                                                    + '<div class="input-group">'
                                                    + '<span class="input-group-addon"> 旧 密 码   :</span>'
                                                    + '<input id="oldpwd" type="password" class="form-control" placeholder="请输入密码">'
                                                    + '</div>'
                                                    + '</div>'
                                                    + '<div class="col-sm-12"  style="margin-top: 10px">'
                                                    + '<div class="input-group">'
                                                    + '<span class="input-group-addon"> 新 密 码   :</span>'
                                                    + '<input id="firstpwd" type="password" class="form-control" placeholder="请输入密码">'
                                                    + '</div>'
                                                    + '</div>'
                                                    + '<div class="col-sm-12" style="margin-top: 10px">'
                                                    + '<div class="input-group">'
                                                    + '<span class="input-group-addon">确认密码:</span>'
                                                    + '<input id="secondpwd" type="password" class="form-control" placeholder="请再输入一次密码">' +
                                                    '<input id="nowPassword" type="password" hidden>'
                                                    + '</div>'
                                                    + '</div>'
                                                    + '</div>'
                                                    ,
                                                    btn: ['修改', '取消']
                                                    ,yes: function (index, layero) {
                                                        var oldPassword = $("#oldpwd").val();
                                                        var newPassword = $("#firstpwd").val();
                                                        var newPassword2 = $("#secondpwd").val();
                                                        $("#nowPassword").val("${currentInfor.password}");
                                                        if(newPassword == undefined ||oldPassword == undefined || newPassword2== undefined
                                                            ||newPassword != newPassword2||oldPassword != $("#nowPassword").val()){
                                                            layui.use('layer', function() {
                                                                var layer = layui.layer;
                                                                $("#oldpwd").val("");
                                                                $("#firstpwd").val("");
                                                                $("#secondpwd").val("");
                                                                layer.msg('密码修改失败')
                                                            })
                                                            return;
                                                        }

                                                        if(true){
                                                            $.ajax({
                                                                url:"<%=basePath%>rewritePassword.action?password="+newPassword
                                                                , async: true
                                                                , success:function (isSuccess) {
                                                                    if(isSuccess)
                                                                        layui.use('layer', function() {
                                                                            var layer = layui.layer;
                                                                            layer.closeAll();
                                                                            layer.msg('密码修改成功');
                                                                            return;
                                                                        })
                                                                    else{
                                                                        layui.use('layer', function() {
                                                                            var layer = layui.layer;
                                                                            $("#oldpwd").val("");
                                                                            $("#firstpwd").val("");
                                                                            $("#secondpwd").val("");
                                                                            layer.msg('密码修改失败')
                                                                        })
                                                                    }
                                                                }
                                                            })
                                                        }

                                                    },
                                                    btn2: function (index, layero) {
                                                        layer.close(index);
                                                    }

                                                });
                                            });
                                        }
                                    </script>
                                    <%--<input type="hidden" id="score" name="score"/>
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
                                    </script>--%>
                                </form>
                                <%--<c:forEach items="${comments}" var="comment">
                                    <div class="col-xs-12" style="border: 1px solid #ddd;margin-top: -1px">
                                    <div class="post-author-area panel media p-20">
                                            <h3>${comment.username}</h3>
                                            <h5><fmt:formatDate value="${comment.time}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>  <div id="starScore${comment.id}" style="margin-left: auto"  class="layui-input-block"></div></h5>
                                            <p class="color-mid" style="word-break: break-all">${comment.content}</p>
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
                                </c:forEach>--%>

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
