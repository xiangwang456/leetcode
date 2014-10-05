<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CustomerUpdateData.aspx.cs" Inherits="CustomerUpdateData" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <link href="css/Style.css" rel="stylesheet" type="text/css" />
<table width="95%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#CCCCCC" borderColorDark=#ffffff bgcolor="#F9F9F9">
            <tr>
              <td height="35" colspan="2" ><div align="center"><font color="#FF0000"><b>
                 会员资料修改</b></font></div></td>
            </tr>
            <tr>
              <td height="25" colspan="2" align="left"> 你现在拥有<font color="#ff0000"><b><%--<%=user.Point%>--%></b></font>点积分 ，
                    预存款：<font color="#ff0000"><b> <%--<%=string.Format("{0:F2}",user.Balance)%>--%></b></font> RMB
              </td>
            </tr>
            <tr>
              <td height="30" colspan="2"  align="left"><font color="#FF6600">会员基本资料</font></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >用户名:</td>
              <td width="74%"  align="left">
                  <asp:Label ID="lblLoginId" runat="server" Text="Label"></asp:Label>
              </td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >性别:</td>
              <td width="74%"  align="left">
                  <asp:RadioButton ID="rdobtnBoy" runat="server" Text="男" GroupName="a" />
                  <asp:RadioButton ID="rdobtnGril" runat="server" Text="女" GroupName="a" />
              </td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >E-mail:</td>
              <td width="74%"  align="left">
                  <asp:TextBox ID="txtEmail" runat="server" CssClass="UpdataData"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvtxtEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>     
                  <asp:RegularExpressionValidator ID="revtxtEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="格式有误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                  
              </td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >注册日期:</td>
              <td width="74%"  align="left">
                  <asp:TextBox ID="txtCreateDate" runat="server" ReadOnly="true"  CssClass="UpdataData"></asp:TextBox>
              </td>
            </tr>
            <tr>
              <td height="30" colspan="2"  align="left"><font color="#FF6600">会员补充资料</font></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" ><font class="medium">真实姓名:</font></td>
              <td width="74%"  align="left">
                  <asp:TextBox ID="txtRealName" runat="server"  CssClass="UpdataData"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="rfvtxtRealName" ControlToValidate="txtRealName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>     
              </td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right"><font class="medium">邮编:</font></td>
              <td width="74%"  align="left"> 
                <asp:TextBox ID="txtZip" runat="server"  CssClass="UpdataData"></asp:TextBox>   
                <asp:RequiredFieldValidator ID="rfvtxtZip" ControlToValidate="txtZip" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revtxtZip" runat="server"  ControlToValidate="txtZip"  ErrorMessage="格式有误" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>    
              </td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >联系电话:</td>
              <td width="74%"  align="left"> 
                <asp:TextBox ID="txtTel" runat="server"  CssClass="UpdataData"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtTel" ControlToValidate="txtTel" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revtxtTel" runat="server"  ControlToValidate="txtTel"
                            ErrorMessage="格式有误" ValidationExpression="\d{11}|((\(\d{3}\)|\d{3}-)?\d{8})"></asp:RegularExpressionValidator>  
              </td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >联系地址:</td>
              <td width="74%"  align="left"> 
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="4" Columns="40"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtAddress" ControlToValidate="txtAddress" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>  
              </td>
            </tr>
            <tr>
              <td width="26%" height="19" align="right">身份证编号:</td>
              <td width="74%"  align="left"> 
                <asp:TextBox ID="txtIdentityId" runat="server"  CssClass="UpdataData"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtIdentityId" ControlToValidate="txtIdentityId" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>  
                <asp:RegularExpressionValidator ID="revtxtIdentityId" ControlToValidate="txtIdentityId" runat="server" ErrorMessage="*" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
              </td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right">工作:</td>
              <td width="74%"  align="left"> <asp:TextBox ID="txtWork" runat="server"  CssClass="UpdataData"></asp:TextBox></td>
            </tr>
            <tr>
              <td align="right">
                  <asp:Button ID="Button1" runat="server" Text=" 修 改 " CssClass="go-wenbenkuang" OnClick="Button1_Click" />
              </td>
              <td align="left"><input class="go-wenbenkuang" type="reset" value=" 清 除 " name="btnClear" /> </td>
            </tr>
         </table>
</asp:Content>

