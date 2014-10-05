<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage2.master" CodeFile="CustomerUpdatePwd.aspx.cs" Inherits="CustomerUpdatePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>&nbsp;</p>
    <asp:Panel ID="pnlMain" runat="server" Height="200px" Width="700px">

        <table width="95%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#CCCCCC" borderColorDark=#ffffff bgcolor="#F9F9F9">
            <tr>
                <td style=" color:Red; font-size:14px; height: 18px;" align="center" colspan="2">
                    尊敬的用户，我们向您承诺：   
                </td>
            </tr>  
            <tr>
                <td style=" color:Red; font-size:14px" align="center" colspan="2">
                    以下信息将被严格保密，绝对不提供给第三方或用作他用。   
                </td>

            </tr>   
            <tr>
                <td style=" font-size:14px" align="right" width="40%">
                    用户名： 
                </td>
                <td align="left">
                    <asp:Label ID="lblLoginId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>    
            
            <tr>
                <td style=" font-size:14px" align="right" width="40%">
                    密码： 
                </td>
                <td align="left">
                    <asp:TextBox ID="txtOldPwd" runat="server" TextMode="Password"  CssClass="UpdataData"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtOldPwd" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>  
            
            <tr>
                <td style=" font-size:14px" align="right" width="40%">
                    新密码： 
                </td>
                <td align="left">
                  <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"  CssClass="UpdataData"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtNewPwd" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>  
            
            <tr>
                <td style=" font-size:14px" align="right" width="40%">
                    确认新密码： 
                </td>
                <td align="left">
                   <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password"  CssClass="UpdataData"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtConfirmPwd" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtConfirmPwd" ControlToValidate="txtNewPwd" runat="server" ErrorMessage="两次密码输入不一致"></asp:CompareValidator>
                </td>
            </tr>  
      
             <tr>
                <td style=" font-size:14px" colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text=" 确 认 "  style="font-size: 9pt;  color: #000000; background-color: #EAEAF4;height:20px;  " onMouseOver ="this.style.backgroundColor='#ffffff'" onMouseOut ="this.style.backgroundColor='#EAEAF4'" title="确定" OnClick="Button1_Click" />
                </td>
            </tr> 
        </table>
       </asp:Panel>    
    
<asp:Panel ID="pnlOK" runat="server" Height="200px" Width="700px" Visible="false">
    <br />
    <fieldset style="width:300px">    
        <table width="100%">
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
       
</asp:Content>
