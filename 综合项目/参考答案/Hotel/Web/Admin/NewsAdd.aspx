<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="NewsAdd.aspx.cs" ValidateRequest="false" Inherits="Admin_NewsAdd" Title="Untitled Page" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <fieldset style="width:95%">
        <table width="90%" style="background-color:White">
            <tr>
                <td width="100px" align="right">新闻类型：
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="员工互动" Value="员工互动"></asp:ListItem>
                    <asp:ListItem Text="员工精英" Value="员工精英"></asp:ListItem>
                    <asp:ListItem Text="酒店动态" Value="酒店动态"></asp:ListItem>
                    <asp:ListItem Text="员工风采" Value="员工风采"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">新闻标题：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtTitle" ControlToValidate="txtTitle" runat="server" ErrorMessage="请输入新闻标题"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">新闻内容：
                </td>
                <td align="left" nowrap="nowrap">
                    <FTB:FreeTextBox ID="txtContent" runat="server" Height="250">
                    </FTB:FreeTextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtContent" ControlToValidate="txtContent" runat="server" ErrorMessage="请输入新闻内容"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right" style="height: 26px">&nbsp;
                </td>
                <td align="left" style="height: 26px">
                    <asp:Button ID="Button1" runat="server" Text=" 添 加 " CssClass="btn" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" type="reset" value=" 重 输 " class="btn" />
                </td>
            </tr>
        </table>
    </fieldset>
</asp:Content>

