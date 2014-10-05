<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerById.aspx.cs" Inherits="Admin_CustomerById" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <br />

    <asp:DetailsView ID="DetailsView1"   CssClass="GridBody" runat="server" BackColor="White" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" Width="95%"
        Height="50px">
 
         <FieldHeaderStyle Width="100px" HorizontalAlign="Right" />   
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="LoginId" HeaderText="登陆名" SortExpression="LoginId" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="RealName" HeaderText="真实姓名" SortExpression="RealName" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>            
            <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Work" HeaderText="工作" SortExpression="Work" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>            
            <asp:BoundField DataField="Zip" HeaderText="邮编" SortExpression="Zip" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>        
            <asp:BoundField DataField="LineCount" HeaderText="上线次数" SortExpression="LineCount" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            
            <asp:TemplateField HeaderText="卡类型" SortExpression="Tel">
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Card.Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="CardNo" HeaderText="卡号" SortExpression="CardNo" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="IdentityCardNo" HeaderText="身份证号码" SortExpression="IdentityCardNo" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="LastOnLineTime" HeaderText="最后一次登录时间" SortExpression="LastOnLineTime" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Tel" HeaderText="电话" SortExpression="Tel" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            
            <asp:TemplateField HeaderText="卡类型" SortExpression="Tel">
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" PostBackUrl="~/Admin/CustomerManager.aspx" runat="server" Text="返回列表"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            
            
        </Fields>
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetCustomerById"
        TypeName="Hotel.BLL.CustomerBLL">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    
</asp:Content>

