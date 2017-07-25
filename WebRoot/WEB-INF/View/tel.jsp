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
<? include "seo.php" ?>
<link rel="stylesheet" href="css/index2.css" type="text/css">



<!--自适应-->
<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/top.css">
<link rel="icon" href="favicon.png" type="image/png">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.min.js"></script>

<!--自适应-->
<style type="text/css">
	.tel_list a img {
	    width: 100%;
	    height: 250px;
	}
</style>
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









<!--   innner  banner   -->

<div class="title_inner_content hidden-xs" style="position:relative;">
  <img src="images/banner_about2.jpg"  width="100%"/>
   <div class="title_text" style="position: absolute;top: 45%;" >
      <h2 style="font-family:Arial, Helvetica, sans-serif;color:#fff;">support</h2>
   </div>
</div>

<div class="title_inner_content visible-xs" style="position:relative;">
  <img src="images/banner_about_sj.jpg"  width="100%"/>
   <div class="title_text" style="position: absolute;top: 45%;" >
      <h2 style="font-family:Arial, Helvetica, sans-serif;color:#fff;">support</h2>
   </div>
</div>


<!--  / innner  banner   -->





<!--     inner  content   -->


<div class="container">
   <div class="row">
    

<div class="inside_page">
            	<div class="tel_title">
                <h2> 欢迎使用  产品支撑</h2>
                <p>  我们乐于为您提供帮助。</p>
                </div>
              
             
             
             <div class="container" style="margin-bottom:50px;">
             
                
				<?php
				$rs=$db->execute($db->page("select * from tb_down_class order by sequence desc","6"));
				if($db->num_rows($rs)!=0){
				$kk=1;
				while($row=$db->fetch_array($rs)){
				?>
				
				
                <div class="col-lg-4  col-md-4 col-sm-4 col-xs-12 tel_list">
                     <a href="tel2.php?classid=<?=$row['id']?>"><img src="upload/<?=$row['pic']?>" width="100%" /></a>
                     <a href="tel2.php?classid=<?=$row['id']?>"><p><?=$row['classname'] ?></p></a>
                     <div class="tel_gn">
                        <a href="tel2.php?classid=<?=$row['id'] ?>">下载</a> / <a href="tel3.php?classid=<?=$row['id']?>">教程</a>
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
			
		   <div class="page">
			<?=$db->echo_("6","select * from tb_down_class order by sequence desc","","") ?>	
		   </div>



                            

       
       
   </div>
</div>


                        




   



                     
                        
<!--   / inner  content   -->
 

  
</div>
<!-- /main_function  -->


<div class="jiange"></div>
<!--footer-->
<?php include "footer.php" ?>
<!--footer-->








 



<script>

  //  submenu 
   
  $(window).load(function() {
		$('.flexslider').flexslider();
		
		$('.erjibox').width($('.top').width())
		
		$(window).resize(function(){
			$('.erjibox').width($('.top').width())
			})
		
	});
	
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
