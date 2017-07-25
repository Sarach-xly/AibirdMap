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
    <meta content="text/html;charset=UTF-8" http-equiv="Content-Type">
    <meta content="initial-scale=1.0,user-scalable=no" name="viewport">
    
    <title>a aibird footmark</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=36wh9YsE9M8r9Gnq6XM0TEor7Q1GG40H"></script>
	<script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/DistanceTool/1.2/src/DistanceTool_min.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/CurveLine/1.5/src/CurveLine.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	  body,html{
	    width:100%;
	    height:100%;
	    margin:0;
	    font-weight:"微软雅黑"
	  }
	  #whole{
	    height:100%;
	    width:100%;
	  }
	  #l-map{
	    float:left;
	    width:80%;
	    height:100%;
	  }
	  #r-result{
	     float:left;
	     width:20%;
	     height:100%;
	     font-size:14px;
	     line-height:20px;
	  }
	</style>

  </head>
  
  <script type="text/javascript">
    var userphone=<%=session.getAttribute("userphone1")%>;
  </script>
  
  <body>
    <div style="font-family:STKaiti;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              无人机SIM卡号：<span style="color:#A000000;"><%=session.getAttribute("userphone1") %></span>
     <span style="color:#181818;font-family:STKaiti;font-weight:529;">>>></span>该无人机的飞行记录
    </div><br/>
    <div id="whole">
       <div id="l-map"></div>
       <div id="r-result">
          <input type="button" value="无人机飞行记录" onClick="bdGEO(0)"/>
          <div id="result"></div>
       </div>
    </div>
  </body>
</html>

<script type="text/javascript">
//百度地图API功能
var map=new BMap.Map("l-map");
var num=<%=session.getAttribute("num1")%>;
map.centerAndZoom("武汉光谷广场",13);
map.disableDoubleClickZoom(true);//关闭双击放大
var myDis=new BMapLib.DistanceTool(map);
map.enableScrollWheelZoom(true);//启用滚轮放大缩小
map.addControl(new BMap.MapTypeControl());

//左上角添加比例尺
var top_left_control=new BMap.ScaleControl({anchor:BMAP_ANCHOR_TOP_LEFT});
//左上角添加默认缩放平移控件
var top_left_navigation=new BMap.NavigationControl();

map.addControl(top_left_control);
map.addControl(top_left_navigation);

var index=0;
var startx1;
var starty1;
var myGeo=new BMap.Geocoder();
var adds=new Array();
var createtime=new Array();
var x=new Array();
var y=new Array();
switch(num){
   case 17:
       startx1=<%=session.getAttribute("startx2"+16)%>;
       starty1=<%=session.getAttribute("starty2"+16)%>;
       adds[16]=new BMap.Point(startx1,starty1);
       x[16]=startx1;y[16]=starty1;
       createtime[16]="<%=session.getAttribute("createtime2"+16)%>";
   case 16:
         startx1=<%=session.getAttribute("startx0"+15)%>;
         starty1=<%=session.getAttribute("starty0"+15)%>;
         x[15]=startx1;y[15]=starty1;
         adds[15]=new BMap.Point(startx1,starty1);
         creatTime[15]="<%=session.getAttribute("creatTime0"+15)%>";
       case 15:
         startx1=<%=session.getAttribute("startx0"+14)%>;
         starty1=<%=session.getAttribute("starty0"+14)%>;
         x[14]=startx1;y[14]=starty1;
         adds[14]=new BMap.Point(startx1,starty1);
         creatTime[14]="<%=session.getAttribute("creatTime0"+14)%>";
       case 14:
         startx1=<%=session.getAttribute("startx0"+13)%>;
         starty1=<%=session.getAttribute("starty0"+13)%>;
         x[13]=startx1;y[13]=starty1;
         adds[13]=new BMap.Point(startx1,starty1);
         creatTime[13]="<%=session.getAttribute("creatTime0"+13)%>";
       case 13:
         startx1=<%=session.getAttribute("startx0"+12)%>;
         starty1=<%=session.getAttribute("starty0"+12)%>;
         x[12]=startx1;y[12]=starty1;
         adds[12]=new BMap.Point(startx1,starty1);
         creatTime[12]="<%=session.getAttribute("creatTime0"+12)%>";
       case 12:
         startx1=<%=session.getAttribute("startx0"+11)%>;
         starty1=<%=session.getAttribute("starty0"+11)%>;
         x[11]=startx1;y[11]=starty1;
         adds[11]=new BMap.Point(startx1,starty1);
         creatTime[11]="<%=session.getAttribute("creatTime0"+11)%>";
       case 11:
         startx1=<%=session.getAttribute("startx0"+10)%>;
         starty1=<%=session.getAttribute("starty0"+10)%>;
         x[10]=startx1;y[10]=starty1;
         adds[10]=new BMap.Point(startx1,starty1);
         creatTime[10]="<%=session.getAttribute("creatTime0"+10)%>";
       case 10:
         startx1=<%=session.getAttribute("startx0"+9)%>;
         starty1=<%=session.getAttribute("starty0"+9)%>;
         x[9]=startx1;y[9]=starty1;
         adds[9]=new BMap.Point(startx1,starty1);
         creatTime[9]="<%=session.getAttribute("creatTime0"+9)%>";
       case 9:
         startx1=<%=session.getAttribute("startx0"+8)%>;
         starty1=<%=session.getAttribute("starty0"+8)%>;
         x[8]=startx1;y[8]=starty1;
         adds[8]=new BMap.Point(startx1,starty1);
         creatTime[8]="<%=session.getAttribute("creatTime0"+8)%>";
       case 8:
         startx1=<%=session.getAttribute("startx0"+7)%>;
         starty1=<%=session.getAttribute("starty0"+7)%>;
         x[7]=startx1;y[7]=starty1;
         adds[7]=new BMap.Point(startx1,starty1);
         creatTime[7]="<%=session.getAttribute("creatTime0"+7)%>";
       case 7:
         startx1=<%=session.getAttribute("startx0"+6)%>;
         starty1=<%=session.getAttribute("starty0"+6)%>;
         x[6]=startx1;y[6]=starty1;
         adds[6]=new BMap.Point(startx1,starty1);
         creatTime[6]="<%=session.getAttribute("creatTime0"+6)%>";
       case 6:
         startx1=<%=session.getAttribute("startx0"+5)%>;
         starty1=<%=session.getAttribute("starty0"+5)%>;
         x[5]=startx1;y[5]=starty1;
         adds[5]=new BMap.Point(startx1,starty1);
         creatTime[5]="<%=session.getAttribute("creatTime0"+5)%>";
       case 5:
         startx1=<%=session.getAttribute("startx0"+4)%>;
         starty1=<%=session.getAttribute("starty0"+4)%>;
         x[4]=startx1;y[4]=starty1;
         adds[4]=new BMap.Point(startx1,starty1);
         creatTime[4]="<%=session.getAttribute("creatTime0"+4)%>";
       case 4:
         startx1=<%=session.getAttribute("startx0"+3)%>;
         starty1=<%=session.getAttribute("starty0"+3)%>;
         x[3]=startx1;y[3]=starty1;
         adds[3]=new BMap.Point(startx1,starty1);
         creatTime[3]="<%=session.getAttribute("creatTime0"+3)%>";
       case 3:
         startx1=<%=session.getAttribute("startx0"+2)%>;
         starty1=<%=session.getAttribute("starty0"+2)%>;
         x[2]=startx1;y[2]=starty1;
         adds[2]=new BMap.Point(startx1,starty1);
         creatTime[2]="<%=session.getAttribute("creatTime0"+2)%>";
       case 2:
         startx1=<%=session.getAttribute("startx0"+1)%>;
         starty1=<%=session.getAttribute("starty0"+1)%>;
         x[1]=startx1;y[1]=starty1;
         adds[1]=new BMap.Point(startx1,starty1);
         creatTime[1]="<%=session.getAttribute("creatTime0"+1)%>";
       case 1:
         startx1=<%=session.getAttribute("startx0"+0)%>;
         starty1=<%=session.getAttribute("starty0"+0)%>;
         x[0]=startx1;y[0]=starty1;
         adds[0]=new BMap.Point(startx1,starty1);
         creatTime[0]="<%=session.getAttribute("creatTime0"+1)%>";
         break;
      default:
         break;
}

//添加弧线
var curve=new BMapLib.CurveLine(adds,{strokeColor:"blue",strokeWeight:3,strokeOpacity:0.5});
//创建弧线对象
map.addOverlay(curve);
curve.enableEditing();//开启编辑功能

var opts={
    width:250,//信息窗口宽度
    height:110,//信息窗口高度
    title:"信息窗口",//信息窗口标题
    enableMessage:true//设置允许信息窗口发送短信
};

for(var i=(num-1);i>=0;i--){
   var marker=new BMap.Marker(adds[i]);
   map.addOverlay(marker);
   addClickHandler("编号:"+(i+1)+"<br/>"+"时间:"+createtime[i]+"<br/>"+"经度:"+x[i]+"<br/>"+"纬度:"+y[i],marker);
   marker.setLabel(new BMap.Label((i+1),{offset:new BMap.Size(20,-10)}));
}

//删除部分覆盖物
function deletePoint(){
   var allOverlay=map.getOverlays();
   for(var i=0;i<allOverlay.length-1;i++){
       if(allOverlay[i].getLabel().content!=1&&allOverlay[i].getLabel().content!=allOverlay.length){
             map.removeOverlay(allOverlay[i]);
             return false;
       }
   }
}

function addClickHandler(content,marker){
   marker.addEventListener("click",function(e){
      openInfo(content,e);
   });
}

function openInfo(content,e){
   var p=e.target;
   var point=new BMap.Point(p.getPosition().lng,p.getPosition().lat);
   var infoWindow=new BMap.InfoWindow(content,opts);
   map.openInfoWindow(infoWindow,point);
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
    myGeo.getLocation(pt,function(rs){
       var addComp=rs.addressComponents;
       document.getElementById("result").innerHTML+=index+"."+adds[index-1].lng+", "+adds[index-1].lat+": "+
      "商圈（"+rs.business+") 结构化数据("+addComp.province+","+addComp.city+","+addComp.district+","+addComp.street+","+
      addComp.streetNumber+")<br/><br/>";
    });
}

</script>
