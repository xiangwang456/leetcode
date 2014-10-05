<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Help" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
       
    <SCRIPT type="text/javascript">
win = "on";
function switchSysBar() {
	if (win == "on") {
		win = "off";
		document.getElementById("switchPoint").src = "img/arrow02.gif";
		document.getElementById("<%=left.ClientID%>").style.display = "none";
	} else {
		win = "on";
		document.getElementById("switchPoint").src = "img/arrow01.gif";
		document.getElementById("<%=left.ClientID%>").style.display = "block";
	}
}
function tableTime()
{
    Close();
    document.getElementById("tableTime").style.display="block";
}
function tableConn()
{
    Close();
    document.getElementById("tableConn").style.display="block";
}
function tablePay()
{
    Close();
    document.getElementById("tablePay").style.display="block";
}
function tableAbout()
{
    Close();
    document.getElementById("tableAbout").style.display="block";
}tableAbout
function Close()
{
    document.getElementById("tableTime").style.display="none";
    document.getElementById("tableConn").style.display="none";
    document.getElementById("tablePay").style.display="none";
    document.getElementById("tableAbout").style.display="none";
}
</SCRIPT>

    <style type="text/css">
<!--
body,td,th {
	font-family: 宋体;
	font-size: 12pt;
	color: #593E34;
}

body {
	
	background-color: #000000;
}
.UpdataData{BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 200px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff}
.LeaveWord{BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; BORDER-BOTTOM: #9d9d6c 1px solid;  BACKGROUND-COLOR: #ffffff}
-->
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="js/function.js"></script>
<script type="text/javascript" src="js/prototype.js"></script>
<script type="text/javascript" src="js/scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="js/lightbox.js"></script>
<script type="text/javascript"  src="js/calendar.js"></script>
<script type="text/javascript"  src="js/xmlHttpRequest.js"></script>
<script type="text/javascript" src="js/check.js"></script>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
</head>

<body  topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <div align="center">
      
      
<table width="1003" height="50" border="0" cellpadding="0" cellspacing="0" bgcolor="#000000">
    <tr>
      <td width="91" align="center" valign="middle">
        <img src="Images/img/03.jpg" width="45" height="33" alt="" />
      </td>
      <td width="912" align="left" valign="middle">
        <font color="#D3BD93">
            <a href="home.aspx" class="dd">网站首页</a> | 
            <a href="HotelContent.aspx" class="dd">酒店介绍</a> | 
            <a href="Kf.aspx" class="dd">客房</a> | 
            <a href="WineBar.aspx" class="dd">餐饮及酒吧</a> | 
            <a href="Conference.aspx" class="dd">会议及宴会</a> | 
            <a href="HealthFun.aspx" class="dd">健身和娱乐</a> | 
            <a href="Destine.aspx" class="dd">预订中心</a> | 
            <a href="CustomerShowData.aspx" class="dd">会员中心</a> | 
            <a href="Favour.aspx" class="dd">特惠精选</a> | 
            <a href="Intent.aspx" class="dd">目的地指南</a> | 
            <a href="LeaveWord.aspx" class="dd">留言反馈</a>|
            <a href="Help.aspx" class="dd">在线帮助</a>
          </font>
       </td>
    </tr>
</table>


<table id="Table1" width="1003" height="580" border="0" cellpadding="0" cellspacing="0"  bgcolor="#fff4c7" runat="server" >
    <tr>
        <td  background="img/dh_img01b.jpg " width="7"></td>
        
        <td id="left" valign="top" style="width: 210px;" align="left">
             <table cellpadding="0" cellspacing="0">
                <tr height="40">
                    <td>
						<IMG height=36  src="img/zc_img_01.jpg" width="46">
					</td>
                    <td width="165" background="img/zc_img_01a.jpg">
                        <span class="zclm-bt">帮助主题</span>
                    </td>                  
                </tr>

                <tr height="30">
                    <td align="left" colspan="2">
                        &nbsp;&nbsp;<img border="0" src="img/dd.gif" width="3" height="10">
                       <a href="#" class="bb" onclick="tablePay();">
				        <font color="#004983">付款方式</font>
				       </a>
                    </td>
                </tr>
                
                <tr height="30">
                    <td align="left" colspan="2">
                        &nbsp;&nbsp;<img border="0" src="img/dd.gif" width="3" height="10">                        
                       <a href="#" class="bb" onclick="tableTime();">
				        <font color="#004983">我们的工作时间</font>
				       </a>
                    </td>
                </tr>
                
                <tr height="30">
                    <td align="left" colspan="2">
                        &nbsp;&nbsp;<img border="0" src="img/dd.gif" width="3" height="10">                        
                       <a href="#" class="bb" onclick="tableAbout();">
				        <font color="#004983">关于本站</font>
				       </a>
                    </td>
                </tr>
                
                <tr height="30">
                    <td align="left" colspan="2">
                        &nbsp;&nbsp;<img border="0" src="img/dd.gif" width="3" height="10">
                       <a href="#"  class="bb" onclick="tableConn();">
				        <font color="#004983">联系我们</font>
				       </a>
                    </td>
                </tr>         
   
            </table>
        </td>
        
        <td align="center" valign="middle" style="cursor:hand" onclick="switchSysBar()" width="7" bgcolor="#090C11">
             <img id="switchPoint" src="img/arrow01.gif">
        </td>
        
        <td height="580" valign="top" Width="760" align="left">
            <br /><br />
             <table width="80%" style="display:none;" cellpadding="0" cellspacing="0" id="tableTime">
              <tr>
                <td width="30"></td>
                <td height="30"><img src="img/ring01.gif"> 我们的工作时间</td>
              </tr>
              <tr>
                <td width="30"></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;<FONT color="#ff8c00"><STRONG>7*24小时服务</STRONG></FONT></td>
              </tr>
            </table>
            
             <table width="80%" style="display:none; " cellpadding="0"  runat="server" cellspacing="0"  id="tableConn">
                  <tr>
                    <td width="30"></td>
                    <td height="30"><img src="img/ring01.gif" align="middle">联系我们</td>
                  </tr>
                  <tr>
                    <td width="30"></td>
                    <td>                        
                         &nbsp;&nbsp;&nbsp;&nbsp;地址：<%=HotelInfo.Address%> <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;邮政编码：<%=HotelInfo.Zip %><br />
                         &nbsp;&nbsp;&nbsp;&nbsp;电话总机：<%=HotelInfo.Tel %><br />
                         &nbsp;&nbsp;&nbsp;&nbsp;传真：<%=HotelInfo.Fax %> <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;联系QQ：<%=HotelInfo.Qq %><br />
                         &nbsp;&nbsp;&nbsp;&nbsp;Email：<%=HotelInfo.Email %> <br />
                    </td>
                </tr>
            </table>
            
             <table width="80%" style="display:none; " cellpadding="0"  runat="server" cellspacing="0"  id="tablePay">
                  <tr>
                    <td width="30"></td>
                    <td height="30"><img src="img/ring01.gif">付款方式</td>
                  </tr>
                  <tr>
                    <td width="30"></td>
                    <td>                        <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;工行： <br /><br /><br /><br />
                         &nbsp;&nbsp;&nbsp;&nbsp;农行：<br /><br /><br /><br />
                         &nbsp;&nbsp;&nbsp;&nbsp;建行：<br /><br /><br /><br />
                    </td>
                </tr>
            </table>
            
             <table width="80%" style="display:none; " cellpadding="0"  runat="server" cellspacing="0"  id="tableAbout">
                  <tr>
                    <td width="30"></td>
                    <td height="30"><img src="img/ring01.gif">关于本站</td>
                  </tr>
                  <tr>
                    <td width="30"></td>
                    <td>    
                      &nbsp;&nbsp;&nbsp;&nbsp;本酒店具备严格的科学管理、先进的通讯设备、高效率的电脑协作、舒适的交通工具、一支朝气蓬勃，
                    富有亲和力的导游队伍。我公司下设八个分公司，
                    美斯坦福集团以团结、务实、创新、高效为企业文化，打造全世界酒店管理的一块“金”字招牌！
                    

                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>            
   
    
   
<table width="1003" border="0" cellpadding="0" cellspacing="0" bgcolor="#000000">
    <tr>
      <td width="1005" height="1" bgcolor="622700"></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="4E0000" >
        <font color="#ffffff">
            <font style="font-family:Arial, Helvetica, sans-serif">
                Copyright &copy; <%=DateTime.Now.Year%> <%=HotelInfo.NameOfEnglish %>
            </font>
        </font>
      </td>
    </tr>
    <tr>
      <td height="75" align="center" valign="middle" >
        <table width="917" height="70" border="0" cellpadding="0" cellspacing="0">        
        <tr>
          
          <td width="243" align="left" valign="middle" style="line-height:18px">
            <img src="Images/img/33.jpg" width="221" height="52" alt="" />
          </td>
		  
		  <td width="674" align="left" valign="middle" style="line-height:18px">
		    <font color="#D6BF95"><%=HotelInfo.Name %><br />
            地址：<%=HotelInfo.Address%> 邮政编码：<%=HotelInfo.Zip %><br />
            电话总机：<%=HotelInfo.Tel %>
            传真：<%=HotelInfo.Fax %> </font><br />
            <font color="#FFFFFF">联系QQ：<span class="style11"><%=HotelInfo.Qq %></span></font>
            <span class="style11">
                <a target="_blank" href="http://www.qq.com/ACCP">
                    <img border="0" src="Images/img/QQ.gif" alt="ACCP大酒店为你服务" />                    
                </a>
                <font color="#FFFFFF"><%=HotelInfo.Qq2 %></font></span>
            <FONT face="Verdana">
                <a target="_blank" href="http://www.qq.com/ACCP">
                  <img border="0" src="Images/img/QQ.gif" alt="ACCP客服为你服务" />                 
                </a>
            </FONT>
            <a href="Admin/Login.aspx"><font color="#FFFFFF">后台管理入口</font></a>
          </td>
	    </tr>
      </table>
      </td>
    </tr>
  </table>
    </div>
    </form>
</body>
</html>
