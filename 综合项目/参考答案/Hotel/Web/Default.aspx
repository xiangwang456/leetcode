<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
        <style type="text/css">
        <!--
        body,td,th {
	        font-family: 宋体;
	        font-size: 9pt;
	        color: #FFCC00;
        }
        body {
	       background-image: url(Images/img/02.jpg);
        }
        -->
        </style>
        <link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <div align="center">
              <table width="1003" height="548" border="0" cellpadding="0" cellspacing="0" background="Images/img/01.jpg">
                <tr>
                  <td align="center" valign="middle">
                      <script language=javascript> 
                        var flashURL="Images/fla/index1.swf"; 
                        var flashWIDTH="1003"; 
                        var flashHEIGHT="548"; 
                      </script> 
                      <script language=javascript src="JS/flash_view.js">
                      </script>	
                  </td>
                </tr>
              </table>
              <table width="1003" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="1" bgcolor="622700"></td>
                </tr>
                <tr>
                  <td height="50" align="center" valign="middle" style="line-height:25px">
                    <font color="#E47B00">
                        <font style="font-family:Arial, Helvetica, sans-serif">
                            Copyright &copy; 2010 MSTANFORD International Hotel.
                        </font>
                    </font>
                    &nbsp;&nbsp;本页采用FLASH 如果不能正常显示请下载FLASHPLAYER  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="home.aspx" class="dd">点击进入网站</a>
                  </td>
                </tr>
              </table>
            </div>
        </div>
    </form>    
</body>
</html>
