<%@ page import="mc.web_travel.entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: MC234
  Date: 2021/5/25
  Time: 15:10
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
    <title>漫步旅途</title>
    <link type="text/css" rel="stylesheet" href="css/reset2.css" />
    <link type="text/css" rel="stylesheet" href="css/index2.css" />
    <script type="text/javascript" src="js/cxptftpdg.js"></script>
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.superslide.2.1.1.js"></script>
    <script type="text/javascript" src="js/mredirect.js"></script>
    <script type="text/javascript" src="js/time.js"></script>
</head>
<body>
<div class=" top_bg">
    <p class="top_bg_1" style="font-size: 20px;font-family: '宋体';">漫步旅途欢迎您！在旅行中寻找最年轻的自己！ <span id="time" style="margin-left: 145px;color: red;"></span> <span class="topreg"></span></p>
</div>
<div class="logo_bg">
    <div class="logo">
        <a href="#"><img class="logo2" src="img/logo3.png" /></a>
        <div style="width:523px; float:left; height:20px;">
            <div class="top_search">
                <form action="" method="get" id="head_serach" name="formsearch">
                    <input class="searchInfo" type="text" name="keyboard" id="search-keyword" placeholder="请输入目的地或景点名称或关键字" value="" />
                    <input class="searchButton" type="submit" value="搜索" />
                </form>
                <span>热门搜索：<a href="#" >旅游 </a>
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
<div class="navBox">
    <div class="nav heightCenter ">
        <ul>
            <li style="margin-left: 50px;margin-right: 125px">
                <a href="index.jsp" style="margin-left: 20px;">
                    <span>首页</span>
                    <span>HOME</span>
                </a>
            </li>
            <li style="margin-right: 135px;">
                <a href="scenicDetails.jsp">
                    <span>景点详情</span>
                    <span>ATTRACTIONS</span>
                </a>
            </li>
            <li style="margin-right: 135px;">
                <a href="#">
                    <span>旅游攻略</span>
                    <span style="margin-left: 10px;">RAIDERS</span>
                </a>
            </li>
            <li style="margin-right: 125px;">
                <a href="#">
                    <span>个人中心</span>
                    <span style="margin-left: 18px;">MINE</span>
                </a>
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
            <div class="clearfix"></div>
        </ul>
    </div>
</div>
<div class="banner">
    <div id="slideBox" class="slideBox">
        <div class="bd">
            <ul>
                <li><a href="#" ><img src="img/lbt1.png" /></a></li>
                <li><a href="#" ><img src="img/lbt2.png" /></a></li>
                <li><a href="#" ><img src="img/lbt3.png" /></a></li>
                <li><a href="#" ><img src="img/lbt4.png" /></a></li>
                <li><a href="#" ><img src="img/lbt5.png" /></a></li>
            </ul>
        </div>
        <a class="prev" href="javascript:void(0)"></a>
        <a class="next" href="javascript:void(0)"></a>
    </div>
    <script type="text/javascript">
        jQuery(".slideBox").slide({
            mainCell: ".bd ul",
            autoPlay: true
        });
    </script>
</div>
<div class="xiao_nav">
    <div class="slideTxtBox">
        <div class="hd">
            <ul>
                <li class="ys on"><i></i><a href="#" >游山</a></li>
                <li class="ws"><i></i><a href="#" >玩水</a></li>
                <li class="sh"><i></i><a href="#" >赏花</a></li>
                <li class="gz"><i></i><a href="#" >古镇</a></li>
                <li class="mx"><i></i><a href="#" >名校</a></li>
                <li class="haidao"><i></i><a href="#" >海岛</a></li>
                <li class="cs"><i></i><a href="#" >城市</a></li>
                <li class="bf"><i></i><a href="#" >拜佛</a></li>
            </ul>
        </div>
    </div>
    <script type="text/javascript">
        jQuery(".slideTxtBox").slide({
            autoPlay: true
        });
    </script>
</div>
<div class="c_1200 c_1200_1">
    <div class="jrtt">
        <p class="jrtt_bt"><a href="">+</a>今日头条</p>
        <div class="slideTxtBox3">
            <div class="bd">
                <ul> <span><a href="#" title="外地人眼中的重庆 哈尔滨人眼中的重庆" ><img alt="外地人眼中的重庆 哈尔滨人眼中的重庆" src="img/m2fxtjofarb.jpg" /><b>外地人眼中的重庆 哈尔滨人眼中的重庆</b><i>说说我自己身边对于重庆的印象，一个是自己家里面就有一个重度骨灰级重庆迷，看到有关于重庆的都要拉着你乘坐时光机看看哪些年她待过的重庆。还有曾经有一个家里面的小妹去重庆玩，说，我只玩两天诶！过两天家里有事，等两天玩开心啦！你啥时候走啊~小妹又说，回家又没事，那再玩两天。重庆，美丽的重庆，我们一起去重逢一番。</i></a></span> </ul>
                <ul> <span><a href="#" title="周庄两日游攻略" ><img alt="周庄两日游攻略" src="img/dl1yfutasq5.jpg" /><b>周庄两日游攻略</b><i>周庄拥有千年的历史，文化底蕴非常深厚，这里孕育了诸多伟大的历史人物，周庄的水透着一股莫名的灵气，给人强大的动力和需求。</i></a></span> </ul>
                <ul> <span><a href="#" title="三亚葫芦岛周边一日游" ><img alt="三亚葫芦岛周边一日游" src="img/rqbsffjgy3v.jpg" /><b>三亚葫芦岛周边一日游</b><i>来三亚已经好几天了，一直想去这个旅游城市好好游玩一番，奈何自己真是太懒啦！在闺蜜的威胁利逼之下，终于出门啦！拿出手机地图好好找一圈，都还没找着什么特别好玩的，闺蜜发话要去海边，最后选定了葫芦岛。</i></a></span> </ul>
            </div>
        </div>
        <script type="text/javascript">
            jQuery(".slideTxtBox3").slide();
        </script>
        <ul class="jrtt2">
            <li>
                <a href="#" title="暑假贵州行 8天行程记录" >暑假贵州行 8天行程记录</a>
            </li>
            <li>
                <a href="#" title="伦敦地铁二日游攻略" >伦敦地铁二日游攻略</a>
            </li>
            <li>
                <a href="#" title="九江庐山游玩攻略 庐山游记" >九江庐山游玩攻略 庐山游记</a>
            </li>
            <li>
                <a href="#" title="八月中旬去烟台旅游攻略" >八月中旬去烟台旅游攻略</a>
            </li>
            <li>
                <a href="#" title="南宁动物园门票多少钱 地址+门票+交通指南" >南宁动物园门票多少钱 地址+门票+交</a>
            </li>
            <li>
                <a href="#" title="防城港游记" >防城港游记</a>
            </li>
            <li>
                <a href="#" title="崇左德天瀑布游玩攻略" >崇左德天瀑布游玩攻略</a>
            </li>
        </ul>
    </div>
    <div style="height:324px;" class="rdzx">
        <p class="jrtt_bt"><a href="">+</a>热点资讯</p>
        <ul class="major-list">
            <li class="major-item"><a href="#" ><span class="txt-hide front-face"><img alt="广西地质博物馆怎么样" src="img/vza4fu4uo2i.jpg" /></span><span class="back-face">广西地质博物馆怎么样</span></a></li>
            <li class="major-item"><a href="#" ><span class="txt-hide front-face"><img alt="嘉和城温泉谷门票+优惠政策" src="img/wdr1rka3xmu.jpg" /></span><span class="back-face">嘉和城温泉谷门票+优惠政策</span></a></li>
            <li class="major-item"><a href="#" ><span class="txt-hide front-face"><img alt="嘉和城温泉谷电话以及官网地址" src="img/bhfbtumuu33.jpg" /></span><span class="back-face">嘉和城温泉谷电话以及官网地址</span></a></li>
            <li class="major-item"><a href="#" ><span class="txt-hide front-face"><img alt="2018北京元旦演唱会活动盘点" src="img/hmahx3og12s.jpg" /></span><span class="back-face">2018北京元旦演唱会活动盘点</span></a></li>
            <li class="major-item"><a href="#" ><span class="txt-hide front-face"><img alt="广州长隆欢乐世界元旦有夜场不 2019元旦广州长隆欢乐世界夜场玩什么" src="img/224xejpz5qc.jpg" /></span><span class="back-face">广州长隆欢乐世界元旦有夜场不 2019元旦广州长隆欢乐世界夜场玩什么</span></a></li>
            <li class="major-item"><a href="#" ><span class="txt-hide front-face"><img alt="西班牙圣家堂大教堂门票+介绍+交通+开放时间+位置" src="img/ggoynwg1ry4.jpg" /></span><span class="back-face">西班牙圣家堂大教堂门票+介绍+交通+开放时间+位置</span></a></li>
        </ul>
        <script type="text/javascript" src="js/public.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
        <link type="text/css" href="css/lrtk2.css" rel="stylesheet" />
        <link type="text/css" href="css/animation2.css" rel="stylesheet" />
    </div>
    <div class="lyphb">旅游热门排行榜</div>
    <div class="slideTxtBox2">
        <div class="hd">
            <ul>
                <li>周排行</li>
                <li>月排行</li>
                <li>总排行</li>
            </ul>
        </div>
        <div class="bd">
            <ul>
                <li><i>1</i>
                    <a href="#" title="购买廉价机票注意事项" >购买廉价机票注意事项</a>
                </li>
                <li><i>2</i>
                    <a href="#" title="去马尔代夫如何选岛 马尔代夫选岛要多少钱" >去马尔代夫如何选岛 马尔代</a>
                </li>
                <li><i>3</i>
                    <a href="#" title="龙门石窟的藏族情怀" >龙门石窟的藏族情怀</a>
                </li>
                <li><i>4</i>
                    <a href="#" title="陕西旅游年票2018有哪些景点" >陕西旅游年票2018有哪些景点</a>
                </li>
                <li><i>5</i>
                    <a href="#" title="楚留香糖葫芦食谱在哪" >楚留香糖葫芦食谱在哪</a>
                </li>
                <li><i>6</i>
                    <a href="#" title="2018年广州春节有什么好玩的 广州春节习俗一览" >2018年广州春节有什么好玩的</a>
                </li>
                <li><i>7</i>
                    <a href="#" title="湛江和玉林哪个更好" >湛江和玉林哪个更好</a>
                </li>
                <li><i>8</i>
                    <a href="#" title="武汉斗鱼嘉年华2018门票免费送活动" >武汉斗鱼嘉年华2018门票免费</a>
                </li>
                <li><i>9</i>
                    <a href="#" title="云南镇雄天坑群在哪里 云南镇雄天坑群图片" >云南镇雄天坑群在哪里 云南</a>
                </li>
            </ul>
            <ul>
                <li><i>1</i>
                    <a href="#" title="九月限量鞋有哪些 九月限量鞋推荐" >九月限量鞋有哪些 九月限量</a>
                </li>
                <li><i>2</i>
                    <a href="#" title="2018年元宵节广州云台花园门票多少钱" >2018年元宵节广州云台花园门</a>
                </li>
                <li><i>3</i>
                    <a href="#" title="幻灯4" >幻灯4</a>
                </li>
                <li><i>4</i>
                    <a href="#" title="洪湖公园游乐场2018年春节可以玩吗" >洪湖公园游乐场2018年春节可</a>
                </li>
                <li><i>5</i>
                    <a href="#" title="游客疑似活捉海豚 海滩游客注意事项有哪些" >游客疑似活捉海豚 海滩游客</a>
                </li>
                <li><i>6</i>
                    <a href="#" title="2018陕西十一游玩地推荐" >2018陕西十一游玩地推荐</a>
                </li>
                <li><i>7</i>
                    <a href="#" title="幻灯5" >幻灯5</a>
                </li>
                <li><i>8</i>
                    <a href="#" title="日本自由行10天买jr pass周游券值不值" >日本自由行10天买jr pass周</a>
                </li>
                <li><i>9</i>
                    <a href="#" title="惠州惠东双月湾吃海鲜贵不贵" >惠州惠东双月湾吃海鲜贵不贵</a>
                </li>
            </ul>
            <ul>
                <li><i>1</i>
                    <a href="#" title="仙乃日海拔多少 仙乃日有人上去过没有" >仙乃日海拔多少 仙乃日有人</a>
                </li>
                <li><i>2</i>
                    <a href="#" title="楚留香糖葫芦食谱在哪" >楚留香糖葫芦食谱在哪</a>
                </li>
                <li><i>3</i>
                    <a href="#" title="Metro大都会不支持手机型号有哪些" >Metro大都会不支持手机型号</a>
                </li>
                <li><i>4</i>
                    <a href="#" title="孩子美国留学父母选择哪种方式去探望" >孩子美国留学父母选择哪种方</a>
                </li>
                <li><i>5</i>
                    <a href="#" title="广深港高铁票价是多少" >广深港高铁票价是多少</a>
                </li>
                <li><i>6</i>
                    <a href="#" title="Metro大都会乘车攻略大全 Metro大都会乘车如何退款" >Metro大都会乘车攻略大全 Me</a>
                </li>
                <li><i>7</i>
                    <a href="#" title="大连十大美食排行榜" >大连十大美食排行榜</a>
                </li>
                <li><i>8</i>
                    <a href="#" title="普吉岛常见问题有哪些 普吉岛什么东西值得买" >普吉岛常见问题有哪些 普吉</a>
                </li>
                <li><i>9</i>
                    <a href="#" title="雁荡山游记作文1000字" >雁荡山游记作文1000字</a>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript">
        jQuery(".slideTxtBox2").slide();
    </script>
    <div class="rdzx mryj">
        <p class="jrtt_bt"><a href="">+</a>美人游记</p>
        <ul>
            <li id="square" class="rubberBand animated"><a href="#" title="女生旅行如何精简行李" ><img alt="女生旅行如何精简行李" src="img/f0x3hh4hvc2.jpg" /><p>女生旅行如何精简行李</p><i></i></a></li>
            <li id="square" class="rubberBand animated"><a href="#" title="武夷山一日游最佳路线 武夷山自驾游攻略" ><img alt="武夷山一日游最佳路线 武夷山自驾游攻略" src="img/tkeru51f2ly.jpg" /><p>武夷山一日游最佳路线 武夷山自驾游攻略</p><i></i></a></li>
            <li id="square" class="rubberBand animated"><a href="#" title="茶卡盐湖自驾游攻略" ><img alt="茶卡盐湖自驾游攻略" src="img/x0vulobhud0.jpg" /><p>茶卡盐湖自驾游攻略</p><i></i></a></li>
        </ul>
    </div>
</div>
<span class="lp_cs"><img src="img/bt_cs.png" /></span>
<div class="c_1200">
    <ul class="cs_c">
        <li><a href="#" title="国内外四大滑雪好去处任君选择" ><img alt="国内外四大滑雪好去处任君选择" src="img/aka2fssyuut.jpg" /><i></i><b></b></a></li>
        <li><a href="#" title="浙江悠闲七日游" ><img alt="浙江悠闲七日游" src="img/ey4stooehgr.jpg" /><i></i><b></b></a></li>
        <li><a href="#" title="旅游遇到鬼节还能出去玩吗 旅游遇到鬼节不能出门了吗" ><img alt="旅游遇到鬼节还能出去玩吗 旅游遇到鬼节不能出门了吗" src="img/zvibzeorfgn.jpg" /><i></i><b></b></a></li>
        <li><a href="#" title="西安超详细美食攻略和推荐" ><img alt="西安超详细美食攻略和推荐" src="img/w2nu5fywglc.jpg" /><i></i><b></b></a></li>
        <li><a href="#" title="2018哈尔滨旅游攻略 哈尔滨旅游景点" ><img alt="2018哈尔滨旅游攻略 哈尔滨旅游景点" src="img/i0rdlbn2phy.jpg" /><i>哈尔滨</i><b></b></a></li>
        <li><a href="#" title="漠河旅游攻略2018 漠河有什么好玩的" ><img alt="漠河旅游攻略2018 漠河有什么好玩的" src="img/pdtx2lse2jr.jpg" /><i>漠河</i><b></b></a></li>
        <li><a href="#" title="2018沈阳旅游景点大全 沈阳旅游攻略" ><img alt="2018沈阳旅游景点大全 沈阳旅游攻略" src="img/znf35nur3kn.jpg" /><i>沈阳</i><b></b></a></li>
        <li><a href="#" title="2018河北围场县旅游攻略 河北围场县自助游指南" ><img alt="2018河北围场县旅游攻略 河北围场县自助游指南" src="img/ywrzudipncn.jpg" /><i>河北</i><b></b></a></li>
    </ul>
</div>
<span class="lp_cs"><img src="img/bt_jd.png" /></span>
<div class="c_1200">
    <ul class="jd_c">
        <div class="picScroll-left">
            <div class="bd">
                <ul class="picList">
                    <li>
                        <div class="pic"><a href="#" title="国内外四大滑雪好去处任君选择" ><img alt="国内外四大滑雪好去处任君选择" src="img/aka2fssyuut.jpg" /><span>国内外四大滑雪好去处任君选择</span><p>天气开始渐渐转冷，国内不少地方都下起了雪，很多滑雪爱好者都已经开始蠢蠢欲动想一展身手</p></a></div>
                        <div class="pic"><a href="#" title="浙江悠闲七日游" ><img alt="浙江悠闲七日游" src="img/ey4stooehgr.jpg" /><span>浙江悠闲七日游</span><p>俗话说上有天堂下有苏杭，那么今天小编研究了一个非常完美的行程，既带大家走了国际大都市</p></a></div>
                        <div class="pic"><a href="#" title="旅游遇到鬼节还能出去玩吗 旅游遇到鬼节不能出门了吗" ><img alt="旅游遇到鬼节还能出去玩吗 旅游遇到鬼节不能出门了吗" src="img/zvibzeorfgn.jpg" /><span>旅游遇到鬼节还能出去玩吗 旅游</span><p>在咱们国家一年中有三个可以说是鬼节的节日，一个是清明节，一个是中元节，还有一个就是十月</p></a></div>
                        <div class="pic"><a href="#" title="西安超详细美食攻略和推荐" ><img alt="西安超详细美食攻略和推荐" src="img/w2nu5fywglc.jpg" /><span>西安超详细美食攻略和推荐</span><p>西安美食世界闻名，特别惊奇的互联网传播速度，导致各个城市的特色美食和文化传播很广，西安</p></a></div>
                        <div class="pic"><a href="#" title="2018哈尔滨旅游攻略 哈尔滨旅游景点" ><img alt="2018哈尔滨旅游攻略 哈尔滨旅游景点" src="img/i0rdlbn2phy.jpg" /><span>2018哈尔滨旅游攻略 哈尔滨旅游</span><p>说起哈尔冰人们总是最先相当这里的冰雪世界，这里的美景只有来过的游客才能够深刻的感受</p></a></div>
                        <div class="pic"><a href="#" title="漠河旅游攻略2018 漠河有什么好玩的" ><img alt="漠河旅游攻略2018 漠河有什么好玩的" src="img/pdtx2lse2jr.jpg" /><span>漠河旅游攻略2018 漠河有什么好</span><p>关于漠河不知道大家是不是了解的，今天小编就要说的是这个景点，关于这个景点有很多你不知</p></a></div>
                        <div class="pic"><a href="#" title="2018沈阳旅游景点大全 沈阳旅游攻略" ><img alt="2018沈阳旅游景点大全 沈阳旅游攻略" src="img/znf35nur3kn.jpg" /><span>2018沈阳旅游景点大全 沈阳旅游</span><p>说起沈阳人们总是会想起东北的二人转，但是这里的美景以及美食其实还有很多，只有真正来过</p></a></div>
                        <div class="pic"><a href="#" title="2018河北围场县旅游攻略 河北围场县自助游指南" ><img alt="2018河北围场县旅游攻略 河北围场县自助游指南" src="img/ywrzudipncn.jpg" /><span>2018河北围场县旅游攻略 河北围</span><p>​河北围场县是最近非常出名的一个旅游景点，其实这个地方是一个小县城，里面分布着很多个</p></a></div>
                    </li>
                </ul>
            </div>
        </div>
    </ul>
</div>
<span class="lp_cs"><img src="img/bt_zt.png" /></span>
<div class="c_1200 c_1200_zt">
    <div class="picScroll-left2">
        <div class="bd">
            <ul class="picList">
                <li>
                    <div class="pic"><a href="#" title="南京四天四夜旅游攻略 十一期间亲身经历" ><img alt="南京四天四夜旅游攻略 十一期间亲身经历" src="img/pu5ud01xzuk.jpg" /></a></div>
                </li>
                <li>
                    <div class="pic"><a href="#" title="镇江游记作文800字" ><img alt="镇江游记作文800字" src="img/ratrkajcfw0.jpg" /></a></div>
                </li>
                <li>
                    <div class="pic"><a href="#" title="瑞丽小城故事 云南的边境小城" ><img alt="瑞丽小城故事 云南的边境小城" src="img/k1qg5rmzxn2.jpg" /></a></div>
                </li>
                <li>
                    <div class="pic"><a href="#" title="伊春一日游攻略 伊春旅游" ><img alt="伊春一日游攻略 伊春旅游" src="img/lqnezqme3j4.jpg" /></a></div>
                </li>
                <li>
                    <div class="pic"><a href="#" title="北京国际鲜花港游玩攻略 鲜花港游记" ><img alt="北京国际鲜花港游玩攻略 鲜花港游记" src="img/ofd54ggswkv.jpg" /></a></div>
                </li>
                <li>
                    <div class="pic"><a href="#" title="衢州二日游游记 衢州游玩" ><img alt="衢州二日游游记 衢州游玩" src="img/gqsduhumwhj.jpg" /></a></div>
                </li>
                <li>
                    <div class="pic"><a href="#" title="汕尾吃海鲜游记" ><img alt="汕尾吃海鲜游记" src="img/0von3cz1ghv.jpg" /></a></div>
                </li>
                <li>
                    <div class="pic"><a href="#" title="新疆旅游最佳路线是什么" ><img alt="新疆旅游最佳路线是什么" src="img/nj31fdvdbs4.jpg" /></a></div>
                </li>
                <li>
                    <div class="pic"><a href="#" title="成都大熊猫繁育研究基地攻略" ><img alt="成都大熊猫繁育研究基地攻略" src="img/4m1sq13pgvo.jpg" /></a></div>
                </li>
                <li>
                    <div class="pic"><a href="#" title="黄山市中心屯溪攻略" ><img alt="黄山市中心屯溪攻略" src="img/t4uf05gbafx.jpg" /></a></div>
                </li>
            </ul>
        </div>
        <div class="hd">
            <a class="next"></a>
            <a class="prev"></a>
        </div>
    </div>
    <script type="text/javascript">
        jQuery(".picScroll-left2").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:5,trigger:"click"});
    </script>
</div>


<div class="c_1200">
    <div class="link"> <span>友情链接</span><i style="padding-left: 20px; width:1078px; color:#999">(友链交换请加微信：sh695371)</i>
        <ul>
            <li><a href="#" title="92仿站" >92仿站</a></li>
            <li><a href="#" title="模板商城" >模板商城</a></li>
            <li><a href="#" title="特价服务器" >特价服务器</a></li>
            <li><a href="#" title="仿站定制" >仿站定制</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript"> var _myTravelInfo = {};_myTravelInfo={Username:"[!--username--]",Type:"1",platform:"1",DateTime:"[!--newstime--]",Id:"[!--id--]"};</script>
<div style="display:none"></div>
<div class="foot_bg">
    <div class="foot_jz">
        <a href="#"><img src="img/foot_logo2.png"></a>
        <span><i>版权所有：</i>
				<p>漫步旅途 Copyright@ 未来之星 2021-5 本站刊登的所有新闻和各种专题资料，均来源互联网收集整理，仅供参考。</p>
			</span>
        <div class="list2_weixin"><img src="img/weixin.jpg" />扫码有惊喜！</div>
    </div>
</div>
<div class="list_ny_fh"><img src="img/backtop.png" /></div>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<link type="text/css" href="css/lrtk2.css" rel="stylesheet" />
<link type="text/css" href="css/animation2.css" rel="stylesheet" />
</body>
</html>
