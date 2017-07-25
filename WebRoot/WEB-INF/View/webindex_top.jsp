<%--
  Created by IntelliJ IDEA.
  User: xly
  Date: 2017/5/22
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="CONTENT-TYPE" content="text/html;charset=utf-8">
    <link type="text/css" href="../css/css.css" rel="stylesheet">
    <title>webindex-top</title>
    <link href="../css/font.css" type="text/css" rel="stylesheet">
    <script language="JavaScript" type="text/javascript">
        function MM_preloadimages() {
            var d=document;
            if (d.images){
                if(!d.MM_p) d.MM_p=new Array();
                var i,j=d.MM_p.length,a=MM_preloadimages.arguments;
                for (i=0;i<a.length;i++)
                    if(a[i].indexOf("#")!=0){
                       d.MM_p[j]=new Image;
                       d.MM_p[j++].src=a[i];
                    }
            }
        }

        function MM_swapImgRestore() {
            var i,x,a=document.MM_sr;
            for(var i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++)
                x.src=x.oSrc;
        }
        
        function MM_findObj(n,d) {
            var p,i,x;
            if(!d) d=document;
            if((p=n.indexOf("?"))>0&&parent.frames.length){
                d=parent.frames[n.substring(p+1)].document;
                n=n.substring(0,p);
            }
            if(!(x=d[n])&&d.all) x=d.all[n];
            for(i=0;!x&&i<d.forms.length;i++)
                x=d.forms[i][n];
            for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
            if(!x&&d.getElementById) x=d.getElementById(n);
            return x;
        }
        
        function MM_swapImage() {
            var i,j=0,x,a=MM_swapImage.arguments;
            document.MM_sr=new Array();
            for(var i=0;i<(a.length-2);i+=3)
                if ((x=MM_findObj(a[i]))!=null){
                   document.MM_sr[j++]=x;
                    if(!x.oSrc)
                        x.oSrc=x.src;
                        x.src=a[i+2];
                }
        }
    </script>
</head>
<body>
    <table width="100%" height="60" border="0" align="center" cellpadding="0" cellspacing="0" background="../img/index_02.gif">
        <tr>
            <td width="39%" valign="top"><img src="../img/index_01.gif" width="850" height="97"></td>
            <td width="32%" align="right" valign="top">&nbsp;</td>
            <td width="29%" align="right" valign="top"><img src="../img/index_04.gif" width="167" height="97" border="0"></td>
        </tr>
    </table>

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
         <tr>
             <td width="68%" align="left">
                 <table width="100%" border="0" cellpadding="0" cellspacing="0">
                     <tr>
                         <td class="font12blue">
                             <strong>
                                 欢迎登录,
                                 <?php
                                   if($_SESSION['UserInfo1.username']!=""){
                                     echo $_SESSION['UserInfo1.username'];
                                   }
                                  ?>
                             </strong>
                         </td>
                     </tr>
                 </table>
             </td>
             <!-- <td width="10%" align="right"><a href="Index" target="_top" onMouseOver="MM_swapImage('Image1','','../imgs/main_04_off.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="../imgs/main_04.gif" name="Images2" width="102" height="34" border="0" id="Images2"></a></td>
             <td width="11%" align="right"><a href="https://app.aibird.com/youpai_project1/user/login" target="_top" onMouseOver="MM_swapImage('Images4','','../imgs/main_06_off.gif',1)" onMouseOut="MM_swapImgRestore()"><img src="../imgs/main_06.gif" name="Image4" width="104" height="34" border="0" id="Images4"></a></td> -->
         </tr>
    </table>
</body>
</html>
