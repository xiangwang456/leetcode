<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="IntentById.aspx.cs" ValidateRequest="false" Inherits="Admin_IntentById" Title="Untitled Page" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:DetailsView ID="DetailsView1"   CssClass="GridBody" runat="server" BackColor="White" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" DataKeyNames="Id" Width="95%"
        Height="50px" OnDataBound="DetailsView1_DataBound" OnItemUpdating="DetailsView1_ItemUpdating" >
         <FieldHeaderStyle Width="100px" HorizontalAlign="Right" />     
        <Fields>
        
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
            
            <asp:TemplateField HeaderText="类型" SortExpression="Style">
                <EditItemTemplate>
                    <asp:HiddenField  ID="hfStyle" runat="server" Value='<%# Eval("Type") %>'/>
                    <asp:DropDownList ID="DropDownList1" runat="server" >
                        <asp:ListItem Text="旅游景点" Value="旅游景点"></asp:ListItem>
                        <asp:ListItem Text="广州小吃" Value="广州小吃"></asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                </ItemTemplate>
               <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="名称" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Title") %>' Width="300px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
                  <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="图片位置" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Pic") %>' Width="300px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Pic") %>'></asp:Label>
                </ItemTemplate>
                  <ItemStyle HorizontalAlign="Left"  />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="内容" SortExpression="Content">
                <EditItemTemplate>
                    <FTB:FreeTextBox ID="FreeTextBox1" runat="server" Text='<%# Bind("Content") %>' Height="230">
                    </FTB:FreeTextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# GetCut(Eval("Content").ToString(),210) %>'></asp:Label>
                </ItemTemplate>
                  <ItemStyle HorizontalAlign="Left"/>
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetIntentById"
        TypeName="Hotel.BLL.IntentBLL" UpdateMethod="UpdateIntent">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
<%--            <asp:Parameter Name="type" Type="String" />--%>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

