<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta content="text/html;charset=UTF-8" http-equiv="CONTENT-TYPE"/>
    <meta content="initial-scale=1.0,user-scalable=no" name="viewport" />
    
    <title>AllAibirdInfo</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=36wh9YsE9M8r9Gnq6XM0TEor7Q1GG40H"></script>
	<script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/DistanceTool/1.2/src/DistanceTool_min.js"></script>
	
	<style type="text/css">
	   body,html{
	      width:100%;
	      height:100%;
	      margin:0;
	      font-family:"微软雅黑";
	   }
	   #whole{
	     position:relative;
	     width:100%;
	     height:100%;
	   }
	   #l-map{
	     float:left;
	     height:100%;
	     width:80%;
	   }
	   #r-result{
	     float:left;
	     width:20%;
	     font-size:14px;
	     line-height:20px;
	   }
	</style>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <br/>
    <div id="whole">
       <div id="l-map"></div>
       <div class="result" id="r-result">
          <input type="button" value="无人机上次飞行目的地" onClick="bdGEO(0)"/>
          <div id="result"></div>
       </div>
    </div>
  </body>
</html>

<script type="text/javascript">
//百度地图API功能
var map=new BMap.Map("l-map");
var num=<%=session.getAttribute("num0")%>;
map.centerAndZoom("武汉光谷广场",13);
map.addControl(new BMap.MapTypeControl());

//添加比例尺控件
var top_left_control=new BMap.ScaleControl({anchor:BMAP_ANCHOR_TOP_LEFT});//左上角添加比例尺
var top_left_navigation=new BMap.NavigationControl();//左上角添加默认缩放平移控件
map.addControl(top_left_control);
map.addControl(top_left_navigation);

//鼠标测距
var myDis=new BMapLib.DistanceTool(map);
map.addEventListener("load",function(){
    myDis.open();
});
map.enableScrollWheelZoom(true);
var index=0;
var myGeo=new BMap.Geocoder();
var adds=new Array();
var aibirdid=new Array();
var startx;
var starty;

//设置信息窗口属性
var opts={
    width:250,
    height:80,
    title:"信息窗口",
    enableMessage:true  //设置允许信息窗口发送短信
};

var userphone=new Array();

switch(num){
   case 47:
       startx=<%=session.getAttribute("startx1"+46)%>;
       starty=<%=session.getAttribute("starty1"+46)%>;
       adds[46]=new BMap.Point(startx,starty);
       userphone[46]=<%=session.getAttribute("userphone1"+46)%>;
       aibirdid[46]=<%=session.getAttribute("aibirdid1"+46)%>;
   case 46:
			 startx=<%=session.getAttribute("startx"+45)%>;
   			 starty=<%=session.getAttribute("starty"+45)%>;
   			 adds[45]=new BMap.Point(startx,starty);
   			 userphone[45]=<%=session.getAttribute("userphone"+45)%>;
   			 aibirdid[45]=<%=session.getAttribute("aibirdid"+45)%>;
	    case 45:
			 startx=<%=session.getAttribute("startx"+44)%>;
   			 starty=<%=session.getAttribute("starty"+44)%>;
   			 adds[44]=new BMap.Point(startx,starty);
   			 userphone[44]=<%=session.getAttribute("userphone"+44)%>;
   			 aibirdid[44]=<%=session.getAttribute("aibirdid"+44)%>;
	    case 44:
			 startx=<%=session.getAttribute("startx"+43)%>;
   			 starty=<%=session.getAttribute("starty"+43)%>;
   			 adds[43]=new BMap.Point(startx,starty);
   			 userphone[43]=<%=session.getAttribute("userphone"+43)%>;
   			 aibirdid[43]=<%=session.getAttribute("aibirdid"+43)%>;
	    case 43:
			 startx=<%=session.getAttribute("startx"+42)%>;
   			 starty=<%=session.getAttribute("starty"+42)%>;
   			 adds[42]=new BMap.Point(startx,starty);
   			 userphone[42]=<%=session.getAttribute("userphone"+42)%>;
   			 aibirdid[42]=<%=session.getAttribute("aibirdid"+42)%>;
	    case 42:
			 startx=<%=session.getAttribute("startx"+41)%>;
   			 starty=<%=session.getAttribute("starty"+41)%>;
   			 adds[41]=new BMap.Point(startx,starty);
   			 userphone[41]=<%=session.getAttribute("userphone"+41)%>;
   			 aibirdid[41]=<%=session.getAttribute("aibirdid"+41)%>;
	    case 41:
			 startx=<%=session.getAttribute("startx"+40)%>;
   			 starty=<%=session.getAttribute("starty"+40)%>;
   			 adds[40]=new BMap.Point(startx,starty);
   			 userphone[40]=<%=session.getAttribute("userphone"+40)%>;
   			 aibirdid[40]=<%=session.getAttribute("aibirdid"+40)%>;
	    case 40:
			 startx=<%=session.getAttribute("startx"+39)%>;
   			 starty=<%=session.getAttribute("starty"+39)%>;
   			 adds[39]=new BMap.Point(startx,starty);
   			 userphone[39]=<%=session.getAttribute("userphone"+39)%>;
   			 aibirdid[39]=<%=session.getAttribute("aibirdid"+39)%>;
	    case 39:
			 startx=<%=session.getAttribute("startx"+38)%>;
   			 starty=<%=session.getAttribute("starty"+38)%>;
   			 adds[38]=new BMap.Point(startx,starty);
   			 userphone[38]=<%=session.getAttribute("userphone"+38)%>;
   			 aibirdid[38]=<%=session.getAttribute("aibirdid"+38)%>;
	    case 38:
			 startx=<%=session.getAttribute("startx"+37)%>;
   			 starty=<%=session.getAttribute("starty"+37)%>;
   			 adds[37]=new BMap.Point(startx,starty);
   			 userphone[37]=<%=session.getAttribute("userphone"+37)%>;
   			 aibirdid[37]=<%=session.getAttribute("aibirdid"+37)%>;
	    case 37:
			 startx=<%=session.getAttribute("startx"+36)%>;
   			 starty=<%=session.getAttribute("starty"+36)%>;
   			 adds[36]=new BMap.Point(startx,starty);
   			 userphone[36]=<%=session.getAttribute("userphone"+36)%>;
   			 aibirdid[36]=<%=session.getAttribute("aibirdid"+36)%>;
	    case 36:
			 startx=<%=session.getAttribute("startx"+35)%>;
   			 starty=<%=session.getAttribute("starty"+35)%>;
   			 adds[35]=new BMap.Point(startx,starty);
   			 userphone[35]=<%=session.getAttribute("userphone"+35)%>;
   			 aibirdid[35]=<%=session.getAttribute("aibirdid"+35)%>;
	    case 35:
			 startx=<%=session.getAttribute("startx"+34)%>;
   			 starty=<%=session.getAttribute("starty"+34)%>;
   			 adds[34]=new BMap.Point(startx,starty);
   			 userphone[34]=<%=session.getAttribute("userphone"+34)%>;
   			 aibirdid[34]=<%=session.getAttribute("aibirdid"+34)%>;
	    case 34:
			 startx=<%=session.getAttribute("startx"+33)%>;
   			 starty=<%=session.getAttribute("starty"+33)%>;
   			 adds[33]=new BMap.Point(startx,starty);
   			 userphone[33]=<%=session.getAttribute("userphone"+33)%>;
   			 aibirdid[33]=<%=session.getAttribute("aibirdid"+33)%>;
	    case 33:
			 startx=<%=session.getAttribute("startx"+32)%>;
   			 starty=<%=session.getAttribute("starty"+32)%>;
   			 adds[32]=new BMap.Point(startx,starty);
   			 userphone[32]=<%=session.getAttribute("userphone"+32)%>;
   			 aibirdid[32]=<%=session.getAttribute("aibirdid"+32)%>;
	    case 32:
			 startx=<%=session.getAttribute("startx"+31)%>;
   			 starty=<%=session.getAttribute("starty"+31)%>;
   			 adds[31]=new BMap.Point(startx,starty);
   			 userphone[31]=<%=session.getAttribute("userphone"+31)%>;
   			 aibirdid[31]=<%=session.getAttribute("aibirdid"+31)%>;
	    case 31:
			 startx=<%=session.getAttribute("startx"+30)%>;
   			 starty=<%=session.getAttribute("starty"+30)%>;
   			 adds[30]=new BMap.Point(startx,starty);
   			 userphone[30]=<%=session.getAttribute("userphone"+30)%>;
   			 aibirdid[30]=<%=session.getAttribute("aibirdid"+30)%>;
	    case 30:
			 startx=<%=session.getAttribute("startx"+29)%>;
   			 starty=<%=session.getAttribute("starty"+29)%>;
   			 adds[29]=new BMap.Point(startx,starty);
   			 userphone[29]=<%=session.getAttribute("userphone"+29)%>;
   			 aibirdid[29]=<%=session.getAttribute("aibirdid"+29)%>;
	    case 29:
			 startx=<%=session.getAttribute("startx"+28)%>;
   			 starty=<%=session.getAttribute("starty"+28)%>;
   			 adds[28]=new BMap.Point(startx,starty);
   			 userphone[28]=<%=session.getAttribute("userphone"+28)%>;
   			 aibirdid[28]=<%=session.getAttribute("aibirdid"+28)%>;
	    case 28:
			 startx=<%=session.getAttribute("startx"+27)%>;
   			 starty=<%=session.getAttribute("starty"+27)%>;
   			 adds[27]=new BMap.Point(startx,starty);
   			 userphone[27]=<%=session.getAttribute("userphone"+27)%>;
   			 aibirdid[27]=<%=session.getAttribute("aibirdid"+27)%>;
	    case 27:
			 startx=<%=session.getAttribute("startx"+26)%>;
   			 starty=<%=session.getAttribute("starty"+26)%>;
   			 adds[26]=new BMap.Point(startx,starty);
   			 userphone[26]=<%=session.getAttribute("userphone"+26)%>;
   			 aibirdid[26]=<%=session.getAttribute("aibirdid"+26)%>;
	    case 26:
			 startx=<%=session.getAttribute("startx"+25)%>;
   			 starty=<%=session.getAttribute("starty"+25)%>;
   			 adds[25]=new BMap.Point(startx,starty);
   			 userphone[25]=<%=session.getAttribute("userphone"+25)%>;
   			 aibirdid[25]=<%=session.getAttribute("aibirdid"+25)%>;
	    case 25:
			 startx=<%=session.getAttribute("startx"+24)%>;
   			 starty=<%=session.getAttribute("starty"+24)%>;
   			 adds[24]=new BMap.Point(startx,starty);
   			 userphone[24]=<%=session.getAttribute("userphone"+24)%>;
   			 aibirdid[24]=<%=session.getAttribute("aibirdid"+24)%>;
	    case 24:
			 startx=<%=session.getAttribute("startx"+23)%>;
   			 starty=<%=session.getAttribute("starty"+23)%>;
   			 adds[23]=new BMap.Point(startx,starty);
   			 userphone[23]=<%=session.getAttribute("userphone"+23)%>;
   			 aibirdid[23]=<%=session.getAttribute("aibirdid"+23)%>;
	    case 23:
			 startx=<%=session.getAttribute("startx"+22)%>;
   			 starty=<%=session.getAttribute("starty"+22)%>;
   			 adds[22]=new BMap.Point(startx,starty);
   			 userphone[22]=<%=session.getAttribute("userphone"+22)%>;
   			 aibirdid[22]=<%=session.getAttribute("aibirdid"+22)%>;
	    case 22:
			 startx=<%=session.getAttribute("startx"+21)%>;
   			 starty=<%=session.getAttribute("starty"+21)%>;
   			 adds[21]=new BMap.Point(startx,starty);
   			 userphone[21]=<%=session.getAttribute("userphone"+21)%>;
   			 aibirdid[21]=<%=session.getAttribute("aibirdid"+21)%>;
	    case 21:
			 startx=<%=session.getAttribute("startx"+20)%>;
   			 starty=<%=session.getAttribute("starty"+20)%>;
   			 adds[20]=new BMap.Point(startx,starty);
   			 userphone[20]=<%=session.getAttribute("userphone"+20)%>;
   			 aibirdid[20]=<%=session.getAttribute("aibirdid"+20)%>;
	    case 20:
			 startx=<%=session.getAttribute("startx"+19)%>;
   			 starty=<%=session.getAttribute("starty"+19)%>;
   			 adds[19]=new BMap.Point(startx,starty);
   			 userphone[19]=<%=session.getAttribute("userphone"+19)%>;
   			 aibirdid[19]=<%=session.getAttribute("aibirdid"+19)%>;
	    case 19:
			 startx=<%=session.getAttribute("startx"+18)%>;
   			 starty=<%=session.getAttribute("starty"+18)%>;
   			 adds[18]=new BMap.Point(startx,starty);
   			 userphone[18]=<%=session.getAttribute("userphone"+18)%>;
   			 aibirdid[18]=<%=session.getAttribute("aibirdid"+18)%>;
	    case 18:
			 startx=<%=session.getAttribute("startx"+17)%>;
   			 starty=<%=session.getAttribute("starty"+17)%>;
   			 adds[17]=new BMap.Point(startx,starty);
   			 userphone[17]=<%=session.getAttribute("userphone"+17)%>;
   			 aibirdid[17]=<%=session.getAttribute("aibirdid"+17)%>;
	    case 17:
			 startx=<%=session.getAttribute("startx"+16)%>;
   			 starty=<%=session.getAttribute("starty"+16)%>;
   			 adds[16]=new BMap.Point(startx,starty);
   			 userphone[16]=<%=session.getAttribute("userphone"+16)%>;
   			 aibirdid[16]=<%=session.getAttribute("aibirdid"+16)%>;
		case 16:
			 startx=<%=session.getAttribute("startx"+15)%>;
   			 starty=<%=session.getAttribute("starty"+15)%>;
   			 adds[15]=new BMap.Point(startx,starty);
   			 userphone[15]=<%=session.getAttribute("userphone"+15)%>;
   			 aibirdid[15]=<%=session.getAttribute("aibirdid"+15)%>;
		case 15:
			 startx=<%=session.getAttribute("startx"+14)%>;
   			 starty=<%=session.getAttribute("starty"+14)%>;
   			 adds[14]=new BMap.Point(startx,starty);
   			 userphone[14]=<%=session.getAttribute("userphone"+14)%>;
   			 aibirdid[14]=<%=session.getAttribute("aibirdid"+14)%>;
		case 14:
			 startx=<%=session.getAttribute("startx"+13)%>;
   			 starty=<%=session.getAttribute("starty"+13)%>;
   			 adds[13]=new BMap.Point(startx,starty);
   			 userphone[13]=<%=session.getAttribute("userphone"+13)%>;
   			 aibirdid[13]=<%=session.getAttribute("aibirdid"+13)%>;
		case 13:
			 startx=<%=session.getAttribute("startx"+12)%>;
   			 starty=<%=session.getAttribute("starty"+12)%>;
   			 adds[12]=new BMap.Point(startx,starty);
   			 userphone[12]=<%=session.getAttribute("userphone"+12)%>;
   			 aibirdid[12]=<%=session.getAttribute("aibirdid"+12)%>;
		case 12:
			 startx=<%=session.getAttribute("startx"+11)%>;
   			 starty=<%=session.getAttribute("starty"+11)%>;
   			 adds[11]=new BMap.Point(startx,starty);
   			 userphone[11]=<%=session.getAttribute("userphone"+11)%>;
   			 aibirdid[11]=<%=session.getAttribute("aibirdid"+11)%>;
		case 11:
			 startx=<%=session.getAttribute("startx"+10)%>;
   			 starty=<%=session.getAttribute("starty"+10)%>;
   			 adds[10]=new BMap.Point(startx,starty);
   			 userphone[10]=<%=session.getAttribute("userphone"+10)%>;
   			 aibirdid[10]=<%=session.getAttribute("aibirdid"+10)%>;
		case 10:
			 startx=<%=session.getAttribute("startx"+9)%>;
   			 starty=<%=session.getAttribute("starty"+9)%>;
   			 adds[9]=new BMap.Point(startx,starty);
   			 userphone[9]=<%=session.getAttribute("userphone"+9)%>;
   			 aibirdid[9]=<%=session.getAttribute("aibirdid"+9)%>;
		case 9:
			 startx=<%=session.getAttribute("startx"+8)%>;
   			 starty=<%=session.getAttribute("starty"+8)%>;
   			 adds[8]=new BMap.Point(startx,starty);
   			 userphone[8]=<%=session.getAttribute("userphone"+8)%>;
   			 aibirdid[8]=<%=session.getAttribute("aibirdid"+8)%>;
		case 8:
			 startx=<%=session.getAttribute("startx"+7)%>;
   			 starty=<%=session.getAttribute("starty"+7)%>;
   			adds[7]=new BMap.Point(startx,starty);
   			userphone[7]=<%=session.getAttribute("userphone"+7)%>;
   			aibirdid[7]=<%=session.getAttribute("aibirdid"+7)%>;
		case 7:
			 startx=<%=session.getAttribute("startx"+6)%>;
   			 starty=<%=session.getAttribute("starty"+6)%>;
   			adds[6]=new BMap.Point(startx,starty);
   			userphone[6]=<%=session.getAttribute("userphone"+6)%>;
   			aibirdid[6]=<%=session.getAttribute("aibirdid"+6)%>;
		case 6:
			 startx=<%=session.getAttribute("startx"+5)%>;
   			 starty=<%=session.getAttribute("starty"+5)%>;
   			adds[5]=new BMap.Point(startx,starty);
   			userphone[5]=<%=session.getAttribute("userphone"+5)%>;
   			aibirdid[5]=<%=session.getAttribute("aibirdid"+5)%>;
		case 5:
			 startx=<%=session.getAttribute("startx"+4)%>;
   			 starty=<%=session.getAttribute("starty"+4)%>;
   			adds[4]=new BMap.Point(startx,starty);
   			userphone[4]=<%=session.getAttribute("userphone"+4)%>;
   			aibirdid[4]=<%=session.getAttribute("aibirdid"+4)%>;
		case 4:
			 startx=<%=session.getAttribute("startx"+3)%>;
   			 starty=<%=session.getAttribute("starty"+3)%>;
   			adds[3]=new BMap.Point(startx,starty);
   			userphone[3]=<%=session.getAttribute("userphone"+3)%>;
   			aibirdid[3]=<%=session.getAttribute("aibirdid"+3)%>;
		case 3:
			 startx=<%=session.getAttribute("startx"+2)%>;
   			 starty=<%=session.getAttribute("starty"+2)%>;
   			adds[2]=new BMap.Point(startx,starty);
   			userphone[2]=<%=session.getAttribute("userphone"+2)%>;
   			aibirdid[2]=<%=session.getAttribute("aibirdid"+2)%>;
		case 2:
	    	 startx=<%=session.getAttribute("startx"+1)%>;
   			 starty=<%=session.getAttribute("starty"+1)%>;
   			adds[1]=new BMap.Point(startx,starty);
   			userphone[1]=<%=session.getAttribute("userphone"+1)%>;
   			aibirdid[1]=<%=session.getAttribute("aibirdid"+1)%>;
		case 1:
		      startx=<%=session.getAttribute("startx"+0)%>;
     		  starty=<%=session.getAttribute("starty"+0)%>;
     		 adds[0]=new BMap.Point(startx,starty);
     		 userphone[0]=<%=session.getAttribute("userphone"+0)%>;
     		 aibirdid[0]=<%=session.getAttribute("aibirdid"+0)%>;
			break;
	    default:
	        break;
}

    for(var i=0;i<adds.length;i++){
        var marker=BMap.Marker(adds[i]);
        map.addOverlay(marker);
        marker.setAnimation(BMAP_ANIMATION_BOUNCE);
        var content=aibirdid[i];
        addClickHandler(content,marker);//给每个点添加信息窗口
        marker.setLabel(new BMap.Label("Aibird："+(i+1),{offset:new BMap.Size(20,-10)}));//给每个位置添加标签
    }
    
    function addClickHandler(content,marker){
        marker.addEventListener("click",function(){
           window.location.href="http://localhost:8080/AibirdMap/aibird/getAibirdInfo?aibirdid="+content;
        });
    }
    
    function openInfo(content,e){
        var p=e.target;
        var point=new BMap.Point(p.getPosition().lng,p.getPosition().lat);
        var infoWindow=new BMap.InfoWindow(content,opts);//创建信息窗口对象
        map.openInfoWindow(infoWindow,point);//开启信息窗口
    }
    
    function bdGEO(){
       var pt=adds[index];
       geocodeSearch(pt);
       index++;
    }
    
    function geocodeSearch(pt){
       if(index<adds.length-1){
           setTimeout(window.bdGEO,400);
           
       }
       myGEO.getLocation(pt,function(rs){
           var addComp=rs.addressComponents;
           document.getElementById("result").innerHTML+=index+"."+"手机号："+userphone[index-1]+"   ,"+adds[index-1].lng+"   ."+
           adds[index-1].lat+": "+"商圈("+rs.business+")结构化数据("+addComp.province+", "+addComp.city+", "+addComp.district+", "+
           addComp.street+", "+addComp.streetNumber+")<br/><br/>";
       });
    }


</script>
