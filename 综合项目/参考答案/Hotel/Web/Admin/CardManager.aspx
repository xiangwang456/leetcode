<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CardManager.aspx.cs" Inherits="Admin_CardManager" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />

<asp:GridView ID="GridView1" runat="server" CssClass="GridBody"  OnPreRender="GridView1_PreRender" DataKeyNames="Id" AutoGenerateColumns="False" BackColor="White" DataSourceID="ObjectDataSource1" Width="95%" AllowPaging="True" OnRowDataBound="GridView1_RowDataBound">
    <Columns>
    
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"  Visible="False" />
        
        <asp:TemplateField HeaderText="名称" SortExpression="Style">
            <EditItemTemplate>
                <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtName" ControlToValidate="txtName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>        
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="消费下限" SortExpression="Sj">
            <EditItemTemplate>
                <asp:TextBox ID="txtDown" runat="server" Text='<%# Bind("Down","{0:F2}") %>' Width="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtDown" ControlToValidate="txtDown" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                <ajaxToolkit:FilteredTextBoxExtender ID="flttxtDown" TargetControlID="txtDown" FilterType="Custom,Numbers"  ValidChars="." runat="server" />                     
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Down","{0:F2}") %>'></asp:Label>
            </ItemTemplate>          
            <HeaderStyle CssClass="GridHead" />            
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="消费上限" SortExpression="Sj">
            <EditItemTemplate>
                <asp:TextBox ID="txtUp" runat="server" Text='<%# Bind("Up","{0:F2}") %>'  Width="100"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvtxtUp" ControlToValidate="txtUp" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                <ajaxToolkit:FilteredTextBoxExtender ID="flttxtUp" TargetControlID="txtUp" FilterType="Custom,Numbers"  ValidChars="." runat="server" />                     
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Up","{0:F2}") %>'></asp:Label>
            </ItemTemplate>         
            <HeaderStyle CssClass="GridHead" />
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="折扣" SortExpression="Sj">
            <EditItemTemplate>
                <asp:TextBox ID="txtDiscount" runat="server" Text='<%# Bind("Discount") %>' Width="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtDiscount" ControlToValidate="txtDiscount" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                <ajaxToolkit:FilteredTextBoxExtender ID="flttxtDiscount" TargetControlID="txtDiscount" FilterType="Custom,Numbers"  ValidChars="." runat="server" />                     
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Discount") %>'></asp:Label>
            </ItemTemplate>        
            <HeaderStyle CssClass="GridHead" />            
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="级别(由低到高)" SortExpression="Sj">
            <EditItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("ClassLeval") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("ClassLeval") %>'></asp:Label>
            </ItemTemplate>        
            <HeaderStyle CssClass="GridHead" />            
        </asp:TemplateField>
        
        <asp:TemplateField ShowHeader="False" HeaderText="操作">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                    Text="更新"></asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="取消"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="编辑"></asp:LinkButton>
            </ItemTemplate>         
          <HeaderStyle CssClass="GridHead" /> 
        </asp:TemplateField>
        
        
    </Columns>
      <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />    
</asp:GridView>

<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetCardAll"
    TypeName="Hotel.BLL.CardBLL" UpdateMethod="UpdateCard">
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="down" Type="Decimal" />
        <asp:Parameter Name="up" Type="Decimal" />
        <asp:Parameter Name="discount" Type="Decimal" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>


<table width="95%" align="center"><tr><td align="left">
<table width="100%" align="left"><tr><td align="left">
<fieldset style="WIDTH: 600px; text-align:left">
<legend>会员卡管理使用须知</legend>
            <p>一、最低级别的下线必须为0。</p>
            <p>二、除最低级别以外，任何级别的下限必须是它下一级别的上限加1。</p>
            <p>三、除最高级别以外，任何级别的上限必须是它上一级别的下限减1。</p>
            <p>四、超过最高级别的上限，按最高级别处理。</p>
            <p>五、任何一个级别的折扣，必须大于或者等于它上一个级别的折扣。</p>
</fieldset></td></tr></table>
</td></tr></table>



<asp:Panel id="pnlNoFile" runat="server" Width="700px" Height="200px" Visible="false">
<BR /><FIELDSET style="WIDTH: 300px">
<TABLE width="100%"><TBODY><TR><TD style="FONT-WEIGHT: 100; FONT-SIZE: 14px" align=left>
&nbsp;&nbsp;&nbsp;&nbsp;提示信息 </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG height=1 alt="" src="../Admin/Images/img/103.gif" width="100%" /> </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG src="../Admin/Images/img/infod.gif" align=top />&nbsp;&nbsp;&nbsp;&nbsp;暂无信息！ </TD></TR><TR><TD align=right>
<asp:Button id="Button1" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " PostBackUrl="~/Admin/Index.aspx">
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 



</asp:Content>

