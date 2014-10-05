<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="HealthFunById.aspx.cs" Inherits="Admin_HealthFunById" Title="Untitled Page" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />

    <asp:DetailsView ID="DetailsView1"   CssClass="GridBody" DataKeyNames="Id" runat="server" BackColor="White" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" Width="95%"
        Height="50px" OnItemUpdating="DetailsView1_ItemUpdating" OnDataBound="DetailsView1_DataBound">
         <FieldHeaderStyle Width="100px" HorizontalAlign="Right" />     
        <Fields>
        
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
            
            <asp:TemplateField HeaderText="类型" SortExpression="Style">
                <EditItemTemplate>
                    <asp:HiddenField  ID="hfStyle" runat="server" Value='<%# Eval("Style") %>'/>
                    <asp:DropDownList ID="DropDownList1" runat="server" >
                        <asp:ListItem Text="健身中心" Value="健身中心"></asp:ListItem>
                        <asp:ListItem Text="水疗馆" Value="水疗馆"></asp:ListItem>
                        <asp:ListItem Text="泰国风情KTV" Value="泰国风情KTV"></asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Style") %>'></asp:Label>
                </ItemTemplate>
                     <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="更新时间" SortExpression="Sj">
                <EditItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("Sj") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Sj") %>'></asp:Label>
                </ItemTemplate>
                     <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
     
            
            <asp:TemplateField HeaderText="内容" SortExpression="Content">
                <EditItemTemplate>
                    <FTB:FreeTextBox ID="FreeTextBox1" runat="server" Text='<%# Bind("Content") %>' Height="250">
                    </FTB:FreeTextBox>
                    <asp:RequiredFieldValidator ID="rfvFreeTextBox1" ControlToValidate="FreeTextBox1" runat="server" ErrorMessage="请输入内容"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# GetCut(Eval("Content").ToString(),190) %>'></asp:Label>
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetHealthFunById"
        TypeName="Hotel.BLL.HealthFunBLL" UpdateMethod="Update">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
    <%--        <asp:Parameter Name="style" Type="String" />--%>
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    
</asp:Content>

