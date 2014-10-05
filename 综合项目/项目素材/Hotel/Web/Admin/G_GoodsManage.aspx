<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="G_GoodsManage.aspx.cs" Inherits="Admin_G_AddGoods" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<table width="95%">
    <tr>
        <td align="left">
            转到类别：
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="GoodsTypeName" DataValueField="GoodsTypeId">
            </asp:DropDownList><asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetGoodsTypeAll"
                TypeName="Hotel.BLL.GoodsTypeBLL"></asp:ObjectDataSource>
        </td>
        <td align="right">
            <asp:Button ID="Button2" runat="server" Text="添加商品" CssClass="btn" PostBackUrl="~/Admin/G_AddGoodsName.aspx" />
        </td>
    </tr>
</table>    

<asp:GridView ID="GridView1" runat="server" CssClass="GridBody" DataKeyNames="Id" AutoGenerateColumns="False" BackColor="White" DataSourceID="ObjectDataSource1" Width="95%" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound"  OnPreRender="GridView1_PreRender">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
        
        <asp:TemplateField HeaderText="品名" SortExpression="Style">
            <EditItemTemplate>
                <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>            
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="销售单价" SortExpression="Title">
            <EditItemTemplate>
                <asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price") %>' ></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
            </ItemTemplate>          
            <HeaderStyle CssClass="GridHead"/>
        </asp:TemplateField>        
        
        <asp:TemplateField HeaderText="单位" SortExpression="CreateDate">
            <EditItemTemplate>
                <asp:Label ID="txt" runat="server" Text='<%# Bind("Unit") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="lblUnit" runat="server" Text='<%# Eval("Unit") %>'></asp:Label>
            </ItemTemplate>          
            <HeaderStyle CssClass="GridHead"/>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="预警上限" SortExpression="Click">
            <EditItemTemplate>
                <asp:TextBox ID="txtOnLine" runat="server" Text='<%# Bind("OnLine") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="lblOnLine" runat="server" Text='<%# Bind("OnLine") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle CssClass="GridItem"  Width="100px" />
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="预警下限" SortExpression="Click">
            <EditItemTemplate>
                <asp:TextBox ID="txtOffLine" runat="server" Text='<%# Bind("OffLine") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="lblOffLine" runat="server" Text='<%# Bind("OffLine") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle CssClass="GridItem"  Width="100px" />
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField ShowHeader="False" HeaderText="删除">
            <ItemTemplate>
                <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="删除"></asp:LinkButton>
            </ItemTemplate>        
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>

        
    </Columns> 
    <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />   
</asp:GridView>

<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetGoodsNameAllByType"
    TypeName="Hotel.BLL.GoodsNameBLL" DeleteMethod="DeleteById">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="goodsType" PropertyName="SelectedValue"
            Type="Int32" />
    </SelectParameters>
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
</asp:ObjectDataSource>

<asp:Panel id="pnlNoFile" runat="server" Width="700px" Height="200px" Visible="false">
<BR /><FIELDSET style="WIDTH: 300px">
<TABLE width="100%"><TBODY><TR><TD style="FONT-WEIGHT: 100; FONT-SIZE: 14px" align=left>
&nbsp;&nbsp;&nbsp;&nbsp;提示信息 </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG height=1 alt="" src="../Admin/Images/img/103.gif" width="100%" /> </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG src="../Admin/Images/img/infod.gif" align=top />&nbsp;&nbsp;&nbsp;&nbsp;暂无信息！ </TD></TR><TR><TD align=right>
<asp:Button id="Button1" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " >
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 

</asp:Content>

