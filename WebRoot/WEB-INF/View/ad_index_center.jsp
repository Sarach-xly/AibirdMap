<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta content="text/html;charset=UTF-8" http-equiv="CONTENT-TYPE">
    
    <title>ad_index_center.jsp</title>
    

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body topmargin="0" marginheight="0" leftmargin="0" marginwidth="0" width="100%">
      <script type="text/javascript">
        function document.body.onselectstart(){
           return false;
        }
        function showhidelist(){
           if(top.mainframeset.cols=='0,10,*'){
               top.mainframeset.cols='209,10,*';
           }else if(top.mainframeset.cols=='209,10,*'){
               top.mainframeset.cols='0,10,*';
           }else if(top.mainframeset.cols='0,10,*'){
               top.mainframeset.cols='209,10,*';
               top.innerframe.document.body.scrollLeft=0;
           }else if(top.mainframeset.cols=='209,10,*'){
               top.mainframeset.cols='0,10,*';
               top.innerframe.document.body.scrollLeft=10;
           }
        }
      </script>
      
      <table height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
             <td width="10" height="100%" valign="middle" background="../img/webIndex_27.gif" style="CURSOR:hand" title="隐藏/显示列表" onClick="showhidelist()"><img src="../img/WebIndex_4_1.gif" width="10" height="52"></td>
             <td width="10" height="100%" valign="middel" background="../img/webIndex_27.gif" style="CURSOR:hand" title="隐藏/显示列表" onClick="showhidelist()">
             <img src="../img/WebIndex_4_1.gif" width="10" height="52">
             </td>
          </tr>
      </table>
  </body>
</html>
