<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Destine.aspx.cs" Inherits="Destine" Title="Untitled Page" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js" charset="gb2312"></script>

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
				if (trim(document.getElementById("<%=txtRoomCount.ClientID%>").value)==""  || !IsNum(document.getElementById("<%=txtRoomCount.ClientID%>").value))	   		
	   			{	   				
	   			    layer1.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   				layer1.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}				
				break;

			case 2:			
			    if (trim(document.getElementById("<%=txtPeopleCount.ClientID%>").value)=="" || !IsNum(document.getElementById("<%=txtPeopleCount.ClientID%>").value))	   		
	   			{	   				
	   			    layer2.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>";
	   			}	   			
	   			else	   			
	   			{	   			
	   				layer2.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";
	   			}				
				break;		
			case 3:
			    if (trim(document.getElementById("<%=txtName.ClientID%>").value)=="")	   		
	   			{	   				
	   			    layer3.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   				layer3.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}				
				break;			
		case 5:
				if (trim(document.getElementById("<%=txtZip.ClientID%>").value)==""  || !IsNum(document.getElementById("<%=txtZip.ClientID%>").value) || document.getElementById("<%=txtZip.ClientID%>").value.length!=6)
				{	   				
	   			    layer5.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   			    layer5.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}								
				break;	
		
		case 6:
				if( !chenphone(document.getElementById("<%=txtTel.ClientID%>").value))				
				{	   				
	   			    layer6.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   			    layer6.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}							
				break;		
			
			case 7:
				if(! chenphone(document.getElementById("<%=txtFax.ClientID%>").value))					
				{	   				
	   			    layer7.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   			    layer7.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}							
								
				break;				
			case 8:isEmail
				if(trim(document.getElementById("<%=txtMail.ClientID%>").value)=="" || !(isEmail(document.getElementById("<%=txtMail.ClientID%>").value)))				
				{	   				
	   			    layer8.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   			    layer8.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}							
				break;				
			case 9:
				if(trim(document.getElementById("<%=txtFromWhere.ClientID%>").value)=="")				
				{	   				
	   			    layer9.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   			    layer9.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}								
				break;		
			case 11:
				if(document.getElementById("<%=txtFanshi.ClientID%>").value=="")				
				{	   				
	   			    layer11.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   			    layer11.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}								
				break;					
			case 12:
				if(form1.company2.value=="")				
				{	   				
	   			    layer12.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   			    layer12.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}		
				break;		
			case 22:
				if(document.getElementById("<%=txtFromDate.ClientID%>").value=="")				
				{	   				
	   			    divtxtFromDate.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   			    divtxtFromDate.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}		
				break;	
			case 23:
				if(document.getElementById("<%=txtToDate.ClientID%>").value=="")				
				{	   				
	   			    divtxtToDate.innerHTML="<img border='0' src='Images/img/error.gif' width='19' height='16'>"; 				
	   			}	   			
	   			else	   			
	   			{	   			
	   			    divtxtToDate.innerHTML="<img border='0' src='Images/img/ok.gif' width='19' height='16'>";	   			
	   			}		
				break;	
							
		}
}


function checkform()	
{
	if (trim(document.getElementById("<%=txtRoomCount.ClientID%>").value)=="")	
		{		
		alert("房间数不能为空");		
		document.getElementById("<%=txtRoomCount.ClientID%>").focus();		
		return false;		
		}		
    if (!IsNum(document.getElementById("<%=txtRoomCount.ClientID%>").value))	
		{		
		alert("房间数输入有误");		
		document.getElementById("<%=txtRoomCount.ClientID%>").focus();		
		return false;		
		}
	if (trim(document.getElementById("<%=txtPeopleCount.ClientID%>").value)=="")	
		{		
		alert("人数不能为空");		
		document.getElementById("<%=txtPeopleCount.ClientID%>").focus();		
		return false;		
		}	
    if (!IsNum(document.getElementById("<%=txtPeopleCount.ClientID%>").value))	
		{		
		alert("人数输入有误");			
		document.getElementById("<%=txtPeopleCount.ClientID%>").focus();		
		return false;		
		}	
		
		if (trim(document.getElementById("<%=txtFromDate.ClientID%>").value)=="")	
		{		
		alert("入住日期不能为空");		
		document.getElementById("<%=txtFromDate.ClientID%>").focus();		
		return false;
				
		}			
if (trim(document.getElementById("<%=txtToDate.ClientID%>").value)=="")	
		{		
		alert("结帐日期不能为空");		
		document.getElementById("<%=txtToDate.ClientID%>").focus();	
		return false;		
		}				
if (document.getElementById("<%=txtFromDate.ClientID%>").value>document.getElementById("<%=txtToDate.ClientID%>").value)			
		{		
		alert("结帐日期不能小于入住日期");		
		document.getElementById("<%=txtToDate.ClientID%>").focus();
		return false;		
		}					
									
if (trim(document.getElementById("<%=txtFanshi.ClientID%>").value)=="")	
		{		
		alert("结帐方式不能为空");		
		document.getElementById("<%=txtFanshi.ClientID%>").focus();		
		return false;		
		}	
		
		
	if (trim(document.getElementById("<%=txtName.ClientID%>").value)=="")	
		{		
		alert("姓名不能为空");		
		document.getElementById("<%=txtName.ClientID%>").focus();		
		return false;		
		}
		
//	if (trim(document.getElementById("<%=txtZip.ClientID%>").value)=="")	
//		{		
//		alert("邮编不能为空");		
//		document.getElementById("<%=txtZip.ClientID%>").focus();		
//		return false;		
//		}		
//	if (!IsNum(document.getElementById("<%=txtZip.ClientID%>").value) || document.getElementById("<%=txtZip.ClientID%>").value.length!=6)	
//		{		
//		alert("邮编格式输入有误");		
//		document.getElementById("<%=txtZip.ClientID%>").focus();	
//		return false;		
//		}	
		
if (!chenphone(document.getElementById("<%=txtTel.ClientID%>").value))	
		{		
		alert("联系电话输入有误");		
		document.getElementById("<%=txtTel.ClientID%>").focus();		
		return false;		
		}	
		
//if (!chenphone(document.getElementById("<%=txtFax.ClientID%>").value))	
//		{		
//		alert("传真输入有误");		
//		document.getElementById("<%=txtFax.ClientID%>").focus();		
//		return false;		
//		}					

if (trim(document.getElementById("<%=txtMail.ClientID%>").value)=="")	
		{		
		alert("电子邮箱不能为空");		
		document.getElementById("<%=txtMail.ClientID%>").focus();		
		return false;		
		}	
if (!isEmail(document.getElementById("<%=txtMail.ClientID%>").value))	
		{		
		alert("电子邮箱格式有误");		
		document.getElementById("<%=txtMail.ClientID%>").focus();		
		return false;		
		}	
		
		
if (trim(document.getElementById("<%=txtFromWhere.ClientID%>").value)=="")	
		{		
		alert("来自哪里不能为空");		
		document.getElementById("<%=txtFromWhere.ClientID%>").focus();		
		return false;		
		}			
		
		
	
return true;
}

</script>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
 <table width="1003" height="580" border="0" cellpadding="0" cellspacing="0"  background="Images/img/47.jpg"  bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top"  background="Images/img2/02.jpg"  ><img src="Images/img2/11.jpg" width="234" height="651" /></td>
      <td width="682" align="center" valign="top"><table width="632" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="Images/img2/12.jpg" width="682" height="179" /></td>
        </tr>
      </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="398" height="25" align="left" valign="middle">&nbsp;<font style="font-weight:bold; font-size:15px; color:6E4B25;">预订中心</font></td>
            <td width="234" align="right" valign="middle"><font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:6E4B25;"> 
                <%=Master.HotelInfo.NameOfEnglish %></font>
            </td>
          </tr>
          <tr>
            <td height="1" colspan="2" bgcolor="593E34"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20"></td>
          </tr>
        </table>
        <table width="626"  height="92"  border="0" cellpadding="0" cellspacing="0">
		<tr>
            <td align="left" valign="top"><img src="Images/img/72.jpg" width="626" height="41"></td>
          </tr>
          <tr>
             <td align="center" valign="top" background="Images/img/74.jpg">
         
                 
           <asp:Panel ID="pnlMain" runat="server" Visible="true" >               
			<table cellspacing="1" cellpadding="5" width="91%" align="center" border="0">
             <tbody>            
               <tr>
                 <td align="right" valign="middle">预定客房类型：</td>
                 <td colspan="2" align="left" valign="middle">   
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>                
                     <asp:DropDownList ID="ddlTypeName" runat="server" Width="160" AutoPostBack="true" OnSelectedIndexChanged="ddlTypeName_SelectedIndexChanged">
                     </asp:DropDownList> 
                      <font color="#660000">*</font>   
                      	             </ContentTemplate>
                        </asp:UpdatePanel>                
                    </td>
               </tr>               
			   <tr >
                 <td align="right" valign="top">房间预览：</td>                          
                 <td width="62%" height="80" align="left" valign="middle" nowrap  id="showSubPage">          
                              <asp:UpdatePanel ID="UpdatePanel2" runat="server"  UpdateMode="Always">
                 <ContentTemplate>   
                 <table width="328" height="104" border="0" cellpadding="0" cellspacing="5" >
                   <tr>
                     <td align="center" valign="middle" >
                         <asp:Image ID="imgRoom" runat="server" ImageUrl="" Height="94" Width="146" /> 
                   </td>
                   <td align="center" valign="middle" >  <table width="156" height="104" border="0" cellpadding="0" cellspacing="5" >
                   <tr>
                    <td width="36%" align="left" valign="middle" style="line-height:30px"><strong>门市价：</strong><font color="#FF0000">
                    <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label></font>(元)<br>
                   <strong>面&nbsp;积：</strong><font color="#FF0000">
                    <asp:Label ID="lblArea" runat="server" Text="Label"></asp:Label></font>(平方米)
                    </td>
                    </tr> </table>                            </td>                   
             </tr>
                </table> 	             </ContentTemplate>
                        </asp:UpdatePanel>   
                      </td>
			   </tr>
		
               <tr >
                 <td align="right" valign="middle">房 间 数：</td>
                 <td colspan="2" align="left" valign="middle"  >                                     
                 <input runat="server"  size="15" id="txtRoomCount" style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"  onblur="miss(1)"   />
                     <font color="#660000">*</font><div style="position: absolute;" id="layer1"></div>					</td>
               </tr>
               <tr>
                 <td align="right" valign="middle" >人　　数：</td>
                 <td colspan="2" align="left" valign="middle" ><input  size="15" runat="server"
                  id="txtPeopleCount" style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff" onBlur="miss(2)"  />
                     <font color="#660000">*					</font><div style="position: absolute;" id="layer2"></div></td>
               </tr>
               <tr id="trName" runat="server" >
                 <td width="32%" align="right" valign="middle" height="28" ><span 
                  class="1cs">您的姓名</span>：</td>
                 <td colspan="2" align="left" valign="middle" height="28" ><input 
                   size="35" runat="server" id="txtName" style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd" onBlur="miss(3)"   />
                   * <div style="position: absolute;" id="layer3"></div>                     </td>
               </tr>
               <tr id="trSex" runat="server" >
                 <td align="right" valign="middle">您的性别：</td>
                 <td colspan="2" align="left" valign="middle">
                     <asp:RadioButtonList ID="rdoBed" CssClass="inputCheck" runat="server" RepeatDirection="Horizontal" RepeatLayout="flow">
                        <asp:ListItem Text="先生" Value="男" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="小姐" Value="女"></asp:ListItem>
                    </asp:RadioButtonList> 
                  </td>
               </tr>			      
			      
                <tr id="trzip" runat="server" >
                 <td align="right" valign="middle">邮政编码：</td>
                 <td colspan="2" align="left" valign="middle">
					<input  size="35" runat="server" id="txtZip"  style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"   onblur="javascript:miss(5)" />          <div style="position: absolute;" id="layer5"></div>       </td>
               </tr>
               <tr id="trTel" runat="server" >
                 <td align="right" valign="middle">联系电话：</td>
                 <td colspan="2" align="left" valign="middle">
                 <input  size="35" id="txtTel" runat="server" style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"  onblur="javascript:miss(6)"/>                      
                 * 如:02034709708 &nbsp;&nbsp;&nbsp;
                 <div style="position: absolute;" id="layer6"></div></td>
               </tr>
               <tr id="trFax" runat="server" >
                 <td align="right" valign="middle">传　　真：</td>
                 <td colspan="2" align="left" valign="middle">
                    <input  size="35" runat="server" id="txtFax"  style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff" onBlur="javascript:miss(7)" />                    如:02034709708 &nbsp;&nbsp;&nbsp;      <div style="position: absolute;" id="layer7"></div>    </td>
               </tr>
               <tr id="trEmail" runat="server" >
                 <td align="right" valign="middle">电子邮箱：</td>
                 <td colspan="2" align="left" valign="middle">
                 <input  size="35" name="txtMail"  id="txtMail" runat="server" style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"  onblur="javascript:miss(8)"/>
                   * <div style="position: absolute;" id="layer8"></div></td>
               </tr>
               <tr id="trAdd" runat="server" >
                 <td align="right" valign="middle" height="27">您从哪里来：</td>
                 <td colspan="2" align="left" valign="middle" height="27"><input  id="txtFromWhere" size="35"  runat="server"
                  name="txtFromWhere"  style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff" onBlur="javascript:miss(9)" />
                   * <div style="position: absolute;" id="layer9"></div></td>
               </tr>
               <tr >
                 <td align="right" valign="middle">您入住日期：</td>
                 <td colspan="2" align="left" valign="middle">
                         <asp:TextBox ID="txtFromDate" onBlur="javascript:miss(22)" runat="server"  Text='<%# Bind("PublishDate") %>' CssClass="Wdate" onFocus="new WdatePicker(this,'%Y-%M-%D %h:%m:%s',true,'default')"></asp:TextBox>          
        
                 *  <div style="position: absolute;" id="divtxtFromDate"></div></td>
                 </tr>
                  <tr >
                    <td align="right" valign="middle">结算日期：</td>
               
                  <td colspan="2" align="left" valign="middle">
                    <asp:TextBox ID="txtToDate" runat="server" onBlur="javascript:miss(23)"  Text='<%# Bind("PublishDate") %>' CssClass="Wdate" onFocus="new WdatePicker(this,'%Y-%M-%D %h:%m:%s',true,'default')"></asp:TextBox>
                  *<div style="position: absolute;" id="divtxtToDate"></div></td>
               </tr>
               <tr >
                 <td align="right" valign="middle" nowrap="nowrap">结帐方式：</td>
                 <td colspan="2" align="left" valign="middle">
					<input  id="txtFanshi" size="35" runat="server"
                  name="txtFanshi"  style="border:1px solid #9d9d6c; FONT-SIZE: 12px; WIDTH: 114; HEIGHT: 16; BACKGROUND-COLOR: #ffffff" onBlur="miss(11)" />
                   *  <div style="position: absolute;" id="layer11"></div></td>
               </tr>
               <tr id="trCompanyName" runat="server" >
                 <td valign="middle" align="right">公司名称：</td>
                 <td colspan="2" align="left" valign="middle">
					<input  id="txtCompany" size="35"  runat="server"
                  name="company2" style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 271px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd" onBlur="miss(12)" />             <div style="position: absolute;" id="layer12"></div>    </td>
               </tr>
               <tr >
                 <td valign="top" align="right">请留下您的<b><font 
                  color="#663300">宝贵意见</font></b>：</td>
                 <td colspan="2" align="left" valign="middle"><textarea class="message_textarea" runat="server" id="txtContent" rows="3" cols="33" style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 271px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 95px; BACKGROUND-COLOR: #ffffff"></textarea>   <div style="position: absolute;" id="layer13"></div></td>
               </tr>
               <tr align="left" >
                 <td 
                  colspan="3"><table width="558" border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td colspan="3" align="left" valign="top"><img src="Images/img/75.jpg" width="561" height="7"></td>
                   </tr>
                   <tr>
                     <td width="58" align="center" valign="top" bgcolor="#680001"><img src="Images/img/77.jpg" width="35" height="33"></td>
                     <td width="479" align="left" valign="top" bgcolor="#680001" style="line-height:22px"><font color="#FFCC00"><strong>温馨提示:</strong><br>
                       ·订房将保留至下午六点，以上房间若无事先通知或在没有担保金或订金情况下，本酒店<br>
                       &nbsp;                 将不保证上述订房，如需取消订房，请预先通知本酒店。<br>
                       ·网上的酒店介绍、房态、价格等信息只作为参考，预订以最终电话、传真或短信确认为<br>
                       &nbsp;                 准。</font></td>
                     <td width="24" align="left" valign="top" bgcolor="#680001">　</td>
                   </tr>
                   <tr>
                     <td colspan="3" align="left" valign="top"><img src="Images/img/76.jpg" width="561" height="7"></td>
                   </tr>
                 </table></td>
               </tr>               
               <tr align="middle" >
                 <td height="43" colspan="3" align="center"><%--<input type="hidden" name="tHtml" />--%>
                     <input class="go-wenbenkuang" type="submit" value="确认订房" name="btnSend" onclick="return checkform();" runat="server" id="Submit1" onserverclick="Submit1_ServerClick"  />                   　　
                     <input class="go-wenbenkuang" type="reset" value=" 清 除 " name="btnClear" />  
                 </td>
               </tr>
             </tbody>
           </table>
             </asp:Panel>
              
   <asp:Panel ID="pnlOK" runat="server" Visible="false">
    <br />
    <fieldset style="width:300px">    
        <table cellspacing="1" cellpadding="5" width="91%" align="center" border="0">
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
          
          <tr>
            <td align="left" valign="top"><img src="Images/img/73.jpg" width="626" height="41"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20"></td>
          </tr>
        </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="Images/img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>


</asp:Content>

