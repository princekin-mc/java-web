<%--
  Created by IntelliJ IDEA.
  User: MC234
  Date: 2021/5/25
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>登录</title>
    <link type="text/css" rel="stylesheet" href="css/login.css" />
    <link type="text/css" rel="stylesheet" href="css/reset2.css" />
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/time.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var height=$(document).height();
            $('.main').css('height',height);
        })
    </script>
    <script type="text/javascript">
        function changeYZM() {
            var yzm = document.getElementById("loginYZM");
            yzm.src= "<%=path%>/CpachaServlet?num="+Math.random();
        }
    </script>
</head>
<body>
<div class="main">
    <p class="top_bg_1" style="margin-top: 45px;font-size: 22px;font-family: '宋体';">漫步旅途欢迎您！在旅行中寻找最年轻的自己！ <span id="time" style="margin-left: 240px;color: red;"></span></p>
    <div class="main0" style="margin-top: 50px;">
        <img src="img/logo3.png" style="margin-top: 10px;margin-left: 35px;"/>
        <div class="main_left">
            <img src="img/login-image-3.png" class="theimg"/>
            <img src="img/login-image-2.png" class="secimg"/>
            <img src="img/login-image-1.png" class="firimg"/>
        </div>
        <div class="main_right">
            <div class="main_r_up">
                <img src="img/user.png" />
                <div class="pp">登录</div>
            </div>
            <div class="sub"><p>还没有账号？<a href="regist.jsp"><span class="blue">立即注册</span></a></p></div>
            <form action="LoginServlet" method="post">
                <div class="txt">
                    <span style="letter-spacing:8px;">用户名:</span>
                    <input name="username" type="text" class="txtphone" placeholder="请输入用户名" required/>
                </div>
                <div class="txt">
                    <span style="letter-spacing:4px;">登录密码:</span>
                    <input name="password" type="password" class="txtphone" placeholder="请输入登录密码" maxlength="12" required/>
                </div>
                <div class="txt">
                    <span style=" float:left;letter-spacing:8px;margin-left:2px;">验证码:</span>
                    <input name="cpacha" type="text" class="txtyzm" style="margin-left:13px;" placeholder="请输入页面验证码" required/>
                    <img id="loginYZM" src="CpachaServlet" style="margin-left:12px;margin-right:3px;" onclick="changeYZM()" class="yzmimg"/>
                </div>
                <div style="margin-top:30px;margin-left: 18px;margin-bottom:10px;">
                    <input name="" type="checkbox" value="" checked="checked"/>
                    记住我 <a href="#"><span class="blue" style=" padding-left:200px; cursor:pointer">忘记密码?</span></a>
                </div>
                <input type="submit" style="padding:10px; width: 240px;margin-left: 18%;margin-top: 14px;line-height: 23px;font-size: 16px;color: #fff;background-color: #30adfa;border: none;border-radius: 5px; cursor:pointer" value="登录">
            </form>
        </div>
    </div>
</div>

<div class="footer">
    <div class="footer0">
        <div class="footer_l">使用条款 | 隐私保护</div>
        <div class="footer_r">© 2021</div>
    </div>
</div>
</body>
</html>
