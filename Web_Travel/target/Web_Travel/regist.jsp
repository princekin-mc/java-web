<%--
  Created by IntelliJ IDEA.
  User: MC234
  Date: 2021/5/25
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>注册</title>
    <link type="text/css" rel="stylesheet" href="css/regist.css" />
    <link type="text/css" rel="stylesheet" href="css/reset2.css" />
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/time.js"></script>

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
            <form action="RegistServlet" method="post">
                <div class="txt txt0">
                    <span style="letter-spacing:8px;">用户名:</span>
                    <input name="username" type="text" id="username" required  class="user" placeholder="请输入用户名" onblur="checkUser()"/>
                    <span id="msg"></span>
                </div>
                <div class="txt txt0">
                    <span style="letter-spacing:4px;">密&nbsp;&nbsp;&nbsp;&nbsp;码:</span>
                    <input name="password" type="password" class="user" placeholder="请输入密码" required/>
                </div>
                <div class="xieyi">
                    <input name="" type="checkbox" value="" checked="checked"/>
                    我已经阅读并遵守 <span class="blue" style="cursor:pointer">《漫步旅途服务协议》</span>
                </div>
                <input type="submit" class="xiayibu" value="下一步" style="margin-left: 15%;">
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

<script>
    function checkUser() {
        let username=document.getElementById("username").value;
        let xml = new XMLHttpRequest();
        xml.open("get","checkUser?username="+username);
        xml.onreadystatechange=function () {
            if(xml.readyState===4 && xml.status===200){
                let val = xml.responseText;
                console.log(val);
                if(val!=null&&val!==''){
                    let  msg =document.getElementById("msg");
                    if(val==="true"){
                        msg.innerHTML="已通过";
                        msg.style.color="green";
                    }else {
                        msg.innerHTML="已注册";
                        msg.style.color="red";
                    }
                }
            }
        };
        xml.send(null);
    }
</script>
<script type="text/javascript">
    let msg = '<%=request.getAttribute("msg")%>';
    if (msg!=null){
        alert(msg);
    }
</script>