<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="RoomBookById.aspx.cs" Inherits="Admin_RoomBookById" Title="Untitled Page" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />

    <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" Width="95%"
        Height="50px" CssClass="GridBody">
         <FieldHeaderStyle Width="100px" HorizontalAlign="Right" />     
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="RoomType" HeaderText="房屋类型" SortExpression="RoomType" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="RoomCount" HeaderText="房间数" SortExpression="RoomCount" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="PeopleCount" HeaderText="人数" SortExpression="PeopleCount" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Zip" HeaderText="邮编" SortExpression="Zip" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Tel" HeaderText="电话" SortExpression="Tel" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Fax" HeaderText="传真" SortExpression="Fax" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="FromDate" HeaderText="入住日期" SortExpression="FromDate" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="ToDate" HeaderText="结账日期" SortExpression="ToDate" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="AccountType" HeaderText="结账方式" SortExpression="AccountType" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Company" HeaderText="所在公司" SortExpression="Company" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Advice" HeaderText="建义" SortExpression="Advice" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="返回列表" CssClass="btn" PostBackUrl="~/Admin/RoomBookManager.aspx"/>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
        </Fields>
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetRoomBookById"
        TypeName="Hotel.BLL.RoomBookBLL">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    
</asp:Content>

