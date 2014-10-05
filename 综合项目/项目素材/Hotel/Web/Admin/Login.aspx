<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
<!--
body,td,th {
	font-family: 宋体;
	font-size: 9pt;
	color: #000000;
}
body {
	background-color: #75003D;
}
-->
<!--
.style1 {
	font-size: 10.5pt;
	font-weight: bold;
}
-->
</style>
<script language="javascript">
function CheckFormUserLogin()
{
	if(document.getElementById("<%=txtLoginId.ClientID%>").value=="")
	{
		alert("请输入用户名！");
		document.getElementById("<%=txtLoginId.ClientID%>").focus();
		return false;
	}
	if(document.getElementById("<%=txtPwd.ClientID%>").value == "")
	{
		alert("请输入密码！");
		document.getElementById("<%=txtPwd.ClientID%>").focus();
		return false;
	}
    if(document.getElementById("<%=txtValidateCode.ClientID%>").value == "")
	{
		alert("请输入验证码！");
		document.getElementById("<%=txtValidateCode.ClientID%>").focus();
		return false;
	}
	if(document.getElementById("<%=txtValidateCode.ClientID%>").value != "")
	{
	    if(document.getElementById("<%=txtValidateCode.ClientID%>").value.length !=4)
	    {
	        alert("验证码格式输入有误！");
		    document.getElementById("<%=txtValidateCode.ClientID%>").focus();
		    return false;
	    }
	}
	return true;
}
</script>
    <link href="../css/StyleKey.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="../JS/keyb.js" charset ="gb2312"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <div align="center">
  <table width="800" height="600" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td ><div align="center">
        <table width="628" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="457" height="62" align="left" valign="middle" background="img/01.jpg"><div align="right">
              <table width="300" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="20"><div align="center">欢迎登录后台管理系统</div></td>
                </tr>
                <tr>
                  <td height="20"><div align="center"></div></td>
                </tr>
              </table>
            </div></td>
            <td width="171" height="253" rowspan="2" background="img/03.jpg"><table width="171" height="253" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="143">&nbsp;</td>
                <td width="28" valign="top">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td align="left" valign="top"><table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="252" height="191" background="img/02.jpg"><div align="center"></div></td>
                <td width="205" align="center" valign="top" background="img/07.jpg"><div align="center">
                  <table width="205" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="50" colspan="3"><div align="center">用户登录</div></td>
                      </tr>
                    <tr>
                      <td width="78" height="30"><div align="right">用户名：</div></td>
                      <td width="127" height="25" colspan="2"><div align="left">
                        <input  id="txtLoginId" type="text" style=" background-color:#F4A307 ;HEIGHT: 18px"  size="15" runat="server">
			
                      </div></td>
                    </tr>
                    <tr>
                      <td height="30"><div align="right">密&nbsp;&nbsp;&nbsp;码：</div></td>
                      <td height="25" colspan="2"><div align="left">
                             <INPUT size="18" runat="server" onkeydown="Calc.password.value=this.value" title=登录密码  style="background-color:#F4A307;HEIGHT: 18px; width: 120px;"  onclick="password1=this;showkeyboard();this.readOnly=1;Calc.password.value=''"  readOnly="readOnly" type="password" onchange="Calc.password.value=this.value" name="txtPwd" id="txtPwd" />                  
                      </div></td>
                    </tr>
                    
                   <tr>
                      <td height="30"><div align="right">验证码：</div></td>
                      <td height="25" colspan="2" nowrap="nowrap"><div align="left">
                                  <input  id="txtValidateCode" type="text" runat="server"  style="background-color:#F4A307;HEIGHT: 18px; width: 61px;">
                          <img src="../Img.aspx" align="absmiddle" />
                        </div>
                      
                      </td>
                    </tr>
                                    
                    <tr>
                      <td height="50" colspan="3"><div align="center">
                        <table width="180" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><div align="center"><input type="submit" runat="server" name="Submit" onclick="return CheckFormUserLogin();" value=" 确 定 " style="font-size: 9pt;  color: #000000; background-color: #EAEAF4;height:20px;  " onMouseOver ="this.style.backgroundColor='#ffffff'" onMouseOut ="this.style.backgroundColor='#EAEAF4'" title="确定" id="Submit1" onserverclick="Submit1_ServerClick"></div></td>
                            <td><div align="right"> <input type="reset" name="Submit2" value=" 重 输 " style="font-size: 9pt;  color: #000000; background-color: #EAEAF4;height:20px;" onMouseOver ="this.style.backgroundColor='#ffffff'" onMouseOut ="this.style.backgroundColor='#EAEAF4'" title="重输">
                            </div></td>
                          </tr>
                        </table>
                      </div></td>
                    </tr>
                  </table>
                
              
                </div></td>   
              </tr>
            </table>
              <table border="0" cellpadding="0" cellspacing="0">
                          </table></td>
          </tr>
        </table>
        <table width="600" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="628" height="13"><img src="img/04.jpg" width="628" height="13"></td>
            </tr>
        </table>
      </div></td>
    </tr>
  </table>
</div>
    </div>
    </form>
</body>
</html>
