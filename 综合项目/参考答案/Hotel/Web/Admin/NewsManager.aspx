<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="NewsManager.aspx.cs" Inherits="Admin_NewsManager" Title="Untitled Page" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<br />
<table width="95%">
    <tr>
        <td align="left">
            转到类别：
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
                <asp:ListItem Text="所有新闻" Value=""></asp:ListItem>
                <asp:ListItem Text="员工互动" Value="员工互动"></asp:ListItem>
                <asp:ListItem Text="员工精英" Value="员工精英"></asp:ListItem>
                <asp:ListItem Text="酒店动态" Value="酒店动态"></asp:ListItem>
                <asp:ListItem Text="员工风采" Value="员工风采"></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
</table>    

<asp:GridView ID="GridView1" runat="server" CssClass="GridBody" DataKeyNames="Id" AutoGenerateColumns="False" BackColor="White" DataSourceID="ObjectDataSource1" Width="95%" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
        
        <asp:TemplateField HeaderText="类型" SortExpression="Style">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Style") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Style") %>'></asp:Label>
            </ItemTemplate>            
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="标题" SortExpression="Title">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Title") %>' ></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# GetCut(Eval("Title").ToString(),10) %>'></asp:Label>
            </ItemTemplate>          
            <HeaderStyle CssClass="GridHead"/>
        </asp:TemplateField>        
        
        <asp:TemplateField HeaderText="时间" SortExpression="CreateDate">
            <EditItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("CreateDate") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("CreateDate","{0:yyyy-MM-dd}") %>'></asp:Label>
            </ItemTemplate>          
            <HeaderStyle CssClass="GridHead"/>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="点击率" SortExpression="Click">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Click") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Click") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle CssClass="GridItem"  Width="100px" />
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "NewsById.aspx?id={0}") %>'
                    Text="详细"></asp:HyperLink>
            </ItemTemplate>          
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
    </Columns> 
    <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />   
</asp:GridView>

<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetNewsByStyle"
    TypeName="Hotel.BLL.NewsBLL" DeleteMethod="DeleteNewsById">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="style" PropertyName="SelectedValue"
            Type="String" DefaultValue="" />
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
<asp:Button id="Button1" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " >
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 


                        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

