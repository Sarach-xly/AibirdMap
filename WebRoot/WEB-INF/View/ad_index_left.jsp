<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="CONTENT-TYPE" content="text/html;charset=utf-8">
    <title>ad_index_left</title>
    <link href="../css/font.css" type="text/css" rel="stylesheet">
</head>
<body background="../imgs/left_02.gif" leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
    <SCRIPT language="JavaScript1.2">
        function showsubmenu(sid) {
            whichEl=eval("submenu"+sid);
            if(whichEl.style.display=="none"){
                eval("submenu"+sid+".style.display='';");
            }else{
                eval("submenu"+sid+".style.display='none';");
            }
        }
    </SCRIPT>
    
    <table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
         <td background="../img/left_002.gif">
            <table width="100%" height="32" border="0" cellpadding="0" cellspacing="0">
               <tr style="CURSOR:hand">
                   <td width="57" align="center"><img src="../img/di.gif"></td>
                   <td width="143" class="a" onClick="showsubmenu(0)" style="display:">
                      <span class="a01">无人机GPS定位</span>
                   </td>
               </tr>
            </table>
         </td> 
      </tr> 
      <tr>
         <td background="../img/left_003.gif" bgcolor="#ffffff" id="submenu0" style="display:none;">
            <table width="100%" height="32" align="center" cellpadding="0" cellspacing="0">
               <tr>
                  <td width="51" align="center">
                     <img src="../img/left03.gif" width="5" height="7">
                  </td>
                  <td width="127" height="32">
                     <a href="http://10.152.120.130:8080/AibirdMap/aibird/getAllAibirdGps" target="main" class="a02">无人机定位纵览</a>
                  </td>
               </tr>
            </table>
            </td>
      </tr>
      <tr>
         <td background="../img/left_002.gif">
            <table width="100%" height="32" border="0" cellpadding="0" cellspacing="0">
               <tr style="CURSOR:hand">
                   <td width="57" align="center"><img src="../img/di.gif"></td>
                   <td width="143" class="a" onClick="showsubmenu(1)" style="display:">
                       <span class="a01">无人机飞行历史纪录</span>
                   </td>
               </tr>
            </table>
         </td>
      </tr>
      <tr>
         <td background="../img/left_003.gif" bgcolor="#ffffff" id="submenu1" style="display:none;">
             <table width="100%" height="32" align="center" cellpadding="0" cellspacing="0">
                 <tr>
                     <td width="51" align="center">
                         <img src="../img/left03.gif" width="5" height="7">
                     </td>
                     <td width="127" height="32">
                         <a href="http://10.152.120.130:8080/AibirdMap/aibird/getAllAibirdInfo" target="main" class="a02">无人机飞行历史</a>
                     </td>
                 </tr>
             </table>
         </td>
      </tr>
      <tr>
         <td background="../img/left_002.gif">
            <table width="100%" height="32" border="0" cellpadding="0" cellspacing="0">
                <tr style="CURSOR:hand">
                   <td width="57" align="center"><img src="../img/di.gif"></td>
                   <td width="143" class="a" onClick="showsubmenu(1)" style="display:">
                       <span class="a01">返回首页</span>
                   </td>
                </tr>
            </table>
         </td>
      </tr>
      <tr>
          <td background="../img/left_003.gif" bgcolor="#ffffff" id="submenu1" style="display:none;">
              <table width="100%" height="32" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                     <td width="51" align="center">
                        <img src="../img/left03.gif" width="5" height="7">
                     </td>
                     <td width="127" height="32">
                        <a href="http://121.41.179.217/youpai_project1/video/Index" target="main" class="a02">返回首页</a>
                     </td>
                  </tr>
              </table>
          </td>
      </tr>
      <tr>
          <td background="../img/left_002.gif">
              <table width="100%" height="32" border="0" cellpadding="0" cellspacing="0">
                  <tr style="CURSOR:hand">
                      <td width="57" align="center"><img src="../img/di.gif"></td>
                      <td width="143" class="a" onClick="showsubmenu(1)" style="display:">
                          <span class="a01">退出系统</span>
                      </td>
                  </tr>
              </table>
          </td>
      </tr>
      <tr>
          <td background="../img/left_003.gif" bgcolor="#ffffff" id="submenu1" style="display:none;">
              <table width="100%" height="32" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                      <td width="51" align="center">
                         <img src="../img/left03.gif" width="5" height="7">
                      </td>
                      <td width="127" height="32">
                         <a href="http://121.41.179.217/youpai_project1/user/login" target="main" class="a02">退出系统</a>
                      </td>
                  </tr>
              </table>
          </td>
      </tr>
    </table>
  </body>
</html>
