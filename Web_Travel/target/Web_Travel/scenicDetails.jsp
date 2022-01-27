<%@ page import="mc.web_travel.entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: MC234
  Date: 2021/5/25
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User)request.getSession().getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>旅游景点 - 漫步旅途</title>
    <link type="text/css" rel="stylesheet"href="css/reset2.css" />
    <link type="text/css" rel="stylesheet"href="css/jd_list.css" />
    <script type="text/javascript" src="js/jd_list.js"></script>
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.superslide.2.1.1.js"></script>
    <script type="text/javascript" src="js/mredirect.js"></script>
    <script type="text/javascript" src="js/time.js"></script>
    <script> var PageClass = 2,classid=parseInt('1'),bclassid=parseInt('0'),listid=parseInt('1') </script>
</head>
<body>
<div class=" top_bg">
    <p class="top_bg_1" style="font-size: 20px;font-family: '宋体';">漫步旅途欢迎您！在旅行中寻找最年轻的自己！ <span id="time" style="margin-left: 145px;color: red;"></span></p>
</div>
<div class="logo_bg">
    <div class="logo">
        <a href="#"><img class="logo2" src="img/logo3.png" /></a>
        <div style="width:523px; float:left; height:20px;">
            <div class="top_search">
                <form action="#" method="get" id="head_serach" name="formsearch">
                    <input class="searchInfo" type="text" name="keyboard" id="search-keyword" placeholder="请输入目的地或景点名称或关键字" value="" />
                    <input class="searchButton" type="submit" value="搜索" />
                </form>
                <span>热门搜索:
                        <a href="#" >旅游 </a>
                        <a href="#" >广东 </a>
                        <a href="#" >青铜剑 </a>
                        <a href="#" >北京 </a>
                    </span>
            </div>
        </div>

        <ul>
            <%
                if(user!=null){
            %>
            <li style="float: left;margin-top: 25px; font-size:22px;  color:#000; font-weight: 600;line-height:50px; text-align:center;  margin-left:85px;padding-right:20px;">
                <span>您好！</span><font color="red"><%=user.getUsername()%></font>
                <span style="margin-left: 35px;"><a href="exit.jsp">注销</a></span>
            </li>
            <%}else {%>
            <li style="float:left; margin-top:20px;width:50px; height:50px; font-size:20px; padding:10px; line-height:50px;font-weight: 600;background: #f6f6f6;color:#16aefd; background-color:rgba(0,0,0,0.5); text-align:center; float:left; margin-left:125px;border-radius:100px;"><a href="login.jsp">登录</a></li>
            <li style="float:left; margin-top:20px;width:50px; height:50px; font-size:20px; padding:10px; line-height:50px;color:#fff; font-weight: 600; background:rgba(0,0,0,0.5); text-align:center; float:left; margin-left:35px;border-radius:100px;"><a href="regist.jsp">注册</a></li>
            <%}%>
        </ul>
    </div>
</div>
<div class="nav_bg">
    <ul style="width: 90%;">
        <li style="margin-left: 150px;margin-right: 160px">
            <a href="index.jsp">首页</a>
        </li>
        <li style="margin-right: 160px">
            <a href="scenicDetails.jsp">景点详情</a>
        </li>
        <li style="margin-right: 160px">
            <a href="#">攻略游记</a>
        </li>
        <li style="margin-right: 160px">
            <a href="#">个人中心</a>
            <ul>
                <%
                    if(user!=null){
                %>
                <li><a href="UpdateUserToServlet?username=<%=user.getUsername()%>">修改信息</a></li>
                <%
                    }
                %>
            </ul>
        </li>
    </ul>
</div>
<script>
    var urlstr = location.href;
    var urlstatus=false;
    $(".nav_bg ul li a").each(function () {
        if ((urlstr + '/').indexOf($(this).attr('rel')) > -1&&$(this).attr('rel')!='') {
            $(this).addClass('cur'); urlstatus = true;
        } else {
            $(this).removeClass('cur');
        }
    });
    if (!urlstatus) {$(".nav_bg ul li a").eq(0).addClass('cur'); }
</script>
<div class="c_1200">
    <div class="list_news">
        <div class="news_wz"><i></i>您所在的位置：
            <a href="index.html">首页</a>&nbsp;>&nbsp;<a href="#">旅游景点</a>
        </div>
        <div class="list_fl">
            <p><i>地区</i>
                <a href="#" class="current">全部</a>
                <a href="#" class="">甘肃省</a>
                <a href="#" class="">贵州省</a>
                <a href="#" class="">黑龙江省</a>
                <a href="#" class="">湖南省</a>
                <a href="#" class="">青海省</a>
                <a href="#" class="">湖北省</a>
                <a href="#" class="">河南省</a>
                <a href="#" class="">宁夏回族自治区</a>
                <a href="#" class="">其他</a>
            </p>
            <p><i>等级</i>
                <a href="#" class="current">全部</a>
                <a href="#" class="">A</a>
                <a href="#" class="">AA</a>
                <a href="#" class="">AAA</a>
                <a href="#" class="">AAAA</a>
                <a href="#" class="">AAAAA</a>
            </p>
            <p><i>月份</i>
                <a href="#" class="current">全部</a>
                <a href="#" class="">一月</a>
                <a href="#" class="">二月</a>
                <a href="#" class="">三月</a>
                <a href="#" class="">四月</a>
                <a href="#" class="">五月</a>
                <a href="#" class="">六月</a>
                <a href="#" class="">七月</a>
                <a href="#" class="">八月</a>
                <a href="#" class="">九月</a>
                <a href="#" class="">十月</a>
                <a href="#" class="">十一月</a>
                <a href="#" class="">十二月</a>
            </p>
            <p class="fl_list"><i>分类</i>
                <a href="#" class="current">全部</a>
                <a href="#" class="">游山</a>
                <a href="#" class="">玩水</a>
                <a href="#" class="">赏花</a>
                <a href="#" class="">古镇</a>
                <a href="#" class="">名校</a>
                <a href="#" class="">海岛</a>
                <a href="#" class="">城市</a>
                <a href="#" class="">草原</a>
                <a href="#" class="">沙漠</a>
                <a href="#" class="">祈福拜佛</a>
            </p>
        </div>
    </div>
</div>
<div class="c_1200">
    <div class="list_li">
        <ul>
            <li><a href="scenicDetails_SZ.jsp" title="深圳自助游攻略 深圳旅游景点大全" ><img alt="深圳自助游攻略 深圳旅游景点大全" src="img/j3fyxw22ibq.jpg" /><span>深圳</span><i></i></a></li>
            <li><a href="#" title="鼓浪屿自助游攻略 鼓浪屿旅游攻略" ><img alt="鼓浪屿自助游攻略 鼓浪屿旅游攻略" src="img/hvgm2rta02z.jpg" /><span>鼓浪屿</span><i></i></a></li>
            <li><a href="#" title="宁波旅游景点  宁波旅游攻略" ><img alt="宁波旅游景点  宁波旅游攻略" src="img/ip3e2lbgaoh.jpg" /><span>宁波</span><i></i></a></li>
            <li><a href="#" title="天津旅游景点大全 天津自驾游攻略" ><img alt="天津旅游景点大全 天津自驾游攻略" src="img/pakqzcglj0a.jpg" /><span>天津</span><i></i></a></li>
            <li><a href="#" title="拉萨自驾游详细攻略 拉萨自由旅游攻略" ><img alt="拉萨自驾游详细攻略 拉萨自由旅游攻略" src="img/f5ggwyh4lgp.jpg" /><span>拉萨</span><i></i></a></li>

            <li><a href="#" title="广州自由行旅游攻略  广州自助游攻略" ><img alt="广州自由行旅游攻略  广州自助游攻略" src="img/3sbweetic31.jpg" /><span>广州</span><i></i></a></li>
            <li><a href="#" title="昆明自助游攻略 昆明旅游景点+美食指南" ><img alt="昆明自助游攻略 昆明旅游景点+美食指南" src="img/beq1io4jcvr.jpg" /><span>昆明</span><i></i></a></li>
            <li><a href="#" title="长沙自助游攻略 长沙旅游景点+美食指南" ><img alt="长沙自助游攻略 长沙旅游景点+美食指南" src="img/zcpa2udqdop.jpg" /><span>长沙</span><i></i></a></li>
            <li><a href="#" title="上海自助游攻略 上海旅游景点+美食指南" ><img alt="上海自助游攻略 上海旅游景点+美食指南" src="img/dpf3iurvcjo.jpg" /><span>上海</span><i></i></a></li>
            <li><a href="#" title="武汉旅游景点大全排名 武汉自驾游哪里好玩 武汉吃喝玩乐一日游攻略" ><img alt="武汉旅游景点大全排名 武汉自驾游哪里好玩 武汉吃喝玩乐一日游攻略" src="img/4riirrqraob.jpg" /><span>武汉</span><i></i></a></li>

            <li><a href="#" title="青岛自驾游攻略 青岛自驾游最佳线路 青岛周边自驾游攻略" ><img alt="青岛自驾游攻略 青岛自驾游最佳线路 青岛周边自驾游攻略" src="img/khcqdu2h04w.jpg" /><span>青岛</span><i></i></a></li>
            <li><a href="#" title="黄山旅游住宿攻略 黄山旅游景点大全 黄山自驾游旅行攻略" ><img alt="黄山旅游住宿攻略 黄山旅游景点大全 黄山自驾游旅行攻略" src="img/aenjgyyehvk.jpg" /><span>黄山</span><i></i></a></li>
            <li><a href="#" title="世界最好玩的地方有哪些 世界最好玩的国家" ><img alt="世界最好玩的地方有哪些 世界最好玩的国家" src="img/4wbu5eyf1sv.jpg" /><span>世界最好玩的城市</span><i></i></a></li>
            <li><a href="#" title="大理旅游攻略 大理旅游景点大全 大理自由行旅游攻略" ><img alt="大理旅游攻略 大理旅游景点大全 大理自由行旅游攻略" src="img/5adzonskda4.jpg" /><span>大理</span><i></i></a></li>
            <li><a href="#" title="庐山旅游攻略一日游 庐山自驾游攻略 庐山自由行旅游攻略" ><img alt="庐山旅游攻略一日游 庐山自驾游攻略 庐山自由行旅游攻略" src="img/qoy01civzub.jpg" /><span>庐山</span><i></i></a></li>

            <li><a href="#" title="桂林旅游攻略 桂林自由行最佳路线 桂林自驾游怎么玩" ><img alt="桂林旅游攻略 桂林自由行最佳路线 桂林自驾游怎么玩" src="img/lcjf0fxlvkx.jpg" /><span>桂林</span><i></i></a></li>

        </ul>
    </div>
    <div class="show_xyy">
        <a title="Total record">&nbsp;<b>42</b> </a>&nbsp;&nbsp;&nbsp;<b>1</b>
        <a href="#">2</a>&nbsp;
        <a href="#">3</a>&nbsp;
        <a href="#">下一页</a>&nbsp;
        <a href="#">尾页</a>&nbsp;
    </div>
</div>
<script type="text/javascript"> var _webInfo = {};_webInfo={Username:"[!--username--]",Type:"1",platform:"1",DateTime:"[!--newstime--]",Id:"[!--id--]"};</script>
<div style="display:none"></div>
<div class="foot_bg">
    <div class="foot_jz">
        <a href="/"><img src="img/foot_logo2.png"></a>
        <span><i>版权所有：</i>
                <p>漫步旅途 Copyright@ 未来之星 2021-5 本站刊登的所有新闻和各种专题资料，均来源互联网收集整理，仅供参考。</p>
            </span>
        <div class="list2_weixin"><img src="img/weixin.jpg" />扫码有惊喜！</div>
    </div>
</div>
</body>
</html>