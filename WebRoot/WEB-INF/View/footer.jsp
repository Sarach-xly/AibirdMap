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



