<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="RoomTypeById.aspx.cs" ValidateRequest="false" Inherits="Admin_RoomById" Title="Untitled Page" %>


<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />

    <asp:DetailsView ID="DetailsView1"  CssClass="GridBody" runat="server" DataKeyNames="Id" BackColor="White" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" Width="95%"
        Height="50px" OnDataBound="DetailsView1_DataBound" OnItemUpdating="DetailsView1_ItemUpdating">
         <FieldHeaderStyle Width="100px" HorizontalAlign="Right" />     
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
            
            <asp:TemplateField HeaderText="名称" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' Width="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextBox1" ControlToValidate="TextBox1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                   <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="缩略图" SortExpression="Spic">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Spic") %>' Width="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextBox2" ControlToValidate="TextBox2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Spic") %>'></asp:Label>
                </ItemTemplate>
                   <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="大图" SortExpression="Pic">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Pic") %>' Width="300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextBox3" ControlToValidate="TextBox3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Pic") %>'></asp:Label>
                </ItemTemplate>
                   <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>    
             
            <asp:TemplateField HeaderText="价格" SortExpression="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextBox5" ControlToValidate="TextBox5" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <ajaxToolkit:FilteredTextBoxExtender ID="fltTextBox5" TargetControlID="TextBox5" FilterType="Custom,Numbers"  ValidChars="." runat="server" />                             
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>
                 <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="面积" SortExpression="Area">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Area") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTextBox6" ControlToValidate="TextBox6" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <ajaxToolkit:FilteredTextBoxExtender ID="fltTextBox6" TargetControlID="TextBox6" FilterType="Custom,Numbers"  ValidChars="." runat="server" />                             
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Area") %>'></asp:Label>
                </ItemTemplate>
                   <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="时间" SortExpression="Sj">
                <EditItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Sj") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Sj") %>'></asp:Label>
                </ItemTemplate>
                   <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
      
            <asp:TemplateField HeaderText="是否可以加床" SortExpression="IsAddBed">
                <EditItemTemplate>
                    <asp:HiddenField  ID="hfIsBed" runat="server" Value='<%# Eval("IsAddBed") %>'/>                   
                         <asp:RadioButtonList ID="rdoBed" runat="server" RepeatDirection="Horizontal" RepeatLayout="flow">
                            <asp:ListItem Text="是" Value="1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="否" Value="0"></asp:ListItem>
                        </asp:RadioButtonList>  
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# IsOrNot(Eval("IsAddBed").ToString()) %>'></asp:Label>
                </ItemTemplate>
                   <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="加床价格" SortExpression="AddBedPrice">
                <EditItemTemplate>
                               <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("AddBedPrice") %>'></asp:TextBox>
                            <ajaxToolkit:FilteredTextBoxExtender ID="fltTextBox9" TargetControlID="TextBox9" FilterType="Custom,Numbers"  ValidChars="." runat="server" />                             
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("AddBedPrice") %>'></asp:Label>
                </ItemTemplate>
                   <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="内容" SortExpression="Content">
                <EditItemTemplate>                    
                    <FTB:FreeTextBox ID="txtContent" runat="server" Width="600" Height="110" Text='<%# Bind("Content") %>'>
                    </FTB:FreeTextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtContent" ControlToValidate="txtContent" runat="server" ErrorMessage="请输入内容"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# GetCut(Eval("Content").ToString(),100) %>'></asp:Label>
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetRoomTypeById"
        TypeName="Hotel.BLL.RoomTypeBLL" UpdateMethod="UpdateRoom">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="spic" Type="String" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="area" Type="String" />
<%--            <asp:Parameter Name="isAddBed" Type="Int32" />--%>
            <asp:Parameter Name="addBedPrice" Type="Decimal" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

</asp:Content>