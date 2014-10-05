<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="IntentAdd.aspx.cs" Inherits="Admin_IntentAdd" Title="Untitled Page" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript">
    function CheckFileUpLoad()
    {
        if(document.getElementById("<%=FileUpload1.ClientID%>").value=="")
        {
            alert("请先选择要上传的图片");
            document.getElementById("<%=FileUpload1.ClientID%>").focus();
            return false;
        }
        else
        {
            var mime=document.getElementById("<%=FileUpload1.ClientID%>").value;
            mime=mime.toLowerCase().substr(mime.lastIndexOf("."));
            if(mime !=".jpg" && mime !=".bmp" && mime !=".gif" && mime !=".png" && mime !=".jpeg")
            {
                 document.getElementById("<%=FileUpload1.ClientID%>").value="";
                 document.getElementById("<%=FileUpload1.ClientID%>").focus();
                 alert("仅支持图片格式");    
                 return false; 
            } 
            else
            {
                return true;
            }
        }
    }
</script>
<br />
    <fieldset style="width:95%">
        <table width="95%" style="background-color:White">
            <tr>
                <td width="100px" align="right">类型：
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="旅游景点" Value="旅游景点"></asp:ListItem>
                    <asp:ListItem Text="广州小吃" Value="广州小吃"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">名称：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtTitle" ControlToValidate="txtTitle" runat="server" ErrorMessage="请输入标题"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">图片位置：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:TextBox ID="txtPath" runat="server" Width="300px" ReadOnly="true"></asp:TextBox>
                    (请先上传图片)
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtPath" runat="server" ErrorMessage="请上传图片"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">上传图片：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="380px"/>                 
                    <input id="Submit1" type="submit" value=" 上 传 " class="btn" runat="server" onclick="return CheckFileUpLoad();" causesvalidation="false" onserverclick="Submit1_ServerClick" /> 
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">内容：
                </td>
                <td align="left" nowrap="nowrap">
                    <FTB:FreeTextBox ID="txtContent" runat="server" Height="220">
                    </FTB:FreeTextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtContent" ControlToValidate="txtContent" runat="server" ErrorMessage="请输入内容"></asp:RequiredFieldValidator>
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

