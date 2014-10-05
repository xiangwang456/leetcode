<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="WineBarAdd.aspx.cs" Inherits="Admin_WineBarAdd" Title="Untitled Page" %>
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
    function CheckFileUpLoad2()
    {
        if(document.getElementById("<%=FileUpload2.ClientID%>").value=="")
        {
            alert("请先选择要上传的图片");
            document.getElementById("<%=FileUpload2.ClientID%>").focus();
            return false;
        }
        else
        {
            var mime=document.getElementById("<%=FileUpload2.ClientID%>").value;
            mime=mime.toLowerCase().substr(mime.lastIndexOf("."));
            if(mime !=".jpg" && mime !=".bmp" && mime !=".gif" && mime !=".png" && mime !=".jpeg")
            {
                 document.getElementById("<%=FileUpload2.ClientID%>").value="";
                 document.getElementById("<%=FileUpload2.ClientID%>").focus();
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
    <fieldset style=" width:95%">
        <table width="95%" style="background-color:White">
            <tr>
                <td width="100px" align="right">名称：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtTitle" ControlToValidate="txtTitle" runat="server" ErrorMessage="请输入标题"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">缩略图位置：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:TextBox ID="txtPathXiao" runat="server" Width="300px"></asp:TextBox>
                    (请先上传图片)
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtPathXiao" runat="server" ErrorMessage="请上传图片"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">上传缩略图：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="380px"/>                 
                    <input id="Submit1" type="submit" value=" 上 传 " class="btn" runat="server" onclick="return CheckFileUpLoad();" causesvalidation="false" onserverclick="Submit1_ServerClick"/> 
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">大图位置：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:TextBox ID="txtPathDa" runat="server" Width="300px"></asp:TextBox>
                    (请先上传图片)
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPathDa" runat="server" ErrorMessage="请上传图片"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">上传大图：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="380px"/>                 
                    <input id="Submit2" type="submit" value=" 上 传 " class="btn" runat="server" onclick="return CheckFileUpLoad2();" causesvalidation="false" onserverclick="Submit2_ServerClick" /> 
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">内容：
                </td>
                <td align="left" nowrap="nowrap">
                    <FTB:FreeTextBox ID="txtContent" runat="server" Width="600" Height="180">
                    </FTB:FreeTextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtContent" ControlToValidate="txtContent" runat="server" ErrorMessage="请输入内容"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right" style="height: 26px">&nbsp;
                </td>
                <td align="left">
                    <asp:Button ID="Button1" runat="server" Text=" 添 加 " CssClass="btn" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" type="reset" value=" 重 输 " class="btn" />
                </td>
            </tr>
        </table>
    </fieldset>
 </asp:Content>

