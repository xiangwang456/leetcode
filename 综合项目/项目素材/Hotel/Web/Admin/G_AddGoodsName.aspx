<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="G_AddGoodsName.aspx.cs" Inherits="Admin_G_AddGoodsName" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table width="80%" >
    
        <tr height="25">
            <td style=" font-size:15px;font-weight:bolder"  colspan="2" align="center">
                品名设置<br /><hr />
            </td>
        </tr> 
    </table>
    <table width="80%" id="msg">
        <tr  height="25">
            <th style="text-align:right">
                商品品名：
            </th>
            <td style="text-align:left">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtTitle" runat="server" ErrorMessage="*" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </td>
        </tr>    
         <tr height="25">
            <th style="text-align:right">
                销售单价：
            </th>
            <td style="text-align:left">
                <asp:TextBox ID="txtPrice" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="*"></asp:RequiredFieldValidator>
                <ajaxToolkit:FilteredTextBoxExtender ID="fltTxtPrice" TargetControlID="txtPrice"  FilterType="Custom,Numbers"  ValidChars="." runat="server" />                     
            </td>
        </tr>    
         <tr height="25">
            <th style="text-align:right">
                单位：
            </th>
            <td style="text-align:left">
               <asp:TextBox ID="txtUnit" runat="server" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="rfvtxtUnit" runat="server" ControlToValidate="txtUnit" ErrorMessage="*"></asp:RequiredFieldValidator>
              
            </td>
        </tr> 
         <tr height="25">
            <th style="text-align:right">
                商品分类：
            </th>
            <td style="text-align:left">
                <asp:DropDownList ID="ddlGoodsType" Width="150" runat="server" DataSourceID="ObjectDataSource2" DataTextField="GoodsTypeName" DataValueField="GoodsTypeId">
                </asp:DropDownList><asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetGoodsTypeAll"
                TypeName="Hotel.BLL.GoodsTypeBLL"></asp:ObjectDataSource>
            </td>
        </tr> 
         <tr height="25">
            <th style="text-align:right">
                预警上限：
            </th>
            <td style="text-align:left">
                <asp:TextBox ID="txtUp" runat="server" ></asp:TextBox>         
                  <asp:RequiredFieldValidator ID="rfvtxtUp" runat="server" ControlToValidate="txtUp" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="txtUp"  FilterType="Numbers"   runat="server" />          
            </td>
        </tr> 
         <tr height="25">
            <th style="text-align:right">
                预警下限：
            </th>
            <td style="text-align:left">
                <asp:TextBox ID="txtDown" runat="server" ></asp:TextBox>        
                  <asp:RequiredFieldValidator ID="rfvtxtDown" runat="server" ControlToValidate="txtDown" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" TargetControlID="txtDown"  FilterType="Numbers"   runat="server" />                
            </td>
        </tr> 
         <tr height="25">
            <th style="text-align:right">
                操作：
            </th>
            <td style="text-align:left">
                <asp:Button ID="btnSave" runat="server" Text=" 保 存 " CssClass="btn" OnClick="btnSave_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;               
                <asp:Button ID="btnBack" runat="server" Text=" 返 回 " CssClass="btn" CausesValidation="false" PostBackUrl="~/Admin/G_GoodsManage.aspx" />
            </td>
        </tr> 
    </table>
    <asp:Label ID="lblNote" runat="server" Text="" ForeColor="red"></asp:Label>
</asp:Content>

