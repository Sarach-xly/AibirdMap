<?php
include dirname(__FILE__)."/include/config.php";
include dirname(__FILE__)."/include/commen_func.php";
$cid=1;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/top.css">
    <link type="text/css" rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid top header">
    <div class="nav-container">
        <a class="logo" href="index.php"><img src="images/导航---Assistor.png"></a>
        <div class="nav">
            <ul>
                <li data-open="index">
                    <a href="index.php"><span>Index</span></a>
                </li>
                <li data-open="bird">
                    <span>Aibird</span>
                </li>
                <li data-open="Uoplay">
                    <span>Uoplay</span>
                </li>
                <li data-open="soft">
                    <span>Software</span>
                </li>
                <li>
                    <a  href="application.php"><span>Application</span></a>
                </li>
                <li>
                    <a  href="tel.php"><span>Support</span></a>
                </li>
                <li>
                  <a  href="contact.php">  <span>Contact</span></a>
                </li>
            </ul>
        </div>
        <section class="toggle-lang">
                <a href="index.php">
                <img src="images/flag.en.jpg">&nbsp;EN
                </a>       
            <div class="drop-down">
                <a href="..\index.php"><img src="images/中英文---Assistor.png">
                <span>中文</span></a>
            </div>
        </section>
    </div>
    <div class="nav-dropdown" id="bird">
        <div class="dropdown-container">
            <div class="row">
                <div class="col-md-3 dropdown-item">
                    <a href="KC1600.php">
                        <img src="images/KC1600l.png">
                    </a>
                    <h5>KC1600</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="KC2000.php">
                        <img src="images/KC2000l.png">
                    </a>
                    <h5>KC2000</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="AI-X4.php">
                        <img src="images/AI-X4l.png">
                    </a>
                    <h5>AI-X4</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="Eagle-eye.php">
                        <img src="images/DC%2001l.png">
                    </a>
                    <h5>DC 01</h5>
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
                    <a href="uoplay2.php">
                        <img src="images/Uoplay%202.png">
                    </a>
                    <h5>Uoplay 2</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="uoplay2s.php">
                        <img src="images/Uoplay%202S.png">
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
                    <a href="PhotoMetric.php">
                        <img src="images/PhotoMetricl.png">
                    </a>
                    <h5>PhotoMetric</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="MapCloud.php">
                        <img src="images/MapCloudl.png">
                    </a>
                    <h5>MapCloud</h5>
                </div>
                <div class="col-md-3 dropdown-item">
                    <a href="KC-DGPS.php">
                        <img src="images/KC-DGPS差分l.png">
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

<div class="container-fluid noPadding clearfix pro-swipe">

    <div class="pro pro2">
        <div class="pro2-text">
            <h5>The easiest is the best </h5>
            <h5 class="thin">Leading UAV company  in aerial mapping industry</h5>
            <p class="box">
                <span>KC1600</span>
            </p>
            <a class="readmore" href="KC1600.php">
                LEARN MORE
            </a>
        </div>
        <a  href="KC1600.php">
            <img class="pro2-img" src="images/首页---Assistor02.png">
        </a>
    </div>
    <div class="pro pro3">
        <div class="pro3-text">
            <h5>Handling Complexity with Simplicity</h5>
            <h5 class="thin">Longer Flight Duration</h5>
            <p class="box">
                <span>KC2000</span>
            </p>
            <a class="readmore" href="KC2000.php">
                LEARN MORE
            </a>
        </div>
        <a  href="KC2000.php">
         <img class="pro3-img" src="images/首页---Assistor03.png">
        </a>
    </div>
    <div class="pro pro1">
        <div class="pro1-text">
            <h5 class="thin">Everyone</h5>
            <h5>DIRECTOR OF YOUR LIFE</h5>
            <p class="box">
                <span>Uoplay</span>
            </p>
            <a class="readmore" href="uoplay.php">
                LEARN MORE
            </a>
        </div>
        <a class="readmore" href="uoplay.php">
            <img class="pro1-img" src="images/首页---Assistor01.png">
        </a>
    </div>
    <div class="pro pro4">
        <div class="pro4-text">
            <h5>Professional Solutions</h5>
            <h5>More stabilized</h5>
            <p class="box">
                <span>DC01 HAWK EYE</span>
            </p>
            <a class="readmore" href="Eagle-eye.php">
                LEARN MORE
            </a>
        </div>
        <a href="Eagle-eye.php">
            <img class="pro4-img" src="images/首页---Assistor04.png">
        </a>
    </div>
    <div class="arrow-control clearfix">
        <a id="left-arrow"></a>
        <a id="right-arrow"></a>
    </div>
    <div class="square-control">
        <span data-id="0"></span>
        <span data-id="1"></span>
        <span data-id="2"></span>
        <span data-id="3"></span>
    </div>
</div>
<div class="container-fluid video-container">
    <div class="row">
        <div class="col-sm-4 ">
            <div class="vcontent">
                <img class="video-img" src="images/首页---AssistorV1.png">
                <video class="video" controls="controls" style="width: 100%">
                    <source src="video/1号.m4v">
                    <source src="video/1号.ogv">
                </video>
            </div>
        </div>
        <div class="col-sm-4 ">
            <div class="vcontent">
                <img class="video-img" src="images/首页---AssistorV2.png">
                <video class="video" controls="controls" style="width: 100%">
                    <source src="video/2号.m4v">
                    <source src="video/2号.ogv">
                </video>
            </div>
        </div>
        <div class="col-sm-4 ">
            <div class="vcontent">
                <img class="video-img" src="images/首页---AssistorV3.png">
                <video class="video" controls="controls" style="width: 100%">
                    <source src="video/3号.m4v">
                    <source src="video/3号.ogv">
                </video>
            </div>
        </div>
    </div>
</div>

<?php include"footer.php" ?>

<script>
    $(function () {
        $(".vcontent").mouseenter(function () {
            $(this).find(".video-img").fadeOut(800);
        });
//        $(".vcontent").mouseleave(function () {
//            $(this).find(".video-img").fadeIn(800);
//        });
        $(window).scroll(function () {

                    if ($(window).scrollTop() > $(".header").height()) {
                        $(".header").css({"position":"fixed","width":"100%","top":"0","left":"0","z-index":"9999"});
                    }else{
                        $(".header").css({"position":"static"});
                    }
                }
        );
    });
    //轮播控制

    //初始第一张图设置
    var count = 0;
    $(".square-control span:eq(" + count + ")").css({
        "background": "url('images/深色进度条.png') no-repeat scroll",
        "background-size": "contain"
    });
    $(".pro:eq(" + count + ")").animate({"opacity": "1","z-index":"99"}, 1000);
    //左右箭头点击跳转
    $("#right-arrow").click(function () {
        if (count < 3) {
            count++;
            //圆圈颜色改变
            $(".square-control  span").css({
                "background": "url('images/浅色进度条.png') no-repeat scroll",
                "background-size": "contain"
            });
            $(".square-control  span:eq(" + count + ")").css({
                "background": "url('images/深色进度条.png') no-repeat scroll",
                "background-size": "contain"
            });
            //显示相应产品
            $(".pro").stop(true).animate({"opacity": "0","z-index":"1"}, 1000);
            $(".pro:eq(" + count + ")").stop(true).animate({"opacity": "1","z-index":"99"}, 1000);

        }
    });
    $("#left-arrow").click(function () {
        if (count > 0) {
            count--;
            //圆圈颜色改变
            $(".square-control  span").css({
                "background": "url('images/浅色进度条.png') no-repeat scroll",
                "background-size": "contain"
            });
            $(".square-control  span:eq(" + count + ")").css({
                "background": "url('images/深色进度条.png') no-repeat scroll",
                "background-size": "contain"
            });
            //显示相应产品图片
            $(".pro").stop(true).animate({"opacity": "0","z-index":"1"}, 1000);
            $(".pro:eq(" + count + ")").stop(true).animate({"opacity": "1","z-index":"99"}, 1000);
        }
    });

    //圆圈点击事件
    $(".square-control  span").click(function () {
        //改变圆圈颜色
        $(".square-control  span").css({
            "background": "url('images/浅色进度条.png') no-repeat scroll",
            "background-size": "contain"
        });
        $(this).css({"background": "url('images/深色进度条.png') no-repeat scroll", "background-size": "contain"});
        //显示相应产品图片
        count = $(this).attr("data-id");
        $(".pro").stop(true).animate({"opacity": "0","z-index":"1"}, 1000);
        $(".pro:eq(" + count + ")").stop(true).animate({"opacity": "1","z-index":"99"}, 1000);
    });
    //自动轮播设置
    setInterval(function () {
        count++;
        if (count > 3) {
            count = 0
        }
        //
        $(".square-control  span").css({
            "background": "url('images/浅色进度条.png') no-repeat scroll",
            "background-size": "contain"
        });
        $(".square-control  span:eq(" + count + ")").css({
            "background": "url('images/深色进度条.png') no-repeat scroll",
            "background-size": "contain"
        });
        $(".pro").stop(true).animate({"opacity": "0","z-index":"1"}, 1000);
        $(".pro:eq(" + count + ")").stop(true).animate({"opacity": "1","z-index":"99"}, 1000);
    }, 5000);
</script>

</body>
</html>