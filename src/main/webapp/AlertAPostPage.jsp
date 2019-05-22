<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 19-3-12
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="javax.swing.plaf.basic.BasicEditorPaneUI" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
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

    <link href="<%=basePath%>assets/css/summernote.css" rel="stylesheet">
    <script src="<%=basePath%>assets/js/summernote.js"></script>
    <%--<!-- include summernote css/js -->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>--%>
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
                            <H1 style="margin:0 10%">修改文章</H1>
                            <hr/>
                            <div style="margin: 10%">

                                <form class="layui-form" action="<%=basePath%>post/sendAPost.action">


                                    <input hidden name="userid" value="${user.uid}"/>
                                    <input hidden name="username" value="${user.name}"/>

                                    <%--<!-- Single button -->
                                    <disv class="btn-group">
                                        <label class="layui-form-label">餐厅：</label>
                                        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                                            Popover on 顶部
                                        </button>
                                    </disv>
                                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Tooltip on top">Tooltip on top</button>

    --%>
                                    <div  class="layui-form-item" >
                                        <label class="layui-form-label">餐馆：</label>
                                        <div  class="layui-input-block">
                                            <select class="selectpicker show-tick form-control" name="restaurantid" id="restaurant"  onchange="refreshMenu()" data-live-search="true">
                                                <option value="-1">--请选择--</option>
                                                <c:forEach items="${restaurants}" var="restaurant">
                                                    <option value="${restaurant.id}" >${restaurant.name}(${restaurant.position})</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <script>
                                       function refreshMenu(){
                                           var restaurantId =  $("#restaurant option:selected").val();
                                           var menus;
                                           $.ajax({
                                               url:"<%=basePath%>restaurant/getAllMenuOfRestaurant.action?restaurantId="+restaurantId
                                               ,type:'post'
                                               , async: true
                                               ,DataType: "json"
                                               , success:function (menuList) {

                                                   var select = document.getElementById("chooseMenu");
                                                   select.innerHTML = "";
                                                   for(var i=0; i<=menuList.length; i++){
                                                       var name = menuList[i].name;
                                                       var id = menuList[i].menuid;
                                                       select.options.add(new Option(name,id));
                                                   }
                                               }
                                           })
                                       }


                                    </script>
                                    <div class="layui-form-item" >
                                        <label class="layui-form-label">菜品：</label>
                                        <div  class="layui-input-block">
                                            <select  name="menuid" id="chooseMenu" data-live-search="true" class="form-control" style="display: inline">
                                                    <option  value="-1">--请选择--</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">评分：</label>
                                        <div id="stars" name="score"  class="layui-input-block"></div>
                                    </div>
                                    <input type="hidden" id="score" name="score"/>
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
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">标题：</label>
                                        <div class="layui-input-block">
                                            <input name="title" class="form-control" placeholder="请输入标题"/>
                                        </div>
                                    </div>
                                    <input name="content" id="content" hidden/>
                                    <div class="layui-form-item layui-form-text">
                                        <label class="layui-form-label">文章：</label>
                                        <div id="summernote" class="layui-input-block"><p></p></div>

                                        <script>
                                            $(document).ready(function() {
                                                $('#summernote').summernote();
                                                $('#summernote').summernote({
                                                    placeholder:'请输入文章内容'
                                                });
                                                $('#summernote').summernote('code',content);
                                            });


                                            function refreshContent() {
                                                $("#content").attr("value",$('#summernote').summernote('code')) ;
                                                this.submit();
                                                layer.closeAll();
                                            }

                                        </script>
                                    </div>

                                    <div class="layui-form-item" style="margin-top: 30px;">
                                        <div class="layui-input-block">
                                            <button class="layui-btn" lay-submit lay-filter="formDemo" onmousedown="refreshContent()">提交</button>
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


    <script>
        $(function (){
            $("[data-toggle='popover']").popover();
        });
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })

    </script>

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
</main>
</body>
</html>
