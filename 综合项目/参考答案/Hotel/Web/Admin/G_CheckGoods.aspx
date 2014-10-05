<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="G_CheckGoods.aspx.cs" Inherits="Admin_G_CheckGoods" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

<div style=" width:90% ; background-color:White; height:500px"  runat="server" id="pnlMain">

    <table width="100%" id="msg">
        <tr height="30">
            <td style=" font-size:15px; font-weight:bolder" colspan="2">
                库存盘点
            </td>
        </tr>
         <tr height="30">
            <th align="right" width="40%">                
                 商品类别：
            </th>
            <td align="left" style="text-align:left">           
            <asp:DropDownList ID="ddlGoodsType" runat="server" AutoPostBack="True" CausesValidation="false" DataSourceID="ObjectDataSource2" DataTextField="GoodsTypeName" DataValueField="GoodsTypeId">
            </asp:DropDownList><asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetGoodsTypeAll"
                TypeName="Hotel.BLL.GoodsTypeBLL"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr height="30">
            <th align="right">                
                商品名称：         
            </th>
            <td align="left" style="text-align:left">                               
            <asp:DropDownList ID="ddlGoodsName" runat="server" AutoPostBack="True" CausesValidation="false" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="Id" OnPreRender="ddlGoodsName_PreRender"/><asp:ObjectDataSource
                ID="ObjectDataSource1" runat="server" SelectMethod="GetGoodsNameAllByType" TypeName="Hotel.BLL.GoodsNameBLL">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlGoodsType" Name="goodsType" PropertyName="SelectedValue"
                        Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            </td>
        </tr>  
         <tr height="30">
            <th align="right" width="40%">                
                 当前库存：
            </th>
            <td align="left" style="text-align:left">           
                <asp:Label ID="lblStoreCount" runat="server" Text=""></asp:Label>
            </td>
        </tr>   
     <tr height="30">
            <th align="right" width="40%">                
                 盘差数量：
            </th>
            <td align="left" style="text-align:left">           
                 <asp:TextBox ID="txtCount" runat="server" ></asp:TextBox>         
                 <asp:RequiredFieldValidator ID="rfvtxtUp" runat="server" ControlToValidate="txtCount" ErrorMessage="*"></asp:RequiredFieldValidator>
                 <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="txtCount"  FilterType="Custom,Numbers"  ValidChars="-" runat="server" />            
            </td>
        </tr>  
             <tr height="30">
            <th align="right" width="40%">                
                 操作时间：
            </th>
            <td align="left" style="text-align:left">           
                <asp:Label ID="lblCreateTime" runat="server" Text=""></asp:Label>
            </td>
        </tr>  
             <tr height="30">
            <th align="right" width="40%">                
                 操作员：
            </th>
            <td align="left" style="text-align:left">           
                 <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
            </td>
        </tr>  
         <tr height="30">
            <th align="right" width="40%">                
                 备注：
            </th>
            <td align="left" style="text-align:left">           
                <asp:TextBox ID="txtMark" runat="server" TextMode="multiLine" Rows="5" Columns="45"></asp:TextBox>
            </td>
        </tr> 
         <tr height="30">
            <th align="right" width="40%">                
                 注意：
            </th>
            <td align="left" style="text-align:left">           
                <asp:Label ID="Label1" runat="server" Text="盘差数量：盘赢是请输入整数：盘亏时请输入负数，零差（无差）的商品不用记录！" ForeColor="red"></asp:Label>
            </td>
        </tr> 
     <tr height="30">
            <th align="right" width="40%">                
                 操作：
            </th>
            <td align="left" style="text-align:left">           
                <asp:Button ID="Button1" runat="server" Text=" 保 存 " CssClass="btn" OnClick="Button1_Click" />
            </td>
        </tr> 
    </table>
</div>   

<asp:Panel id="pnlNoFile" runat="server" Width="700px" Height="200px" Visible="false">
<BR /><FIELDSET style="WIDTH: 300px">
<TABLE width="100%"><TBODY><TR><TD style="FONT-WEIGHT: 100; FONT-SIZE: 14px" align=left>
&nbsp;&nbsp;&nbsp;&nbsp;提示信息 </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG height=1 alt="" src="../Admin/Images/img/103.gif" width="100%" /> </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG src="../Admin/Images/img/infod.gif" align=top />&nbsp;&nbsp;&nbsp;&nbsp;操作成功！ </TD></TR><TR><TD align=right>
<asp:Button id="Button2" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " PostBackUrl="~/Admin/G_AddGoodsStock.aspx">
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

