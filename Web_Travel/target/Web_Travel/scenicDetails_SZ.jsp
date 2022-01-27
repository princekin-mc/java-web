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
    <title>深圳自助游攻略 深圳旅游景点大全 - 漫步旅途</title>
    <meta name="keywords" content="深圳" />
    <meta name="description" content="深圳自助游攻略 深圳旅游景点大全" />
    <link rel="stylesheet" href="css/initialize.css">
    <link rel="stylesheet" href="css/content.css">
    <script src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.superslide.2.1.1.js"></script>
    <script type="text/javascript" src="js/bm7ewn.js"></script>
    <script type="text/javascript" src="js/mredirect.js"></script>
    <script type="text/javascript" src="js/time.js"></script>
</head>
<body>
<div class="topNavBox">
    <div class="topNav heightCenter" style="margin-left: 300px">
        <span style="font-size: 20px;font-family: '宋体';">漫步旅途欢迎您！在旅行中寻找最年轻的自己！</span>
        <span id="time" style="margin-left: 145px;color: red;font-size: 20px;font-family: '宋体';"></span>
    </div>
</div>
<div class="topLogoBox" style="padding: 0px; padding-bottom: 5px;">
    <div class="topLogo heightCenter">
        <a class="leftLogo left"></a>
        <div class="centerSerach left">
            <form action="#" method="get" id="head_serach" name="formsearch">
                <input class="searchInfo" type="text" name="keyboard" id="search-keyword" placeholder="请输入目的地或景点名称或关键字" value="" />
                <input class="searchButton" type="submit" value="搜索" />
            </form>
            <div class="serachTxt">
                <span>热门搜索:</span>
                <a href="#" >旅游 </a>
                <a href="#" >广东 </a>
                <a href="#" >青铜剑 </a>
                <a href="#" >北京 </a>
            </div>
        </div>
        <div>
            <ul>
                <%
                    if(user!=null){
                %>
                <!-- -->
                <li style="margin-top: 25px; font-size:22px;  color:#000; font-weight: 600;line-height: 55px; text-align:center;  margin-left:85px;">
                    <span>您好！</span><span style="color: red;"><%=user.getUsername()%></span>
                    <span style="margin-left: 35px;"><a href="exit.jsp">注销</a></span>
                </li>
                <%}else {%>
                <div class="rightLogo right">
                    <ul>
                        <li style="margin-left: 35px;"><a href="login.jsp" style="line-height: 40px;color: #fff;background-color:rgba(0, 0, 0, 0.5);">登录</a></li>
                        <li style="margin-left: 35px;"><a href="regist.jsp" style="line-height: 40px;color: #fff;background-color:rgba(0, 0, 0, 0.5);">注册</a></li>
                    </ul>
                </div>
                <%}%>
            </ul>
        </div>
        <div class="clearfix"></div>
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
<div class="locationBox">
    <div class="location heightCenter">
        <a href="">当前位置：</a><a href="index.html">首页</a>&nbsp;>&nbsp;
        <a href="#">旅游景点</a>&nbsp;>&nbsp;
        <h1><span>深圳自助游攻略 深圳旅游景点大全</span></h1>
        <div class="miscellaneous">
            <span>编辑：lxq</span>
            <span>时间：2021-5-18 11:28:55</span>
            <span>浏览量：6666</span>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="mainBodyBox">
    <div class="mainBody heightCenter">
        <div class="mainBodyLeft left">
            <div class="contentBox detailBox">
                <p>深圳是个多少人向往的城市啊，人人都说北上广，却不知道多少年了早就更换为了北上广深，深圳也是同地位的城市，人们对于这个城市的印象就是大、有钱、繁华，没有钱的人都是想着要去深圳发展，那么深圳这样一个有魅力的城市有什么好玩的呢?跟着小编往下看吧。</p>
                <center>
                    <img src="img/sz001.jpg" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                </center>

                <h3>简介</h3>
                <p>中文名称：深圳市</p>
                <p>面积：1996.85平方公里</p>
                <p>外文名称：Shenzhen,Shumchun,Shamchun</p>
                <p>人口：1,077.89万(2014年常住人口)</p>
                <p>别名：鹏城</p><p>方言：粤语、大鹏话、客话</p>
                <p>行政区类别：副省级市</p><p>气候条件：亚热带季风气候</p>
                <p>所属地区：广东省</p>
                <p>著名景点：世界之窗、大小梅沙、中英街、梧桐山、东部华侨城、深圳欢乐谷等</p>
                <p>大学：深圳大学、南方科技大学等</p>

                <h3>概述</h3>
                <p>深圳又称“鹏城”，1979年，中国第一个经济特区在深圳设立。曾经的边陲小镇以举世瞩目的城市建设与经济发展而声名在外，深圳不仅娱乐活动丰富、吃喝住行便捷，也是游客的购物胜地。</p>
                <p>漫步深圳，浩荡车流穿越城市的立体马路，星罗棋布的楼宇大厦间棕榈交错。显赫的科技、创新企业在这座城市设立总部，建筑、设计年展在这里竖起业界标识。</p>
                <p>深圳之宜居，大概是因为在繁华都市之外，它仍巧心雕刻了多重空间与时间的风光景致，你可以在大鹏所城触摸守御千户所的明代残垣，在西涌蜿蜒海岸上看白浪冲沙，在世界之窗、锦绣中华等主题公园微观寰宇，真正深入这座城市的多维脉络。</p>
                <p>深圳的罗湖口岸与香港新界一河之隔，许多人来到深圳都是为了由此前往香港，每日出入数十万人群。但如果不是隔壁那个国际大都会抢去风头，深圳自身的魅力定会更为彰显。</p>

                <h3>景点</h3>
                <p>深圳市的主要景点多数在沿海的区域分布，大致可以分为关内、大鹏半岛和关外其他区域三个部分。</p><p>对于第一次来到深圳的人，抓住主题公园、海滩风光与大都市三个主题，便可获得游玩深圳的精髓。如果你有两天左右的停留时间，以下地标景点多数集中在市内，值得体验。</p>
                <h4>景点概况</h4>
                <p>关内四区</p>
                <p>关内包括罗湖、福田、南山、盐田四区，交通便利，购物商圈众多，娱乐活动丰富，如果你在深圳停留的时间较短，游玩关内是旅行首选。</p>
                <p>如果你对深圳的主题公园感兴趣，那么南山区的欢乐谷、世界之窗、海上世界、锦绣中华民俗村等等地标型景点将打开你的旅行前沿;在罗湖区和福田区，可以集中地感受深圳的都市风貌，无论是登地王大厦或京基100俯瞰城市风景，还是去深圳市博物馆或关山月美术馆打开深圳的文化气质，都是不错的选择;盐田区则汇聚了大梅沙海滨公园、小梅沙度假村以及东部华侨城这样的高颜值景点，实在不容错过。</p>
                <p>大鹏半岛</p>
                <p>深圳因东部的大鹏半岛而坐拥“中国最美的八大海岸”之一，在这里你可以看到媲美太平洋海岛的美丽沙滩，因此也是附近居民周末和小长假游玩的热门景点。</p>
                <p>这里森林茂密，风光宜人，许多深圳周边的情侣们都特意到大鹏半岛拍摄婚纱照。玫瑰小镇充满欧式风情，较尾场也被称作“小鼓浪屿”，3月，大片的樱花和油菜花竞相开放，可谓大都市的海岸后花园。</p>
                <p>关外其他区域</p>
                <p>关外其他区域主要指宝安区、龙岗区、光明新区、龙华新区和坪山新区。虽然发展起步晚于南边的经济特区，但对于那些想要去往人少、富有特色的新兴景点的人来说，龙华区依山傍水的观澜版画村，龙岗区的甘坑客家小镇、布吉文博宫、大芬油画村，坪山区的聚龙山生态公园，都是深入深圳当地文化的好去处。</p>

                <h3>深圳必游景点TOP5</h3>
                <h4>1、东部华侨城</h4>
                <p>在华侨城待了两天，去了大峡谷和茶溪谷。机动游戏集中在大峡谷，坐索道很多人，但是不坐索道坐车很麻烦。山顶看风景超赞。很多设施在修建。看风景的集中在茶溪谷，一进门口就可以看到大片大片的花田，还有很多特色的建筑。是一个很有茶文化的景区，特别喜欢古镇。在烟雨朦胧中看茶园，别有一番风味。但是茶溪谷和大峡谷之间距离交远，交通有点麻烦。</p>
                <p><strong>用时参考</strong></p>
                <p>1-2天</p><p><strong>交通</strong></p>
                <p>深圳市内公共交通</p>
                <p>1、搭乘E12、E13、J1、53、观光线1或机场6线，前往东部华侨城大侠谷站;</p>
                <p>2、或搭乘103、308、380B、103B、364、387路至大梅沙海滨浴场站或者梅沙街道办站，转乘B620前往东部华侨城大侠谷站 。</p>
                <p>3、节假日搭乘东线假日快线1路、东部假日快线2路前来东部华侨城更是快速、便捷。</p>
                <p>香港公共交通</p>
                <p>乘坐永东巴士开辟的东部华侨城快线，从九龙塘，经沙田、粉岭过沙头角海关，直接到达东部华侨城大侠谷入口。 咨询请致电：0755-83893166。</p>
                <p>自驾车</p>
                <p>广东-华侨城路线：广深高速→机荷高速→盐排高速→盐田路→盐坝高速大梅沙出口→大侠谷、东部华侨城瀑布酒店。</p>
                <p>直升机</p>
                <p>东部华侨城设有观光直升机坪，开辟专用的空中绿色通道。游客可享受直升机专项服务，逍遥奔赴山海之约，体验尊贵感受。</p>
                <p><strong>门票</strong></p>
                <p>茶溪谷180元(免费乘坐缆车、索道)</p>
                <p>大侠谷200元(免费乘坐缆车、索道)</p>
                <p>大侠谷+茶溪谷1日游套票300元(免费乘坐缆车、索道、森林小火车)</p>
                <p>大侠谷+茶溪谷2日游套票350元(免费乘坐缆车、索道、森林小火车)</p>
                <p><strong>开放时间</strong></p>
                <p>周一至周五：09:30~17:30</p>
                <p>周末、节假日：09:00~17:30</p>
                <p><strong>景点位置</strong></p>
                <p>深圳市盐田区大梅沙东部华侨城</p>
                <center>
                    <img src="img/sz002.png" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz003.png" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz004.png" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                </center><p><br/></p>

                <h4>2、世界之窗</h4>
                <p>算是深圳的标志性游玩地点了，距离欢乐谷跟锦绣中华都很近，票价有点小贵，无大学生票，有晚上单独的票，但是对于去过类似地点的朋友就感觉会相对无趣了些，在北京或是长沙都有类似的公园游乐场，园里是一些世界各地著名建筑的缩小版模型，直到傍晚都会有一些设备提供相应的玩耍或是观看性的演出，晚上也会有个大型的晚会。赶上啤酒节的话，晚上在那里还算热闹，可惜是在个馆里，没有了海边江边啤酒节的宽阔，但也还算不错了，喝酒喝的也是蛮有氛围的。</p>
                <p><strong>用时参考</strong></p>
                <p>1天</p>
                <p><strong>交通</strong></p>
                <p>地铁1、2号线至世界之窗下车;</p>
                <p>市内乘坐204,M388、222、223、230、232、234、245、M413、323、324、327、329,369路等公交车至世界之窗站下车</p>
                <p><strong>门票</strong></p>
                <p>成人票：¥190 元 半价票：¥100 元</p>
                <p><strong>开放时间</strong></p>
                <p>9:00-22:30 (如遇大型活动，时间以当日公布为准)</p>
                <p><strong>景点位置</strong></p>
                <p>深圳市南山区深南大道9037号</p>
                <center>
                    <img src="img/sz005.png" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz006.png" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz007.png" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                </center><p><br/></p>

                <h4>3、西涌</h4>
                <p>位于深圳市最南端的西冲海滩，现在已经开发成为了优美的海滨旅游胜地。西冲海岸总体面向东南，面临一望无际的大海，早起能看到日出。附近已有不少民宿可供入住，也可以租用沙滩边上的帐篷。海边餐馆林立，可以随意挑选用餐。最近新兴的徒步活动，也能从东冲徒步穿越到西冲，完成暴走东西冲的壮举。</p>
                <p><strong>用时参考</strong></p>
                <p>1天</p><p><strong>交通</strong></p>
                <p>西涌位于深圳大鹏半岛的最南端。</p>
                <p>深圳-西涌：深圳市区乘e11路到南澳总站 ，换乘m232路至三四号收费站下车即是。</p>
                <p>银湖-南澳镇：7号车下车后走过隔壁的小巴总站坐360号空调大巴，全程17元。过盐田港后沿途风景不错，需时约2小时。</p><p>南澳镇-西涌海滩：租小面的5元/人，可以坐6人，但包大极挤，需时约20分钟。</p>
                <p><strong>门票</strong></p>
                <p>13元</p>
                <p><strong>开放时间</strong></p>
                <p>全天景点</p>
                <p><strong>位置</strong></p>
                <p>深圳市龙岗区西冲</p>
                <center>
                    <img src="img/sz008.png" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz009.png" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz010.png" title="深圳自助游攻略 深圳旅游景点大全" alt="深圳自助游攻略 深圳旅游景点大全">
                </center><p><br/></p>

                <h4>4、梧桐山</h4>
                <p>梧桐山是深圳最高的山了，一到周末好多深圳人来梧桐山爬上。这里专门修了一条石级道，一路爬到山顶还是很累人的，要一个多小时歇息四五次。但更多的人选择从没有台阶的原始山路索溪而上，中间有两段超级陡啊，必须非常小心。等你一路辛苦爬到山顶，一览众山小，天地在我心的豪气马上把爬山的疲惫冲淡了。不过下山真是辛苦，台阶又多又陡，如果久不锻炼，爬一次梧桐山够你腿酸两三天的。</p>
                <p><strong>用时参考</strong></p>
                <p>半天</p><p><strong>交通</strong></p>
                <p>东边：沙头角、盐田有登山道到达大梧桐山顶。途经公交车：103、202、 205、208、360、363、364 365。</p>
                <p>南边：仙湖植物园内弘法寺旁边，有一条水泥登山道到达小梧桐。莲塘有盘山公路，中间有登山道到达小梧桐。途经公交车：220、218、113、311、111。</p>
                <p>西边：梧桐山村有水泥公路到达山顶 。途经公交车：211，梧桐山村是登梧桐山的主要入口，传统盘山公路、泰山涧路线、麻水凤路线、桃花源路线等都由此进入。</p>
                <p>北边：途经公交车：361路。</p>
                <p><strong>自驾车</strong></p>
                <p>从机场出发：上广深机场立交，转107国道，直行深南大道，上新秀立交，转沿河北路，上罗芳立交，转罗沙公路;右转鹏兴路，右转莲十路，左转仙湖内小道，到达目标，全程大约45公里。</p>
                <p>从罗湖口岸、火车站出发：由建设路左转人民南路，直行沿河路，上罗芳立交，转罗沙公路，右转鹏兴路，右转莲十路，左转仙湖内小道，到达目标，全程大约10公里。</p>
                <p><strong>门票</strong></p>
                <p>免费</p>
                <p><strong>开放时间</strong></p>
                <p>8:00-18:00</p>
                <p><strong>景点位置</strong></p>
                <p>深圳市罗湖区莲塘罗沙路2076号</p>
                <center>
                    <img src="img/sz011.png" title="2018深圳自助游攻略 深圳旅游景点大全" alt="2018深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz012.png" title="2018深圳自助游攻略 深圳旅游景点大全" alt="2018深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz013.png" title="2018深圳自助游攻略 深圳旅游景点大全" alt="2018深圳自助游攻略 深圳旅游景点大全">
                </center><p><br/></p>

                <h4>5、深圳欢乐谷</h4>
                <p>深圳老牌的主题公园，最近有过几次更新，里面有许多的游乐设施，有适合成年人的，也有适合小孩的。光过山车，就有矿山车，雪山飞龙和雪域雄鹰三种。门票嘛，好像是两百块。至于住在附件的，可以买年票，好像是900块。同时也可以去旁边的玛雅水公园，和欢乐谷在一起，门票不用另外加钱。里面的水上游乐设施也是挺不错的。</p>
                <p><strong>用时参考</strong></p>
                <p>1天</p><p><strong>交通</strong></p>
                <p>1、乘坐深圳地铁1、2号线在世界之窗站下车，步行3分钟即至欢乐谷;</p>
                <p>2、罗湖火车站乘坐观光巴士直达欢乐谷;</p>
                <p>3、市内乘坐20，21，26，32，42，43，54，59，66，70，72，78路等公交车车至世界之窗站下车</p>
                <p><strong>门票</strong></p>
                <p>全价票：230元，夜场票：100元。</p>
                <p><strong>开放时间</strong></p>
                <p>日场9：00-22：00，夜场18：00-22：00(适用于2016年7月1日至8月28日);不同季节可能略有调整，以当日景区公告为准。</p>
                <p><strong>景点位置</strong></p><p>深圳市南山区侨城西街1号</p>
                <center>
                    <img src="img/sz014.png" title="2018深圳自助游攻略 深圳旅游景点大全" alt="2018深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz015.png" title="2018深圳自助游攻略 深圳旅游景点大全" alt="2018深圳自助游攻略 深圳旅游景点大全">
                    <img src="img/sz016.png" title="2018深圳自助游攻略 深圳旅游景点大全" alt="2018深圳自助游攻略 深圳旅游景点大全">
                </center><p></p><p><br/></p>
            </div>
            <div class="pageBox ks-clear"></div>

            <script>
                function CheckPl(obj)
                {
                    if(obj.saytext.value=="")
                    {
                        alert("您没什么话要说吗？");
                        obj.saytext.focus();
                        return false;
                    }
                    return true;
                }
            </script>
            <div class="travels messageBox commentArea">
                <h1><span>留言</span><span>跟帖</span></h1>
                <div class="messageTxt">
                    <form action="/e/pl/doaction.php" method="post" name="saypl" id="saypl" onsubmit="return CheckPl(document.saypl)">
                        <div style="display:none;">
                            <input name="username" type="text" class="inputText" id="username" value="" size="16" />
                            <input name="password" type="password" class="inputText" id="password" value="" size="16" />
                            <input name="key" type="text" class="inputText" size="10" />
                            <input name="nomember" type="checkbox" id="nomember" value="1" checked="checked" />
                        </div>
                        <textarea class="comment-text" name="saytext" rows="6" id="saytext"></textarea>
                        <input name="id" type="hidden" id="id" value="30675" />
                        <input name="classid" type="hidden" id="classid" value="3" />
                        <input name="enews" type="hidden" id="enews" value="AddPl" />
                        <input name="repid" type="hidden" id="repid" value="0" />
                        <input name="ecmsfrom" value="/travel/30675.html" type="hidden">
                        <div class="bottomTxt">
                            <input class="comment-input" name="imageField" type="submit" id="imageField" value="发表评论">
                        </div>
                    </form>
                </div>
                <p>(网友评论仅供其表达个人看法，并不表明本站立场)</p>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="footerBox">
    <div class="footer heightCenter">
        <div class="footLeft left">
            <img src="img/foot_logo2.png" alt="">
        </div>
        <div class="footCenter left">
            <span>版权所有</span>
            <p>漫步旅途 Copyright@ 未来之星 2021-5 本站刊登的所有新闻和各种专题资料，均来源互联网收集整理，仅供参考。</p>
        </div>
        <div class="footRight right">
            <img src="img/weixin.jpg" alt="">
            <span>扫码有惊喜！</span>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"2","bdSize":"24"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"24"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
<script src="js/contentnav.js"></script>
<script type="text/javascript"> var _webInfo = {};_webInfo={Username:"lmx",Type:"1",platform:"1",DateTime:"2018-11-06 11:12:13",Id:"30675"};</script>
<div style="display:none"></div>
</body>
</html>