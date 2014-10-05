<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LeaveWord.aspx.cs" Inherits="LeaveWord" Title="Untitled Page" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script type="text/javascript">
function chenphone(mobile)
{ 			
   			
	var reg0 = /^13\d{5,9}$/;
	var reg1 = /^15\d{5,9}$/;
	var reg2 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;								
	var reg3 = /^0\d{10,11}$/;
	var my = false;
	if (reg0.test(mobile))my=true;
	if (reg1.test(mobile))my=true;		
	if (reg2.test(mobile))my=true;							
	if (reg3.test(mobile))my=true;		
	if (!my)
	{			
		return false;
	}
	return true;		
}
function miss(x)
{
	switch(x)	
		{				
			case 1:						
				if (trim(document.getElementById("<%=txtSubject.ClientID%>").value)=="")	   		
	   			{	   				
	   			    layer1.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   				layer1.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}				
				break;	
			case 2:						
				if (trim(document.getElementById("<%=txtName.ClientID%>").value)=="")	   		
	   			{	   				
	   			    layer2.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   				layer2.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}				
				break;
			case 3:						
				if(trim(document.getElementById("<%=txtEmial.ClientID%>").value)=="" || !(isEmail(document.getElementById("<%=txtEmial.ClientID%>").value)))	
	   			{	   				
	   			    layer3.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   				layer3.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}				
				break;
			case 4:	
			    if (trim(document.getElementById("<%=txtAddress.ClientID%>").value)=="")			
	   			{	   				
	   			    layer4.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   				layer4.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}				
				break;
			case 5:	
			    if( !chenphone(document.getElementById("<%=txtTel.ClientID%>").value))			
	   			{	   				
	   			    layer5.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   				layer5.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}				
				break;
			case 6:	
			    if(trim(document.getElementById("<%=txtContent.ClientID%>").value)=="" || document.getElementById("<%=txtContent.ClientID%>").value.length<10)			
	   			{	   				
	   			    layer6.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   				layer6.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}				
				break;	
		}
}
function checkform()	
{
if (trim(document.getElementById("<%=txtSubject.ClientID%>").value)=="")	
		{		
		alert("标题不能为空");		
		document.getElementById("<%=txtSubject.ClientID%>").focus();		
		return false;		
		}	
if (trim(document.getElementById("<%=txtContent.ClientID%>").value)=="")	
		{		
		alert("内容不能为空");		
		document.getElementById("<%=txtContent.ClientID%>").focus();		
		return false;		
		}
if (document.getElementById("<%=txtContent.ClientID%>").value.length<10)	
		{		
		alert("内容不能少于10个字");		
		document.getElementById("<%=txtContent.ClientID%>").focus();		
		return false;		
		}
if (trim(document.getElementById("<%=txtName.ClientID%>").value)=="")	
		{		
		alert("姓名不能为空");		
		document.getElementById("<%=txtName.ClientID%>").focus();		
		return false;		
		}			
if (trim(document.getElementById("<%=txtEmial.ClientID%>").value)=="")	
		{		
		alert("电子邮箱不能为空");		
		document.getElementById("<%=txtEmial.ClientID%>").focus();		
		return false;		
		}	
if (!isEmail(document.getElementById("<%=txtEmial.ClientID%>").value))	
		{		
		alert("电子邮箱格式有误");		
		document.getElementById("<%=txtEmial.ClientID%>").focus();		
		return false;		
		}	
if (trim(document.getElementById("<%=txtAddress.ClientID%>").value)=="")	
		{		
		alert("地址不能为空");		
		document.getElementById("<%=txtAddress.ClientID%>").focus();		
		return false;		
		}	
					
if (!chenphone(document.getElementById("<%=txtTel.ClientID%>").value))	
		{		
		alert("联系电话输入有误");		
		document.getElementById("<%=txtTel.ClientID%>").focus();		
		return false;		
		}	
return true;
}
</script>
 
 
<table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg" >
        <img src="Images/img2/11.jpg" width="234" height="637" />
      </td>
      <td width="682" align="center" valign="top">
          <table width="632" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><img src="Images/img2/04.jpg" width="682" height="179" /></td>
            </tr>
          </table>
            <table width="632" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="10"></td>
              </tr>
            </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="387" height="25" align="left" valign="middle">&nbsp;
                <font style="font-weight:bold; font-size:15px; color:#6E4B25;">留言反馈</font></td>
            <td width="245" align="right" valign="middle">
                <font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:#6E4B25;">
                <%=Master.HotelInfo.NameOfEnglish %></font>
            </td>
          </tr>
          <tr>
            <td height="1" colspan="2" bgcolor="#593E34"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20"></td>
          </tr>
        </table>        

        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top" style="line-height:20px">
            
                
            
            
   <asp:Panel ID="pnlMain" runat="server">
    <table border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
        <td height="30" align="center">
            <font color="#ff0000">尊敬的客户，请在这里将您们的宝贵建议反馈给我们，我们会及时回复，谢谢 ！
            </font>            
        </td>
      </tr>
      <tr>
        <td align="center" valign="top">
          <table border="0" cellspacing="2" cellpadding="1" align="center" >        
            <tr>
              <td width="22%" align="right">类　型：</td>
              <td style="padding-left:10px" width="78%"><div align="left">
                  <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="简单的留言" Value="简单的留言"></asp:ListItem>
                    <asp:ListItem Text="对网站的意见" Value="对网站的意见"></asp:ListItem>
                    <asp:ListItem Text="对公司的建议" Value="对公司的建议"></asp:ListItem>
                    <asp:ListItem Text="具有合作意向" Value="具有合作意向"></asp:ListItem>
                     <asp:ListItem Text="产品投诉" Value="产品投诉"></asp:ListItem>
                    <asp:ListItem Text="服务投诉" Value="服务投诉"></asp:ListItem>
                  </asp:DropDownList>
              </div></td>
            </tr>
            <tr>
              <td align="right">主　题：</td>
              <td style="padding-left:10px"><div align="left">
                  <asp:TextBox ID="txtSubject" runat="server"  class="LeaveWord" onblur="miss(1)" ></asp:TextBox>
                 <font color="#660000">*</font><div style="position: absolute;" id="layer1"></div>	
              </div></td>
            </tr>
            <tr runat="server" id="trName">
              <td align="right">姓　名：</td>
              <td style="padding-left:10px"><div align="left">
                 <asp:TextBox ID="txtName" runat="server"  class="LeaveWord"  onblur="miss(2)"></asp:TextBox>
                 <font color="#660000">*</font><div style="position: absolute;" id="layer2"></div>	
              </div></td>
            </tr>
            <tr runat="server" id="trEmail">
              <td align="right">E-Mail：</td>
              <td style="padding-left:10px"><div align="left">
               <asp:TextBox ID="txtEmial" runat="server"  class="LeaveWord" onblur="miss(3)"></asp:TextBox>
             <font color="#660000">*</font><div style="position: absolute;" id="layer3"></div>	
              </div></td>
            </tr>
            <tr runat="server" id="trAdd">
              <td align="right">地　址：</td>
              <td style="padding-left:10px"><div align="left">
                   <asp:TextBox ID="txtAddress" runat="server"  class="LeaveWord" onblur="miss(4)"></asp:TextBox>
                    <font color="#660000">*</font><div style="position: absolute;" id="layer4"></div>	
              </div></td>
            </tr>
            <tr runat="server" id="trTel">
              <td align="right">电　话：</td>
              <td style="padding-left:10px"><div align="left">
                <asp:TextBox ID="txtTel" runat="server"  class="LeaveWord" onblur="miss(5)"></asp:TextBox>
                <font color="#660000">*</font><div style="position: absolute;" id="layer5"></div>	
              </div></td>
            </tr>
            <tr>
              <td align="right">信　息：</td>
              <td style="padding-left:10px"><div align="left">
                <textarea cols="35" rows="7" id="txtContent" runat="server"  onblur="miss(6)" style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; BORDER-BOTTOM: #9d9d6c 1px solid;  BACKGROUND-COLOR: #ffffff" ></textarea>
                 <font color="#660000">*</font><div style="position: absolute;" id="layer6"></div>	
              </div></td>
            </tr>
            <tr>
              <td></td>
              <td height="30" style="padding-left:10px"><div align="left">
                  <asp:Button ID="Button1" runat="server" Text="提交信息" OnClick="Button1_Click" OnClientClick="return checkform();" CssClass="go-wenbenkuang" />
                [请注意适当使用<font color="#FF0000">Enter</font>键来换行] </div></td>
            </tr>          
        </table>
        </td>
      </tr>
    </table>
</asp:Panel>  
            
   <asp:Panel ID="pnlOK" runat="server" Height="200px" Width="700px" Visible="false" HorizontalAlign="center">
    <br />
    <fieldset style="width:300px">    
        <table width="100%" align="center">
            <tr>
                <td align="left" style="font-size:14px; font-weight:100;">
                    &nbsp;&nbsp;&nbsp;&nbsp;操作成功
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;<img src="../App_Themes/Images/103.gif" width="100%" height="1px" alt="" />
                </td>
            </tr>
            <tr>
                <td align="left">                    
                    &nbsp;&nbsp;&nbsp;&nbsp;<img src="img/succ.gif" align="top" />&nbsp;&nbsp;&nbsp;&nbsp;保存成功！
                </td> 
            </tr>
            <tr>
                <td align="right">                               
                    <input id="Button3" type="button" causesvalidation="false" value=" 确 定 " runat="server" style="font-size: 9pt;  color: #000000; background-color: #EAEAF4;height:20px;  " onMouseOver ="this.style.backgroundColor='#ffffff'" onMouseOut ="this.style.backgroundColor='#EAEAF4'" onserverclick="Button3_ServerClick" />        
                </td> 
            </tr>
        </table>
    </fieldset>
    </asp:Panel>
    
        
            </td>
          </tr>
        </table>
        <table width="634" height="92" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td>　</td>
          </tr>
      </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;">
        <img src="Images/img/45.jpg" width="87" height="251" />
      </td>
    </tr>
  </table>

   
            

</asp:Content>

