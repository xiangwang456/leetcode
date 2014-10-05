<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="RoomBookManager.aspx.cs" Inherits="Admin_RoomBookManager" Title="Untitled Page" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<br />
<table width="95%">
    <tr>
        <td align="left">
            转到类别：
       <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList><asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetRoomTypeAllByDDL"
            TypeName="Hotel.BLL.RoomTypeBLL"></asp:ObjectDataSource>                                
        </td>
    </tr>
</table>    

<asp:GridView ID="GridView1" runat="server" CssClass="GridBody" DataKeyNames="Id" AutoGenerateColumns="False" BackColor="White" DataSourceID="ObjectDataSource1" Width="95%" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound"  OnPreRender="GridView1_PreRender">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
        
        <asp:TemplateField HeaderText="姓名" SortExpression="Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>           
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="房间数" SortExpression="RoomCount">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RoomCount") %>' ></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("RoomCount") %>'></asp:Label>
            </ItemTemplate>         
            <HeaderStyle CssClass="GridHead"/>
        </asp:TemplateField>        
        
        <asp:TemplateField HeaderText="人数" SortExpression="PeopleCount">
            <EditItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("PeopleCount") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("PeopleCount") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="GridHead"/>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="入住日期" SortExpression="Click">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("FromDate") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("FromDate") %>'></asp:Label>
            </ItemTemplate>
                      <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField ShowHeader="False" HeaderText="删除">
            <ItemTemplate>
                <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="删除"></asp:LinkButton>
            </ItemTemplate>
                     <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="详细">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "RoomBookById.aspx?id={0}") %>'
                    Text="详细"></asp:HyperLink>
            </ItemTemplate>
                     <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
    </Columns>
    <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />   
</asp:GridView>

<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetRoomBookByType"
    TypeName="Hotel.BLL.RoomBookBLL" DeleteMethod="DeleteById">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" Name="typeId" PropertyName="SelectedValue"
            Type="Int32" />
    </SelectParameters>
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
<asp:Button id="Button1" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " PostBackUrl="~/Admin/RoomBookManager.aspx" >
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 


                        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

