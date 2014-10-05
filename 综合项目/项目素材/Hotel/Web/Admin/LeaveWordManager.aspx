<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="LeaveWordManager.aspx.cs" Inherits="Admin_LeaveWordManager" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<BR />
<TABLE width="95%"><TBODY><TR><TD align=left>转到类别： <asp:DropDownList id="DropDownList1" runat="server" AutoPostBack="true">
            <asp:ListItem Text="所有留言" Value=""></asp:ListItem>
            <asp:ListItem Text="简单的留言" Value="简单的留言"></asp:ListItem>
            <asp:ListItem Text="对网站的意见" Value="对网站的意见"></asp:ListItem>
            <asp:ListItem Text="对公司的建议" Value="对公司的建议"></asp:ListItem>
            <asp:ListItem Text="具有合作意向" Value="具有合作意向"></asp:ListItem>
             <asp:ListItem Text="产品投诉" Value="产品投诉"></asp:ListItem>
            <asp:ListItem Text="服务投诉" Value="服务投诉"></asp:ListItem>
          </asp:DropDownList> </TD></TR></TBODY></TABLE>
          
   <asp:GridView id="GridView1" runat="server" CssClass="GridBody" Width="95%" AutoGenerateColumns="False" BackColor="White" DataSourceID="ObjectDataSource1" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="Id" OnPreRender="GridView1_PreRender">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
        <asp:TemplateField HeaderText="标题" SortExpression="Subject">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%#  Bind("Subject") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# GetCut(Eval("Subject").ToString(),10) %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="姓名" SortExpression="Name">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>         
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Email" SortExpression="Email">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <a href="mailto:<%# Eval("Email") %>" ><%# Eval("Email") %></a>   
            </ItemTemplate>            
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="电话" SortExpression="Tel">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Tel") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Tel") %>'></asp:Label>
            </ItemTemplate>           
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="时间" SortExpression="CreateTime">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CreateTime") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("CreateTime","{0:yyyy-MM-dd}") %>'></asp:Label>
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "LeaveWordById.aspx?id={0}") %>'
                    Text="详细"></asp:HyperLink>
            </ItemTemplate>           
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
    </Columns>
      <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />    
</asp:GridView> 
<asp:ObjectDataSource id="ObjectDataSource1" runat="server" DeleteMethod="DeleteById" SelectMethod="GetLeaveWordByType" TypeName="Hotel.BLL.LeaveWordBLL"><DeleteParameters>
<asp:Parameter Name="id" Type="Int32"></asp:Parameter>
</DeleteParameters>
<SelectParameters>
<asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" DefaultValue="" Name="type" Type="String"></asp:ControlParameter>
</SelectParameters>
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

