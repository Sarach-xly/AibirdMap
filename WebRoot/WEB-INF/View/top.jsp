
<div class="container-fluid top header">
    <div class="nav-container">
        <a class="logo" href="/index.jsp"><img src="../img/导航---Assistor.png"></a>
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
                    <a  href="application.jsp"><span>行业应用</span></a>
                </li>
                <li>
                    <a  href="tel.jsp"><span>服务与支持</span></a>
                </li>
                <li>
                  <a  href="contact.jsp">  <span>联系我们</span></a>
                </li>
            </ul>
        </div>
        <section class="toggle-lang">
	            <img src="../img/中英文---Assistor.png">
	            <span>中文</span>
            <div class="drop-down">
                <a href="index1.jsp">
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