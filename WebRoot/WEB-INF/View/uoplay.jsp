<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>悠拍</title>
    <link type="text/css" rel="stylesheet" href="../css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="../css/top.css">
    <link type="text/css" rel="stylesheet" href="../css/uoplay.css">
    <link type="text/css" rel="stylesheet" href="../css/footer.css">
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/pro.js"></script>
</head>
<body>

<div class="container-fluid top header">
    <div class="nav-container">
        <a class="logo" href="http:localhost:8080/AibirdMap/aibird/index"><img src="../img/导航---Assistor.png"></a>
        <div class="nav">
            <ul>
                <li data-open="bird">
                    <span>无人机</span>
                </li>
                <li data-open="Uoplay">
                    <span>Uoplay</span>
                </li>
                <li data-open="soft">
                    <span>软件产品</span>
                </li>
                <li>
                    <a  href="http://www.aibirduav.com/application.html"><span>行业应用</span></a>
                </li>
                <li>
                    <a  href="http://www.aibirduav.com/tel.html"><span>服务与支持</span></a>
                </li>
                <li>
                  <a  href="http://www.aibirduav.com/contact.html">  <span>联系我们</span></a>
                </li>
            </ul>
        </div>
        <section class="toggle-lang">
	            <img src="../img/中英文---Assistor.png">
	            <span>中文</span>
            <div class="drop-down">
                <a href="http://www.aibirduav.com/en/index.html">
                <img src="../img/flag.en.jpg">&nbsp;EN
                </a>
            </div>
        </section>
    </div>
    <div class="nav-dropdown" id="bird">
        <div class="dropdown-container">
            <div class="row">
                <div class="col-md-3 dropdown-item">
                    <a href="http://www.aibirduav.com/t-KC3400.html">
                        <img src="../img/kc3400.png">
                    </a>
                    <h5>KC3400</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="http://www.aibirduav.com/KC1600.html">
                        <img src="../img/KC1600l.png">
                    </a>
                    <h5>KC1600 PLUS</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="http://www.aibirduav.com/KC2000.html">
                        <img src="../img/KC2000l.png">
                    </a>
                    <h5>KC2000</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="http://www.aibirduav.com/AI-X4.html">
                        <img src="../img/AI-X4l.png">
                    </a>
                    <h5>AI-X4</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-dropdown" id="Uoplay">
        <div class="dropdown-container">
            <div class="row">
                <!-- <div class="col-md-3 dropdown-item">
                    <a href="uoplay.php">
                        <img src="images/Uoplay.png">
                    </a>
                    <h5>Uoplay</h5>
                </div> -->
                <div class="col-md-3 dropdown-item">
                    <a href="http://www.aibirduav.com/uoplay2.html">
                        <img src="../img/Uoplay 2.png">
                    </a>
                    <h5>Uoplay 2</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="http://www.aibirduav.com/uoplay2s.html">
                        <img src="../img/Uoplay 2S.png">
                    </a>
                    <h5>Uoplay 2S</h5>
                </div>
                <!-- <div class="col-md-3 dropdown-item">
                    <a href="uoplayG.php">
                        <img src="images/Uoplay%20Go.png">
                    </a>
                    <h5>Uoplay Go</h5>
                </div> -->
            </div>
        </div>
    </div>
    <div class="nav-dropdown" id="soft">
        <div class="dropdown-container">
            <div class="row">
                <div class="col-md-3 dropdown-item">
                    <a href="http://www.aibirduav.com/PhotoMetric.html">
                        <img src="../img/PhotoMetricl.png">
                    </a>
                    <h5>PhotoMetric</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="http://www.aibirduav.com/MapCloud.html">
                        <img src="../img/MapCloudl.png">
                    </a>
                    <h5>MapCloud</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="http://www.aibirduav.com/KC-DGPS.html">
                        <img src="../img/KC-DGPS差分l.png">
                    </a>
                    <h5>KC-DGPS差分</h5>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $('.nav ul li').mouseenter(function () {
            $('.nav-dropdown').css('display','none');
            var open = $(this).attr('data-open');
            $("#"+open).slideDown(500);
        });
        $('.nav-dropdown').mouseleave(function () {
            $(this).slideUp(500);
        })
    })
</script>


<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?7b5f59674ec9d09cec62ff25ff00c508";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>
<!--      products  content   -->
<div class="p1">
    <h5 class="p1h1">Uolay</h5>
    <img src="../img/P1P2---Assistor.png">
</div>
<div class="p2 container-fluid">
    <div class="row" style="margin: 0">
        <div class="col-md-7">
            <div class="vcontent">
                <img class="video-img" src="../img/p02.jpg">
                <video class="video" controls="controls" style="width: 100%">
                    <source src="../img/优拍宣传视频.m4v">
                    <source src="../img/优拍宣传视频.ogv">
                </video>
            </div>
        </div>
        <div class="col-md-5 p2-text">
            <h5>做自己的导演</h5>
            <p>智能鸟Uoplay 是一款手机稳定器，搭载手机即可拍出高品质的稳定影像，彻底告别手机拍摄中抖动模糊、摇晃不清的镜头画面。带着它可以轻松记录每一段旅途最美的足迹，轻松拍出国家地理范的记录片。</p>
        </div>
    </div>
</div>
<div class="p3"></div>
<div class="p4">
    <div class="p4-text p4t1">
        <h5>爱上旅行</h5>
        <p>记录每一段旅程的精彩</p>
    </div>
    <div class="p4-text p4t2">
        <h5>家庭录影</h5>
        <p>见证每一个幸福瞬间</p>
    </div>
    <div class="p4-text p4t3">
        <h5>活力运动</h5>
        <p>挑战自己留存记忆</p>
    </div>
    <div class="p4-text p4t4">
        <h5>全民直播</h5>
        <p>下一个网红就是你</p>
    </div>
    <div class="p4-text p4t5">
        <h5>微影创作</h5>
        <p>让生活成为一场电影</p>
    </div>
</div>
<div class="p5 container-fluid">
    <div class="row" style="margin: 0">
        <div class="col-xs-12 p5-text">
            <h5>稳定视界</h5>
            <p>Uoplay通过程序和陀螺仪控制云台上的电机，使其自稳，防止手机在拍摄时抖动<br/>
                您只需要一台智能手机，配合Uoplay就可以获得堪比应用摇杆、滑轨等专业设备拍摄的电影级效果</p>
        </div>
    </div>
    <div class="row p5-photo" style="margin: 0">
        <div class="col-md-6 photo1">
            <img src="../img/P5P1---Assistor.png">
            <h5>未使用稳定器拍摄</h5>
        </div>
        <div class="col-md-6 photo2">
            <img src="../img/P5P2---Assistor.png">
        </div>
    </div>
</div>
<div class="p6 container-fluid">
    <div class="row">
        <div class="col-xs-12 p6-text" style="margin-bottom: 20px">
            <h5 class="title white">极致工艺</h5>
            <p class="title-red">完美诠释匠人精神</p>
            <p class="title-white">富士康代工，五轴CNC机床加工，十万转高光机高光切边</p>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <img src="../img/P6P1---Assistor.png">
        </div>
    </div>
</div>
<div class="p7 container-fluid">
    <div class="row">
        <div class="col-xs-12 p7-text" style="margin-bottom: 20px">
            <h5 class="title black">超高颜值</h5>
            <p class="title-red">用心设计每一个细节</p>
            <p class="title-white black opa5">航空铝材质、CD纹、阳极氧化处理、手柄软胶套设计让握感更舒适</p>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <img src="../img/P7---Assistor.png">
        </div>
    </div>
</div>
<div class="p8"></div>
<div class="p9 p91">
    <img id="p9p1" src="../img/P9---Assistor.png">
    <img src="../img/P9P11---Assistor.png">
    <div class="p9-text">
        <h5 class="title black">首创横竖拍</h5>
        <p class="title-red">一键自如切换</p>
        <p class="title-white black">Uoplay首创横竖拍功能，一键自如切换，让你的手机动起来。</p>
    </div>
</div>
<div class="p9 p92" style="text-align: left">
    <img id="p9p2" src="../img/P9P2---Assistor.png">
    <img src="../img/P9P1---Assistor.png">
    <div class="p9-text">
        <h5 class="title black">一键拍照/摄像</h5>
        <p class="title-red">无需触碰手机</p>
        <p class="title-white black">通过云台即可控制手机进行一键拍照/摄像。</p>
    </div>
</div>
<div class="p10">
    <div class="p10-text">
        <h5>高精度无极摇杆</h5>
        <div class="text-content">
            <p style="color: red">高精度数据采集</p>
            <p>50000次操作数据采集，最优化水平程度变阻尼设计</p>
            <p>32位高精度数据采集</p>
        </div>
    </div>
</div>
<div class="p11">
    <div class="p11-text">
        <h5>关于升降</h5>
        <div class="text-content">
            <p style="color: red">人性化设计</p>
            <p>关机缓降功能，放置手机磕碰机身，避免手机受损</p>
        </div>
    </div>
</div>
<div class="p12">
    <div class="p12-text">
        <h5>高效率控制算法</h5>
        <div class="text-content">
            <p>神经网络自适应算法，16000次/秒实时补偿，80000次/秒的快速运算</p>
            <p>让稳定器（云台）姿态更稳，控制更准，反应更快</p>
        </div>
    </div>
    <img src="../img/P12P2---Assistor.png">
</div>
<div class="p13">
    <div class="p13-text">
        <h5>无线远程控制</h5>
        <div class="text-content">
            <p style="color: red">远距离操作</p>
            <p>2.4G无线射频远程控制，满足距离操作需求</p>
        </div>
    </div>
</div>
<div class="p14">
    <div class="p14-text">
        <h5>操作简单</h5>
        <div class="text-content">
            <p style="color: red">两键控制</p>
            <p>电源键+功能键，简单易记，六种模式自如切换</p>
        </div>
    </div>
</div>
<div class="p15">
    <div class="p15-text">
        <h5>设备通用</h5>
        <div class="text-content">
            <p style="color: red">1/4寸英制螺纹</p>
            <p>完美兼容延长杆，三脚架等配件，让拍摄角度和距离随心扩展</p>
        </div>
    </div>
</div>
<div class="p16">
    <div class="p16-text">
        <h5>一机多用</h5>
        <div class="text-content">
            <p style="color: red">全金属手机夹</p>
            <p>拆装快速，夹持牢固，完美固定6寸以下手机</p>
            <p>同时兼容GoPro，小蚁等运动相机</p>
        </div>
    </div>
</div>
<div class="p17">
    <div class="p17-text">
        <h5>个性化炫彩手柄套</h5>
        <div class="text-content">
            <p style="color: red">外在出彩，内在出色</p>
            <p>3色炫彩手柄套可供选择，满足有个性的你</p>
        </div>
    </div>
</div>
<div class="p18">
    <div class="p18-text">
        <h5>礼盒式包装</h5>
        <div class="text-content">
            <p style="color: red">六面跌落测试</p>
            <p>礼盒式包装设计，进过六面跌落测试，结构稳固</p>
            <p>保护性强，外观精美，大方</p>
        </div>
    </div>
</div>
<div class="p20">
    <div class="p20-text">
        <h5>配件丰富</h5>
    </div>
    <div class="text-content">
        <p>我们提供丰富的配件，让悠拍Uoplay能应用更多场合</p>
        <p>携行包，外出携带Uoplay更方便，无线遥控器满足远距离操控需求</p>
        <p>三脚架，提供更多的拍摄角度和更丰富的应用场景</p>
    </div>
</div>
<div class="p21">
    <div class="p21-text">
        <h5>他们都在用</h5>
    </div>
    <div class="text-content">
        <p>—————————&nbsp;分享让生活更精彩&nbsp;——————————</p>
    </div>
</div>
<div class="show-container" >
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-12 proshow_left">
                <ul class="swipe">
                    <li><img src="../img/pro_last_content_meitu_0.jpg" width="100%"></li>
                    <li style="top: -7%"><img src="../img/白底携带包.jpg" width="100%"></li>
                    <li style="top: -4%;"><img src="../img/白底遥控器.jpg" width="100%"></li>
                </ul>
                <ul class="control_group clearfix">
                    <li><span data-id="0"></span></li>
                    <li><span data-id="1"></span></li>
                    <li><span data-id="2"></span></li>
                </ul>
                <span class="btn_left">左箭头</span>
                <span class="btn_right">右箭头</span>
            </div>
            <div class="col-md-4 hidden-sm proshow_right">
                <h2 class="right-title">悠拍&nbsp;Uoplay</h2>
                <div class="info-content">
                    <p id="version">品名：<span></span></p>
                    <p id="num-show">
                        数量：
                        <span id="cut">-</span>
                        <span id="num">1</span>
                        <span id="add">+</span>
                    <p id="price-show">价格：
                        <span id="price">1999.00</span>
                        <span id="label">¥</span>
                    </p>
                </div>
                <div class="btn_group">
                    <button type="button">加入购物车</button>
                    <button type="button" style="margin-left: 22px">立即购买</button>
                </div>
                <div class="link">
                    <ul>
                        <li><a href="http://item.jd.com/10267388594.html" id="jd">京东</a></li>
                        <li><a href="https://shop34326769.taobao.com/?spm=a230r.7195193.1997079397.2.ojSbxH" id="tb">淘宝</a></li>
                        <li><a href="http://www.amazon.com/dp/B01KZGZKXK" id="az">亚马逊</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="tec-video">
        <video style="width:100%; height:100%;" class="background-video" id="intro-video2"
               data-anchor-target="#intro" data-0-top-top="display:block;"
               data-0-top-bottom="display:block;" loop preload controls>
            <source src="../img/悠拍功能介绍、使用说明.m4v" >
            <source src="../img/悠拍功能介绍、使用说明.ogv">
        </video>
        <p style="text-align: center;font-size: 18px">悠拍Uplay视频教学</p>
    </div>
</div>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../css/footer.css">
    <link type="text/css" rel="stylesheet" href="../css/bootstrap.css">
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="container footer">
    <div class="row">
        <div class="col-sm-2">
            <ul>
                <li><a href="http://www.aibirduav.com/about.html">关于我们</a></li>
                <li style="margin-top: 15px"><a>精彩活动</a></li>
                <li><a>成长荣誉</a></li>
                <li><a>公司简介</a></li>
                <li><a>无人机社区</a></li>
            </ul>
        </div>
        <div class="col-sm-2">
            <ul>
                <li><a href="http://www.aibirduav.com/news.html">新闻中心</a></li>
                <li style="margin-top: 15px"><a  href="http://www.aibirduav.com/news_inner.html?id=28" style="color: red;font-weight: 600">AopA培训</a></li>
                <li><a>媒体报道</a></li>
                <li><a>展会活动</a></li>
            </ul>
        </div>
        <div class="col-sm-2">
            <ul>
                <li><a href="http://www.aibirduav.com/contact.html">联系我们</a></li>
                <li style="margin-top: 15px"><a>无人机合作</a></li>
                <li><a>悠拍代理</a></li>
                <li><a>商务洽谈</a></li>
                <li><a href="http://jobs.51job.com/all/co2691322.html"  style="color: red;font-weight: 600">人才招募</a></li>
            </ul>
        </div>
        <div class="col-sm-2">
            <ul>
                <li><a href="http://www.aibirduav.com/tel.html">技术支持</a></li>
                <li style="margin-top: 15px"><a>行业分析</a></li>
                <li><a>常见问题</a></li>
                <li><a>问题反馈</a></li>
            </ul>
        </div>
        <div class="col-sm-4">
            <img src="../img/down---Assistor.png" style="margin-top: 80px">
        </div>
    </div>
    <div class="row footer-info">
        <p>Copyright 2016 © Shenzhen Aibird Technology Co.,Ltd All Rights Reserved.&emsp;武汉智能鸟无人机有限公司<span class="black">&nbsp;|&nbsp;法律声明&nbsp;|&nbsp;隐私条款</span><br/>
            鄂ICP备10023981号-3
        </p>
        <div class="img-link">
            <a href="http://www.facebook.com/aibirduoplay/"><img src="../img/Facebook.png"></a>
            <a href="http://weibo.com/uoplay"><img src="../img/新浪.png"></a>
            <a href="#" data-toggle="modal" data-target="#weixin"><img src="../img/微信.png"></a>
        </div>
    </div>
</div>
<div class="modal fade" id="weixin">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body" style="text-align: center">
                <img src="../img/微信二维码.jpg">
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function(){
	
	$(".search").click(function(){
		var k = $("#keywords").val();
	window.location.href="/products7.jsp?k="+k;
	})
	
})

</script>

</body>
</html>






<script>
    $(function () {
        $(".vcontent").mouseenter(function () {
            $(this).find(".video-img").fadeOut(800);
        });
        $('.p1 .p1h1').animate({"opacity":"1"},2000);
        $('.p1 > img').css({"transform":"translate(0,0)","opacity":"1"});
        $(window).scroll(function() {
            if ($(window).scrollTop() > ($('.p2').offset().top - 500)) {
                $('.p2 .p2-text').css({"transform":"translate(0,0)","opacity":"1"});
                $('.p2 .vcontent').delay(1500).animate({"opacity":"1"},1000);
            }
            if ($(window).scrollTop() > ($('.p5').offset().top - 500)) {
                $('.p5 .photo1').css({"transform":"translate(0,0)","opacity":"1"});
                $('.p5 .photo2').css({"transform":"translate(0,0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p6').offset().top - 500)) {
                $('.p6 .p6-text').css({"transform":"translate(0,0)","opacity":"1"});
                $('.p6 img').css({"transform":"translate(0,0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p7').offset().top - 500)) {
                $('.p7 .p7-text').css({"transform":"translate(0,0)","opacity":"1"});
                $('.p7 img').css({"transform":"translate(0,0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p91').offset().top - 500)) {
                $('.p91 #p9p1').css({"transform":"translate(0,0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p92').offset().top - 500)) {
                $('.p92 #p9p2').css({"transform":"translate(0,0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p10').offset().top - 600)) {
                $('.p10').find('h5').css({"transform":"translate(0)","opacity":"1"});
                $('.p10').find('p').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p11').offset().top - 600)) {
                $('.p11').find('h5').css({"transform":"translate(0)","opacity":"1"});
                $('.p11').find('p').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p12').offset().top - 600)) {
                $('.p12').find('h5').css({"transform":"translate(0)","opacity":"1"});
                $('.p12').find('p').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p13').offset().top - 600)) {
                $('.p13').find('h5').css({"transform":"translate(0)","opacity":"1"});
                $('.p13').find('p').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p14').offset().top - 600)) {
                $('.p14').find('h5').css({"transform":"translate(0)","opacity":"1"});
                $('.p14').find('p').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p15').offset().top - 600)) {
                $('.p15').find('h5').css({"transform":"translate(0)","opacity":"1"});
                $('.p15').find('p').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p16').offset().top - 600)) {
                $('.p16').find('h5').css({"transform":"translate(0)","opacity":"1"});
                $('.p16').find('p').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p17').offset().top - 600)) {
                $('.p17').find('h5').css({"transform":"translate(0)","opacity":"1"});
                $('.p17').find('p').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p18').offset().top - 600)) {
                $('.p18').find('h5').css({"transform":"translate(0)","opacity":"1"});
                $('.p18').find('p').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p20').offset().top - 600)) {
                $('.p20').find('h5').css({"transform":"translate(0)","opacity":"1"});
            }
            if ($(window).scrollTop() > ($('.p21').offset().top - 600)) {
                $('.p21').find('h5').css({"transform":"translate(0)","opacity":"1"});
            }
        });
    });

</script>
<div class="back_top"><img src="images/top.png"/></div>


</body>
</html>

