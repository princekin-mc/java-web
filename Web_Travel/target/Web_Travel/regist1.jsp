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
    <title>注册</title>
    <link type="text/css" rel="stylesheet" href="css/regist.css" />
    <link type="text/css" rel="stylesheet" href="css/reset2.css" />
    <script type="text/javascript" src="js/regist.js"></script>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/province_city.js"></script>
    <script type="text/javascript" src="js/time.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var height=$(document).height();
            $('.main').css('height',height);
        })
    </script>
    <script type="text/javascript">
        // 初始化数据。为省市级连做准备。
        $(document).ready(function(){
            init();
        });
    </script>
    <script type="text/javascript">
        function changeYZM() {
            var yzm = document.getElementById("registYZM");
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
            <img src="img/zhuce-image-3.png" class="theimg"/>
            <img src="img/zhuce-image-2.png" class="secimg"/>
            <img src="img/zhuce-image-1.png" class="firimg"/>
        </div>
        <div class="main_right">
            <div class="main_r_up">
                <img src="img/user.png" />
                <div class="pp">注册</div>
            </div>
            <div class="sub"><p>已经注册？<a href="login.jsp"><span class="blue">请登录</span></a></p></div>
            <form action="RegistServletDo" method="post">
                <div>
                    <span style="float:left;width: 90px; font-size: 14px;color: #666; height:40px; line-height:40px;margin-top:20px;margin-right:11px;letter-spacing:4px;">性&nbsp;&nbsp;&nbsp;&nbsp;别:</span>
                    男&nbsp;&nbsp;&nbsp;<input type="radio" style="margin-top:35px;" id="sex" name="sex" value="0" checked>
                    &nbsp;&nbsp;&nbsp;女&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="1">
                </div>
                <div class="txt">
                    <span style="letter-spacing:4px;">年&nbsp;&nbsp;&nbsp;&nbsp;龄:</span>
                    <input type="text" style="width: 235px" id="age" name="age" class="txtphone" placeholder="请输入您的年龄" onkeyup="this.value=this.value.replace(/\D/g,'')">
                </div>
                <div class="txt">
                    <span style="letter-spacing:4px;">地&nbsp;&nbsp;&nbsp;&nbsp;址:</span>
                    <select style="width:120px; height:40px; border:1px solid #ccc; padding-left:20px; margin-left:22px;" name="province" id="param_province" onchange="provincechange(this.selectedIndex)"><option>请选择省份</option></select>
                    <select style="width:120px; height:40px; border:1px solid #ccc; padding-left:20px; margin-left:11px;" name="city" id="param_city"><option>请选择城市</option></select>
                </div>
                <div class="txt">
                    <span style="float:left;letter-spacing:9px;">验证码:</span>
                    <input name="cpacha" type="text" class="txtyzm" placeholder="请输入验证码" required/>
                    <img id="registYZM" src="<%=path%>/CpachaServlet" onclick="changeYZM()" class="yzmimg"/>
                </div>
                <div class="txt txt0">
                    <a href="regist.jsp"><span style=" float:left;color:#31acfb">返回上一步</span></a>
                    <input type="submit" class="zhucebtn" value="确认注册" style="float:left;margin-left: 15px;">
                </div>
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
