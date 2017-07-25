<?
include dirname(__FILE__)."/include/config.php";
include dirname(__FILE__)."/include/commen_func.php";
$cid=1;
$k = $_GET['k'];
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> 
<? include "seo.php"?>
<link rel="stylesheet" href="../css/index.css" type="text/css">



<!----èªéåº----->
<link rel="stylesheet" href="../css/bootstrap.css" type="text/css" />
<link rel="icon" href="../img/favicon.png" type="image/png">
<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<!----èªéåº----->


</head>

<body>

<? include "top.php"?>







<!--   innner  banner   -->

<div class="banner_pro">
    <div class="container">
       <h2>Uoplay 悠 拍</h2>
       <ul class="clearfix">
          <li><a href="index.html">首页</a></li>
          <li><a href="##"> / 产品</a></li>
       </ul>
    </div>

</div>

<div class="title_inner_content visible-xs">
  <img src="../img/banner_about_sj.jpg"  width="100%"/>
   <div class="title_text">
      <h2 style="font-family:Arial, Helvetica, sans-serif;">support</h2>
   </div>
</div>


<!--  / innner  banner   -->





<!--     inner  content   -->


<div class="container">
   <div class="row">
    <div class="pro_content clearfix">
	
	
	
			   
				<?
				$rs=$db->execute($db->page("select * from tb_product where title like '%".$k."%' order by sequence desc","9"));
				if($db->num_rows($rs)!=0){
				$kk=1;
				while($row=$db->fetch_array($rs)){
				?>
				 
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 clp">
				   <div class="pro_list">
					  <a href="<?=$row['url']?>"><img src="upload/<?=$row['pic']?>." width="100%"></a>
					  <h5><?=$row['title']?></h5>
					  <p><?=$row['gai']?></p>
					  <div class="pro_btn"><a href="<?=$row['url']?>">了解详情</a></div>
				   </div>
				</div> 
				 
				 
				 
				<?
				$kk++;
				}
				}
				unset($row);
				$db->free_result($rs);
				?>   	
	

    </div>



                            

       
       
   </div>
</div>


                        




   



                     
                        
<!--   / inner  content   -->
 

  
</div>
<!-- /main_function  -->


<div class="jiange2"></div>

<? include "footer.php"?>







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
