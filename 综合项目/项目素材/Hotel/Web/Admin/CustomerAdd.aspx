<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerAdd.aspx.cs" Inherits="Admin_AddCustomer" Title="Untitled Page" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
     <fieldset style="width:95%">
        <table width="90%" style="background-color:White">
            <tr>
                <td width="100px" align="right">登录名：
                </td>
                <td align="left">
                    <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                        <ContentTemplate>
                            <asp:TextBox ID="txtLoginId" runat="server" AutoPostBack="true" Width="200px" OnTextChanged="txtLoginId_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtTitle" ControlToValidate="txtLoginId" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblLoginId" runat="server" Text="" ForeColor="red"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>                    
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">密码：
                </td>
                <td align="left" nowrap="nowrap">
                     <asp:TextBox ID="txtPwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvtxtPwd" ControlToValidate="txtPwd" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">确认密码：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:TextBox ID="txtComfirmPwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvtxtComfirmPwd" ControlToValidate="txtComfirmPwd" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtComfirmPwd" ControlToCompare="txtPwd" ErrorMessage="两次密码输入不一致"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">Email：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:UpdatePanel runat="server" ID="UpdatePanel2">
                        <ContentTemplate>
                            <asp:TextBox ID="txtEmail" AutoPostBack="true" runat="server" Width="200px" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revtxtEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="格式有误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:Label ID="lblEmail" runat="server" Text="" ForeColor="red"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>   
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">性别：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server"  RepeatDirection="Horizontal">
                        <asp:ListItem Text='<img src="Images/img/Male.gif"  align="middle"  />' Value="男" Selected="True"></asp:ListItem>
                        <asp:ListItem Text='<img src="Images/img/Female.gif"  align="middle"  />' Value="女"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">真实姓名：
                </td>
                <td align="left" nowrap="nowrap">
                     <asp:TextBox ID="txtRealName" runat="server" Width="200px" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvtxtRealName" ControlToValidate="txtRealName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">电话：
                </td>
                <td align="left" nowrap="nowrap">
                     <asp:TextBox ID="txtTel" runat="server" Width="200px" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvtxtTel" ControlToValidate="txtTel" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>                   
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">地址：
                </td>
                <td align="left" nowrap="nowrap">                 
                     <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Columns="35" Rows="4" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvtxtAddress" ControlToValidate="txtAddress" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">邮编：
                </td>
                <td align="left" nowrap="nowrap">
                     <asp:TextBox ID="txtZip" runat="server" Width="200px" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvtxtZip" ControlToValidate="txtZip" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="revtxtZip" ControlToValidate="txtZip" runat="server" ErrorMessage="格式有误" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">身份证号码：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:UpdatePanel runat="server" ID="UpdatePanel3">
                        <ContentTemplate>
                             <asp:TextBox ID="txtIdentityCardNo" AutoPostBack="true" runat="server" Width="200px" OnTextChanged="txtIdentityCardNo_TextChanged" ></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvtxtIdentityCardNo" ControlToValidate="txtIdentityCardNo" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revIdentityCardNo" ControlToValidate="txtIdentityCardNo" runat="server" ErrorMessage="格式有误" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
                             <asp:Label ID="lblIdentityId" runat="server" Text="" ForeColor="red"></asp:Label>
                         </ContentTemplate>
                    </asp:UpdatePanel>   
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">工作：
                </td>
                <td align="left" nowrap="nowrap">
                     <asp:TextBox ID="txtWork" runat="server" Width="200px" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvtxtWork" ControlToValidate="txtWork" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>                 
                </td>
            </tr>
            <tr>
                <td width="100px" align="right" style="height: 26px">&nbsp;
                </td>
                <td align="left" style="height: 26px">
                    <asp:Button ID="Button1" runat="server" Text=" 添 加 " CssClass="btn" OnClick="Button1_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" type="reset" value=" 重 输 " class="btn" />
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>

