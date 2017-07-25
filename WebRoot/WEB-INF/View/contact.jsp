<?php
include dirname(__FILE__)."/include/config.php";
include dirname(__FILE__)."/include/commen_func.php";
$cid=1;
$info = $db->getnews_con("tb_content","where id=1");
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> 
 <title>武汉智能鸟无人机有限公司官网-悠拍Uoplay手机云台手持云台手机稳定器固定翼无人机多旋翼无人机差分软件</title>
<link rel="stylesheet" href="css/index.css" type="text/css">



<!--自适应-->

<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<link type="text/css" rel="stylesheet" href="css/top.css">
<link type="text/css" rel="stylesheet" href="css/index2.css">
<link rel="icon" href="favicon.png" type="image/png">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<!--自适应-->
<style type="text/css">
	.title_text:{
		position: absolute;
		top: 45%;
		width: 100%;
		color: #fff;
		text-align: center;
		}
	
</style>
<script>
$(function(){
	
	$('.tijiao').on('click',function(){
		
		var username = $('#username').val();
		var tel = $('#tel').val();
		var content = $('#content').val();
		if(username==""){
			alert("请填写姓名");
			$('#username').focus();
			return false;
			}
			
		if(tel==""){
			alert("请填写电话");
			$('#tel').focus();
			return false;
			}
			
		if(content=="" || content==null){
			alert("请填写留言内容");
			$('#content').focus();
			return false;
			}

		$.ajax({
			url: $('#form1').attr('action'),
			data: $('#form1').serialize(),
			type:'post',
			dataType:'json',
			success: function(json){
				if(json.type == 1){
					alert("提交成功");
					window.location.reload();
					
				} 
			}
		});


	})
	
	
	
})
</script>

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
  <img src="images/banner_online.jpg"  width="100%"/>
   <div class="title_text" style="position: absolute;top: 45%;" >
      <h2 style="font-family:Arial, Helvetica, sans-serif;color:#fff;">contact us</h2>
   </div>
</div>

<div class="title_inner_content visible-xs" style="position:relative;">
  <img src="images/banner_about_sj.jpg"  width="100%"/>
   <div class="title_text" style="position: absolute;top: 45%;"  >
      <h2 style="font-family:Arial, Helvetica, sans-serif;color:#fff;">contact us</h2>
   </div>
</div>


<!--  / innner  banner   -->


<!--     inner  content   -->


<div class="container">
   <div class="row">
    

<div class="inside_page">
            	<!--inside_page1-->
            
                <!--inside_page1-->
                <!--inside_page2-->
                
              <div style="width:96%; margin:50px auto; font-family:'微软雅黑'; ">
				<?=$info['content']?>
              </div>
             <div style="width:96%; margin:0px auto; font-family:'微软雅黑'; ">  
              <form action="add.php?action=feedback" method="post" id="form1">
               <div class="online_yjfk" style="margin-top:35px;">
                  <p>申请我们的分销或代理商请填写以下信息</p>
                            	<ul>
                                	<li>
                                    
                                    姓名:<br /><input name="username" id="username" type="text" value="" /><span style="margin-left:10px; color:#F00;">*</span></li>
                                    <li>电话:<br /><input name="tel" id="tel" type="text" value="" /><span style="margin-left:10px; color:#F00;">*</span></li>
                                    
                                    <li>
                                    邮箱或QQ:<br /><input name="mail" id="mail" type="text" value="" /></li>
                                    <li>
                                    公司名:<br /><input name="company" type="text" value="" /></li>
                                   
                                </ul>
                                
                            </div>
                    
				<div class="online_yjfk2" style="margin-top:15px;">
                            	<ul>
                                   <li> 地址:<br /><input name="address" type="text" value="" /></li>
                                    
                                   	<li style="margin-top:15px;">内容:<br /><textarea name="content" id="content" ></textarea><span style="margin-left:10px; color:#F00;">*</span></li> 
                                </ul>
                                <div class="online_tijiao"><a href="javascript:void(0);" class="tijiao">提交</a></div>
                            </div>
              
              
              
			   </form>
			  </div>
                <div class=" brand_section2">
        <div class="" style=" width:100%; z-index:9; top:0; left:0; ">
      
        <iframe class="ind_cont_if" src="map_kj.php" style="border:0; height:400px; width:100%; overflow:hidden;"></iframe>  
        </div> 
    
    
        
        
    

</div>
              
             
            </div>

       
   </div>
</div>


                        




   



                     
                        
<!--   / inner  content   -->
 

  
</div>
<!-- /main_function  -->


<div class="jiange"></div>
<!--footer-->
<?php  include "footer.php" ?>
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
