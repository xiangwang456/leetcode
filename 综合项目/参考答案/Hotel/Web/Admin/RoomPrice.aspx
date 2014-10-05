<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RoomPrice.aspx.cs" Inherits="Admin_RoomPrice" Title="Untitled Page" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DetailsView ID="DetailsView1"  runat="server" DataKeyNames="Id" Height="50px" Width="95%" AutoGenerateRows="False" DataSourceID="ObjectDataSource1">
          <FieldHeaderStyle Width="100px" HorizontalAlign="Right" />     
        <Fields>
        
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
            
            <asp:TemplateField HeaderText="内容" SortExpression="Content">
                <EditItemTemplate>                    
                    <FTB:FreeTextBox ID="FreeTextBox1" runat="server" Text='<%# Bind("Content") %>'>
                    </FTB:FreeTextBox>                 
                </EditItemTemplate>
                <ItemTemplate><%--<%# GetCut(Eval("Content").ToString(),450) %>--%>
                    <asp:Label ID="Label1" runat="server" Text='<%# GetCut(Eval("Content").ToString(),3600) %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="时间" SortExpression="Sj">
                <EditItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("Sj") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Sj") %>'></asp:Label>
                </ItemTemplate>
                                 <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
                        
            <asp:TemplateField HeaderText="操作">
                <EditItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text=" 更 新 " CssClass="btn" CausesValidation="True" CommandName="Update"/>      
                    <asp:Button ID="Button2" runat="server" Text=" 取 消 " CssClass="btn" CausesValidation="False" CommandName="Cancel"/>    
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text=" 编 辑 " CssClass="btn" CausesValidation="False" CommandName="Edit"/>      
                </ItemTemplate>
                  <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
        </Fields>
        
    </asp:DetailsView>
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetPriceList"
        TypeName="Hotel.BLL.PriceListBLL" UpdateMethod="UpdatePrice">
        <UpdateParameters>
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

    
</asp:Content>

