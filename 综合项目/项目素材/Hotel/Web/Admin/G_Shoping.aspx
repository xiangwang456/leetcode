<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="G_Shoping.aspx.cs" Inherits="Admin_G_Shoping" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div runat="server" id="pnlMain">
<table width="100%" style=" text-align:left" >    
    <tr height="25">
        <td style=" font-size:15px;font-weight:bolder"  colspan="2" align="center">
            商品零售<br /><hr />
        </td>
    </tr> 
    <tr>
        <td>
            在住客人：<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource1" DataTextField="RoomNum" DataValueField="RoomNum"></asp:DropDownList><asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetByState3"
                TypeName="Hotel.BLL.RoomNumberBLL"></asp:ObjectDataSource>
            
        </td>
    </tr>
</table>

 <asp:GridView ID="GridView1" runat="server" CssClass="GridBody" DataKeyNames="Id" AutoGenerateColumns="False" BackColor="White"  Width="100%" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound" DataSourceID="ObjectDataSource3" OnPreRender="GridView1_PreRender">
    <Columns>
    
        <asp:TemplateField HeaderText="Id" SortExpression="Id" Visible="False">
            <ItemTemplate>
                <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        
      <asp:TemplateField HeaderText="Id" SortExpression="Id" Visible="False">
            <ItemTemplate>
                <asp:Label ID="lblGoodsNameId" runat="server" Text='<%# Eval("GoodsName.Id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        
      <asp:TemplateField HeaderText="商品名称" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblGoodsName" runat="server" Text='<%# Eval("GoodsName.Name") %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>   
        
          <asp:TemplateField HeaderText="商品类型" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblGoodsTypeName" runat="server" Text='<%# Eval("GoodsName.GoodsType.GoodsTypeName") %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>  
        
      <asp:TemplateField HeaderText="销售单价" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("GoodsName.Price","{0:C}") %>'></asp:Label>
                <asp:Label ID="lblPrice2" runat="server" Text='<%# Eval("GoodsName.Price") %>' Visible="false"></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>   
        
      <asp:TemplateField HeaderText="当前库存" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblStoreCount" runat="server" Text='<%# Eval("StoreCount") %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>                

      <asp:TemplateField HeaderText="单位" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblUnit" runat="server" Text='<%# Eval("GoodsName.Unit") %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField> 
        
      <asp:TemplateField HeaderText="购买" SortExpression="Name">
             <ItemTemplate>
                 <asp:CheckBox ID="chkCount" runat="server" Text="放入购物车" AutoPostBack="true"/>
                 &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                 <asp:Label ID="lblCount" runat="server" Text="数量" Visible="false"></asp:Label>
                 <asp:TextBox ID="txtCount"  runat="server" Width="60" Visible="false"></asp:TextBox>
                 <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="txtCount"  FilterType="Numbers"   runat="server" />            
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField> 
        
    </Columns>
      <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />    
</asp:GridView>

<asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetGoodsStoreAllByShop"
    TypeName="Hotel.BLL.GoodsStoreBLL">
</asp:ObjectDataSource>

<table width="100%" style=" text-align:left" >    
    <tr height="25">
        <td>
           时间：<%=DateTime.Now.ToString()%>
           &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
           操作员：<asp:Label ID="lblUserId" runat="server" Text="Label"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
           备注：<asp:TextBox  ID="txtMark" runat="server" Width="200"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnTotal" runat="server" Text=" 计 算 " CssClass="btn" OnClick="btnTotal_Click" />
        </td>
    </tr> 
    <tr>
        <td>
            <asp:Label ID="lblNote" runat="server" Text="" ForeColor="red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            支付类型：<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Text="现金" Value="现金"></asp:ListItem>
                <asp:ListItem Text="支票" Value="支票"></asp:ListItem>
                <asp:ListItem Text="银行卡" Value="银行卡"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            客人支付： <asp:TextBox ID="txtCustomerPay" Text="0"  runat="server" Width="100" AutoPostBack="true" OnTextChanged="txtCustomerPay_TextChanged"></asp:TextBox>
              <ajaxToolkit:FilteredTextBoxExtender ID="fltTxtPrice" TargetControlID="txtCustomerPay"  FilterType="Custom,Numbers"  ValidChars="." runat="server" />     
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            总计： <asp:TextBox ID="txtTotal"  runat="server" Width="100"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            找零： <asp:TextBox ID="txtZhao"  runat="server" Width="100"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnSave" runat="server" Text=" 保 存 " CssClass="btn" OnClick="btnSave_Click" />
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
<asp:Button id="Button1" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " PostBackUrl="~/Admin/G_AddGoodsStock.aspx">
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

