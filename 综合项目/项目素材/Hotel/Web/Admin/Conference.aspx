<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Conference.aspx.cs" ValidateRequest="false" Inherits="Admin_Conference" Title="Untitled Page" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />

    <asp:DetailsView ID="DetailsView1" CssClass="GridBody"  runat="server" BackColor="White" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" DataKeyNames="Id" Width="95%"
        Height="50px" >
         <FieldHeaderStyle Width="100px" HorizontalAlign="Right" />     
        <Fields>
        
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />           
           
           
            <asp:TemplateField HeaderText="内容" SortExpression="Content">
                <EditItemTemplate>
                    <FTB:FreeTextBox ID="FreeTextBox1" runat="server" Text='<%# Bind("Content") %>' Height="300">
                    </FTB:FreeTextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# GetCut(Eval("Content").ToString(),5000) %>'></asp:Label>
                </ItemTemplate>
                  <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>            
           
            <asp:TemplateField HeaderText="创建时间" SortExpression="CreateDate">
                <EditItemTemplate>
                   <asp:Label ID="Label5" runat="server" Text='<%# Eval("Sj") %>'></asp:Label>
                </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Sj") %>'></asp:Label>
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetConference"
        TypeName="Hotel.BLL.ConferenceBLL" UpdateMethod="UpdateConference">
        <UpdateParameters>
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

