<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 登录</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script src="http://malsup.github.io/jquery.form.js"></script>
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
    <style>
        #codeImage{
            cursor:pointer;
            position: relative;
            bottom: 35px;
            left: 80px;
        }
        #codetip{
            position: relative;
            bottom: 35px;
            left: 90px;
        }
    </style>
</head>
<script>
    $(document).ready(function(){
        $(".form-control").blur(function () {
            $("#tips").html("&nbsp;");
        });
        $("#lgbtn").click(function () {
            $("#tips").html("&nbsp;");
        });
        $("#loginform").ajaxForm(function(data){
            var flag = data.flag;
            var message = data.message;
            if(false == flag){
                $("#tips").html(message);
            }else{
                window.location.href = "login/toindex";
            }
        });
    });
    function changeCode(){
        $('#codeImage').attr('src','login/authCode?abc='+Math.random());//链接后添加Math.random，确保每次产生新的验证码，避免缓存问题。
    }
</script>
<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">H+</h1>

            </div>
            <h3>欢迎使用核动力商城</h3>

            <form class="m-t" role="form" id="loginform" action="login/dologin" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="uname" placeholder="用户名" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="upassword" placeholder="密码" required="">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="authCode" name="authCode" placeholder="验证码" style="width:50% ;" required="">
                    <img type="image" src="login/authCode" id="codeImage" onclick="changeCode()" title="图片看不清？点击重新得到验证码" />
                    <a id="codetip" onclick="changeCode()">换一张</a>
                </div>
                <div class="form-group">
                    <p id="tips">&nbsp;</p>
                </div>
                <button type="submit" id="lgbtn" class="btn btn-primary block full-width m-b">登 录</button>

                <!--
                <p class="text-muted text-center"> <a href="login.html#"><small>忘记密码了？</small></a> | <a href="register.html">注册一个新账号</a>
                </p>
                -->
            </form>
        </div>
    </div>

</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
</html>
