<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="IntentManager.aspx.cs" Inherits="Admin_IntentManager" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<br />
<table width="95%">
    <tr>
        <td align="left">
            转到类别：
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
                <asp:ListItem Text="所有类别" Value=""></asp:ListItem>
                <asp:ListItem Text="旅游景点" Value="旅游景点"></asp:ListItem>
                <asp:ListItem Text="广州小吃" Value="广州小吃"></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
</table>    

<asp:GridView ID="GridView1" runat="server" CssClass="GridBody" DataKeyNames="Id" AutoGenerateColumns="False" BackColor="White" DataSourceID="ObjectDataSource1" Width="95%" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
        
        <asp:TemplateField HeaderText="类型" SortExpression="Style">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
            </ItemTemplate>            
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="标题" SortExpression="Title">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Title") %>' ></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
            </ItemTemplate>         
            <HeaderStyle CssClass="GridHead"/>
        </asp:TemplateField>        
        
        <asp:TemplateField HeaderText="时间" SortExpression="CreateDate">
            <EditItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Sj") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Sj") %>'></asp:Label>
            </ItemTemplate>           
            <HeaderStyle CssClass="GridHead"/>
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "IntentById.aspx?id={0}") %>'
                    Text="详细"></asp:HyperLink>
            </ItemTemplate>           
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
    </Columns>
      <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />    
</asp:GridView>

<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetIntentByStyle"
    TypeName="Hotel.BLL.IntentBLL" DeleteMethod="DeleteById">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="style" PropertyName="SelectedValue" DefaultValue="" 
            Type="String" />
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
<asp:Button id="Button1" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 ">
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 


                        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

