<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TeHuiById.aspx.cs" ValidateRequest="false" Inherits="Admin_TeHuiById" Title="Untitled Page" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />

    <asp:DetailsView ID="DetailsView1" DataKeyNames="Id" runat="server" BackColor="White" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" Width="95%"
        Height="50px" CssClass="GridBody">
         <FieldHeaderStyle Width="100px" HorizontalAlign="Right" />     
        <Fields>
        
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
            
            <asp:TemplateField HeaderText="特惠标题" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>' Width="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextBox1" ControlToValidate="TextBox1" runat="server" ErrorMessage="请输入特惠标题"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
                     <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="图片位置" SortExpression="Pic">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Pic") %>' Width="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextBox2" ControlToValidate="TextBox2" runat="server" ErrorMessage="请输入图片位置"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Pic") %>'></asp:Label>
                </ItemTemplate>
                     <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="特惠内容" SortExpression="Content">
                <EditItemTemplate>
                    <FTB:FreeTextBox ID="FreeTextBox1" runat="server" Text='<%# Bind("Content") %>' Height="250">
                    </FTB:FreeTextBox>
                    <asp:RequiredFieldValidator ID="rfvFreeTextBox1" ControlToValidate="FreeTextBox1" runat="server" ErrorMessage="请输入特惠内容"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# GetCut(Eval("Content").ToString(),100) %>'></asp:Label>
                </ItemTemplate>
                     <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="加入时间" SortExpression="Sj">
                <EditItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("Sj") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Sj") %>'></asp:Label>
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetFavourById"
        TypeName="Hotel.BLL.FavourBLL" UpdateMethod="UpdateFavour">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    
</asp:Content>

