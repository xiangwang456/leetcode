<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="RoomTypeManager.aspx.cs" Inherits="Admin_RoomManager" Title="Untitled Page" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />

<asp:GridView ID="GridView1" runat="server" CssClass="GridBody" DataKeyNames="Id" AutoGenerateColumns="False" BackColor="White" DataSourceID="ObjectDataSource1" Width="95%" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
    <Columns>
    
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
        
        <asp:TemplateField HeaderText="名称" SortExpression="Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>
              <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="价格" SortExpression="Price">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price","{0:F2}") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="面积" SortExpression="Area">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Area") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Area") %>'></asp:Label>
            </ItemTemplate>           
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="时间" SortExpression="Sj">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Sj") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Sj","{0:yyyy-MM-dd}") %>'></asp:Label>
            </ItemTemplate>          
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
<%--        <asp:TemplateField HeaderText="是否可以加床" SortExpression="IsAddBed">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("IsAddBed") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# IsOrNot(Eval("IsAddBed").ToString()) %>'></asp:Label>
            </ItemTemplate>
                    <ItemStyle CssClass="GridItem"  Width="100px" />
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="加床价格" SortExpression="AddBedPrice">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("AddBedPrice") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("AddBedPrice","{0:F2}") %>'></asp:Label>
            </ItemTemplate>
                    <ItemStyle CssClass="GridItem"  Width="100px" />
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>--%>
           
        <asp:TemplateField ShowHeader="False" HeaderText="删除">
            <ItemTemplate>
                <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="删除"></asp:LinkButton>
            </ItemTemplate>         
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="详细">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "RoomTypeById.aspx?id={0}") %>'
                    Text="详细"></asp:HyperLink>
            </ItemTemplate>           
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        
    </Columns>
      <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />    
</asp:GridView>

<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetRoomTypeAll"
    TypeName="Hotel.BLL.RoomTypeBLL" DeleteMethod="DeleteById">
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
<asp:Button id="Button1" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " PostBackUrl="~/Admin/Index.aspx">
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 


</asp:Content>

