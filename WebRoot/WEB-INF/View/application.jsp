<?php
include dirname(__FILE__)."/include/config.php";
include dirname(__FILE__)."/include/commen_func.php";
$cid=1;
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> 
  <title>武汉智能鸟无人机有限公司官网-悠拍Uoplay手机云台手持云台手机稳定器固定翼无人机多旋翼无人机差分软件</title>
<link rel="stylesheet" href="css/industryApp.css" type="text/css">



<!--自适应-->
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<link type="text/css" rel="stylesheet" href="css/top.css">

<link rel="icon" href="favicon.png" type="image/png">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<!--自适应-->

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?39eaa21cb1a3f71ae448963c455628ca";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

</head>

<body>

<!--header-->
<?php include "top.php" ?>         
<!--header-->

<!--第一块版面（顶部大图）开始-->
<div class="container-fluid top-img ">
    <img src="images/行---Assistorbg.png">
</div>
<!--第一块版面（顶部大图）结束-->
<div class="container industryApp">
    <h5>
        行业应用<br/>
        <small>Industry Application</small>
    </h5>
    <div class="row clm">
		<?php
			$rs=$db->execute($db->page("select * from tb_application order by create_time desc","9"));
			if($db->num_rows($rs)!=0){
			$kk=1;
			while($row=$db->fetch_array($rs)){
		?>
        <div class="col-sm-6 industryApp-item">
        	 <div class="clearfix">
	           <img src="upload/<?=$row['img']?>" >
	           
	            <div class="item-title">
	                <h5><?=$row['name']?></h5>
	              	<a href="application_inner.php?id=<?=$row['id']?>">
	                	<span>查看案例</span>
	                </a>
	            </div>
	            <p class="">
	            	<?=$row['content']?>             
	            </p>
          	</div>        
        </div>
    	<?php
			$kk++;
			}
			}
			unset($row);
			$db->free_result($rs);
		?>    
    </div>
    
</div>
<!--footer-->
<?php include "footer.php" ?>
<!--footer-->

<script>

  //  submenu 
  /* 
  $(window).load(function() {
		$('.flexslider').flexslider();
		
		$('.erjibox').width($('.top').width())
		
		$(window).resize(function(){
			$('.erjibox').width($('.top').width())
			})
		
	});*/
	
$('.menu>ul>li').hover(function(){
	$(this).find('.erjibox').stop(true).slideDown(500)
	$(this).find('.erji-xian').addClass('erji-xian-on')
	},function(){
		$(this).find('.erjibox').stop(true).slideUp(500)
		$(this).find('.erji-xian').removeClass('erji-xian-on')
		})
//  submenu /




//  menu right  


$('.top_right').mouseenter(function(){
        $(this).find('.dao').stop(true,true).slideDown();
    })
	$('.top_right').mouseleave(function(){
		$(this).find('.dao').stop(true,true).slideUp(); 
	})
	
//  menu right/

</script>

</body>
</html>
