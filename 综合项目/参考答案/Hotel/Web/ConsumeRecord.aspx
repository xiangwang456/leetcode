<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ConsumeRecord.aspx.cs" Inherits="ConsumeRecord" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="pnlNoLoginErr" runat="server" height="500" Width="700" BackColor="white" BackImageUrl="Images/img/104.jpg">
    <br />    <br />    <br />    <br />
    <fieldset style="width:300px">    
        <table width="100%" style="background-color:White; background-image:url(Images/img/104.jpg)">
            <tr>
                <td align="left" style="font-size:14px; font-weight:100;">
                    &nbsp;&nbsp;&nbsp;&nbsp;提示信息                   
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;&nbsp;&nbsp;&nbsp;<img src="../App_Themes/Images/103.gif" width="100%" height="1px" alt="" />
                </td>
            </tr>
            <tr>
                <td align="left">                    
                    &nbsp;&nbsp;&nbsp;&nbsp;<img src="Admin/Images/img/infod.gif" align="top" />&nbsp;&nbsp;&nbsp;&nbsp;暂无消费记录！
                </td> 
             
            </tr>
            <tr>
                <td align="right">                    
                    <asp:Button ID="Button1" runat="server" Text=" 确 定 " PostBackUrl="~/CustomerShowData.aspx" CausesValidation="false" CssClass="go-wenbenkuang"  />
                </td> 
            </tr>
        </table>
    </fieldset>
</asp:Panel>
</asp:Content>

