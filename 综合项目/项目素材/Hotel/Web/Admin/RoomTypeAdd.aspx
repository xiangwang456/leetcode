<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="RoomTypeAdd.aspx.cs" Inherits="Admin_RoomAdd" Title="Untitled Page" %>


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
    <fieldset style=" width:95%">

        <table width="95%" style="background-color:White">
            <tr>
                <td width="100px" align="right">名称：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtTitle" ControlToValidate="txtTitle" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">缩略图位置：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:TextBox ID="txtPathXiao" runat="server" Width="300px"></asp:TextBox>
                    (请先上传图片)
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtPathXiao" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPathDa" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                <td width="100px" align="right">房屋价格：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:TextBox ID="txtPrice" runat="server" Width="100px"></asp:TextBox>(元)        
                    <asp:RequiredFieldValidator ID="rfvtxtPrice" ControlToValidate="txtPrice" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator> 
                    <ajaxToolkit:FilteredTextBoxExtender ID="fltTxtPrice" TargetControlID="txtPrice"  FilterType="Custom,Numbers"  ValidChars="." runat="server" />                     
                     &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      房屋面积：<asp:TextBox ID="txtArea" runat="server" Width="100px"></asp:TextBox>(平方米)       
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtArea" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>          
                    <ajaxToolkit:FilteredTextBoxExtender ID="flttxtArea" TargetControlID="txtArea" FilterType="Custom,Numbers"  ValidChars="." runat="server" />                     
                </td>
            </tr>
            <tr>
                <td width="100px" align="right">是否可以加床：
                </td>
                <td align="left" nowrap="nowrap">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:RadioButtonList ID="rdoBed" AutoPostBack="true" runat="server" RepeatDirection="Horizontal" RepeatLayout="flow" OnSelectedIndexChanged="rdoBed_SelectedIndexChanged">
                            <asp:ListItem Text="是" Value="1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="否" Value="0"></asp:ListItem>
                        </asp:RadioButtonList> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        加床价格：<asp:TextBox ID="txtAddBedPrice" runat="server" Width="100px"></asp:TextBox>   
                         <ajaxToolkit:FilteredTextBoxExtender ID="flttxtAddBedPrice" TargetControlID="txtAddBedPrice" FilterType="Custom,Numbers"  ValidChars="." runat="server" />                             
                      </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
             <tr>
                <td width="100px" align="right">内容：
                </td>
                <td align="left" nowrap="nowrap">
                    <FTB:FreeTextBox ID="txtContent" runat="server" Width="600" Height="140">
                    </FTB:FreeTextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtContent" ControlToValidate="txtContent" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
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

