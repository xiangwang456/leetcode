<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="G_AddGoodsStock.aspx.cs" Inherits="Admin_G_AddGoodsStock" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <br />
<%--    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>--%>
    <table width="100%" style=" text-align:left" >    
        <tr height="25">
            <td style=" font-size:15px;font-weight:bolder"  colspan="2" align="center">
                商品管理<br /><hr />
            </td>
        </tr> 
        <tr>
            <td>
                <img src="Images/img/calendar.gif" />
                <asp:Label ID="lblTime" runat="server" Text=""></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <img src="Images/img/user.gif" />
                操作者：<asp:Label ID="lblUserId" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                商品类别：
            <asp:DropDownList ID="ddlGoodsType" runat="server" AutoPostBack="True" CausesValidation="false" DataSourceID="ObjectDataSource2" DataTextField="GoodsTypeName" DataValueField="GoodsTypeId" OnSelectedIndexChanged="ddlGoodsType_SelectedIndexChanged">
            </asp:DropDownList><asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetGoodsTypeAll"
                TypeName="Hotel.BLL.GoodsTypeBLL"></asp:ObjectDataSource>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                
                
                商品名称：
            <asp:DropDownList ID="ddlGoodsName" runat="server" AutoPostBack="True" CausesValidation="false" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="Id" OnPreRender="ddlGoodsName_PreRender" /><asp:ObjectDataSource
                ID="ObjectDataSource1" runat="server" SelectMethod="GetGoodsNameAllByType" TypeName="Hotel.BLL.GoodsNameBLL">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlGoodsType" Name="goodsType" PropertyName="SelectedValue"
                        Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            
            进货单价
              <asp:TextBox ID="txtPrice" runat="server" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvtxtPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="*"></asp:RequiredFieldValidator>
              <ajaxToolkit:FilteredTextBoxExtender ID="fltTxtPrice" TargetControlID="txtPrice"  FilterType="Custom,Numbers"  ValidChars="." runat="server" />                     
              &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
              进货数量
               <asp:TextBox ID="txtCount" runat="server" ></asp:TextBox>         
                  <asp:RequiredFieldValidator ID="rfvtxtUp" runat="server" ControlToValidate="txtCount" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="txtCount"  FilterType="Numbers"   runat="server" />            
            </td>
        </tr>
        <tr>
            <td>
                单位：<asp:Label ID="lblUnit" runat="server" Text=""></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                当前库存：<asp:Label ID="lblStore" runat="server" Text=""></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                销售单价：<asp:Label ID="lblPrice" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    
    
    <asp:GridView ID="GridView1" runat="server" CssClass="GridBody" DataKeyNames="Id" AutoGenerateColumns="False" BackColor="White"  Width="100%" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound"  OnPreRender="GridView1_PreRender" DataSourceID="ObjectDataSource3">
    <Columns>
    
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
        
        <asp:TemplateField HeaderText="操作者" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("UserInfo.UserName") %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>     
        
      <asp:TemplateField HeaderText="摘要" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblType" runat="server" Text='<%# GetSummary((int)Eval("Type")) %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>           
        
      <asp:TemplateField HeaderText="借方" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblIn" runat="server" 
                    Text='<%# GetJi(Eval("InCount").ToString(),Eval("Type").ToString()) %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>  
        
      <asp:TemplateField HeaderText="货方" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblOut" runat="server" 
                Text='<%# GetDai(Eval("OutCount").ToString(),Eval("Type").ToString()) %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>  
        
      <asp:TemplateField HeaderText="库存数量" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblStoreCount" runat="server" Text='<%# Eval("StoreCount") %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>  
        
        <asp:TemplateField HeaderText="进货时间" SortExpression="Sj">
            <ItemTemplate>
                <asp:Label ID="lblCreateTime" runat="server" Text='<%# Eval("CreateTime","{0:yyyy-MM-dd}") %>'></asp:Label>
            </ItemTemplate>           
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>        
        
      <asp:TemplateField HeaderText="销售单价" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("GoodsName.Price","{0:C}") %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>       
        
      <asp:TemplateField HeaderText="进货单价" SortExpression="Name">
             <ItemTemplate>
                <asp:Label ID="lblInPrice" runat="server" Text='<%# Eval("InPrice","{0:C}") %>'></asp:Label>
            </ItemTemplate>                   
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>   

        <asp:TemplateField HeaderText="备注" SortExpression="Sj">
            <ItemTemplate>
                <asp:Label ID="lblStoreMark" runat="server" Text='<%# GetCut(Eval("StoreMark").ToString(),5) %>' ToolTip='<%# Eval("StoreMark") %>'></asp:Label>
            </ItemTemplate>           
            <HeaderStyle CssClass="GridHead" />           
        </asp:TemplateField>  
        
    </Columns>
      <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />    
</asp:GridView>

<asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetGoodsStoreAll"
    TypeName="Hotel.BLL.GoodsStoreBLL">
    <SelectParameters>
        <asp:ControlParameter ControlID="ddlGoodsName" DefaultValue="0" Name="nameId" PropertyName="SelectedValue"
            Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>

<table width="100%" style=" text-align:left" >    
    <tr>
        <td>
            简单备注：<asp:TextBox ID="txtMark" runat="server" Width="250"></asp:TextBox>
        </td>
    </tr> 
    <tr>
        <td>
            <asp:Button ID="btnSvae" runat="server" Text=" 保 存 " CssClass="btn" OnClick="btnSvae_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="导出Excel" CssClass="btn" OnClick="Button4_Click" CausesValidation="false" />
        </td>
    </tr>
</table>


<asp:Panel id="pnlNoFile" runat="server" Width="700px" Height="200px" Visible="false">
<BR /><FIELDSET style="WIDTH: 300px">
<TABLE width="100%"><TBODY><TR><TD style="FONT-WEIGHT: 100; FONT-SIZE: 14px" align=left>
&nbsp;&nbsp;&nbsp;&nbsp;提示信息 </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG height=1 alt="" src="../Admin/Images/img/103.gif" width="100%" /> </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG src="../Admin/Images/img/infod.gif" align=top />&nbsp;&nbsp;&nbsp;&nbsp;暂无信息！ </TD></TR><TR><TD align=right>
<asp:Button id="Button1" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " PostBackUrl="~/Admin/Index.aspx">
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 


    
    <asp:Label ID="lblNote" runat="server" Text="" ForeColor="red"></asp:Label>
<%--    
        </ContentTemplate>
    </asp:UpdatePanel>--%>
    
</asp:Content>

