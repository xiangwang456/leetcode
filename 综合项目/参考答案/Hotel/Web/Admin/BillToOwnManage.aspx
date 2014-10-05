<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="BillToOwnManage.aspx.cs" Inherits="Admin_BillToOwnManage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <asp:GridView ID="GridView1"  CssClass="GridBody" runat="server" BackColor="White" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Width="95%" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
        
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
            
            <asp:TemplateField HeaderText="房间号" SortExpression="RoomNumber">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RoomNumber") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("RoomNumber") %>' Width="100"></asp:Label>
                </ItemTemplate>
                 <ItemStyle CssClass="GridItem" />
                <HeaderStyle CssClass="GridHead" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="开始时间" SortExpression="BeginTime">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BeginTime") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("BeginTime") %>' Width="120"></asp:Label>
                </ItemTemplate>
                                <ItemStyle CssClass="GridItem" />
                <HeaderStyle CssClass="GridHead" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="结束时间" SortExpression="EndTime">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EndTime") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("EndTime") %>' Width="120"></asp:Label>
                </ItemTemplate>
                                <ItemStyle CssClass="GridItem" />
                <HeaderStyle CssClass="GridHead" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="维修原因" SortExpression="Cause">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Cause") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# GetCut(Eval("Cause").ToString(),10)%>' ToolTip='<%# Bind("Cause") %>'></asp:Label>
                </ItemTemplate>
                                <ItemStyle CssClass="GridItem" />
                <HeaderStyle CssClass="GridHead" />
            </asp:TemplateField>
       
            
            <asp:TemplateField HeaderText="操作员" SortExpression="Operator">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Operator") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Operator") %>'></asp:Label>
                </ItemTemplate>
                                <ItemStyle CssClass="GridItem" />
                <HeaderStyle CssClass="GridHead" />
            </asp:TemplateField>
            
        <asp:TemplateField HeaderText="详细">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "BillToOwnById.aspx?id={0}") %>'
                    Text="详细"></asp:HyperLink>
            </ItemTemplate>
            <ItemStyle CssClass="GridItem"  Width="100px" />
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        </Columns>
        <HeaderStyle CssClass="GridHead" HorizontalAlign="Center">
        </HeaderStyle>
        <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />   
    </asp:GridView>
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAll"
        TypeName="Hotel.BLL.BillToOwnBLL"></asp:ObjectDataSource>
</asp:Content>

