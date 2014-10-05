<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="RoomNumberManager.aspx.cs" ValidateRequest="false" Inherits="Admin_RoomNumberManager" Title="Untitled Page" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
 <table width="95%" cellpadding="3">
        <tr>
            <td align="left" colspan="7">       
                所在大楼     
                <asp:DropDownList ID="ddlStation" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlStation_SelectedIndexChanged" />   
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客房类型             
                <asp:DropDownList ID="ddlRoomType" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="ddlRoomType_SelectedIndexChanged" />  
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客房状态               
                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" />      
            </td>
        </tr>            
         <tr>
            <td width="125" align="left"> 
                全部
                <asp:Label ID="lblFullNum" runat="server" Font-Size="Small" ></asp:Label>
                <asp:Label ID="lblFullPerCent" runat="server"  Font-Size="Small" Text="100%" Width="35px" BorderWidth="1px" />
            </td>
             <td width="125" align="left"> 
                空房
                <asp:Label ID="lblEmptyNum" runat="server" Font-Size="Small" ></asp:Label>
                <asp:Label ID="lblEmptyPerCent" runat="server" BackColor="Green" BorderColor="Black" Font-Size="Small"
                    ForeColor="White" Text="" Width="35px" BorderWidth="1px" />
            </td>
             <td width="125" align="left"> 
                自用
                <asp:Label ID="lblOwnNum" runat="server" Font-Size="Small"></asp:Label>
                <asp:Label
                    ID="lblOwnPerCent" runat="server" BackColor="Olive" BorderColor="Black" Font-Size="Small"
                    ForeColor="White" Text="" Width="35px" BorderWidth="1px"></asp:Label>
            </td>
            <td width="125" align="left"> 
                住客
                <asp:Label ID="lblGuestNum" runat="server" Font-Size="Small" ></asp:Label>
                <asp:Label
                    ID="lblGuestPerCent" runat="server" BackColor="Coral" BorderColor="Black" Font-Size="Small"
                    ForeColor="White" Text="" Width="35px" BorderWidth="1px"></asp:Label>
            </td>
            
             <td width="125" align="left"> 
                保留
                <asp:Label ID="lblKeepNum" runat="server" Font-Size="Small"></asp:Label>
                <asp:Label
                    ID="lblKeepPerCent" runat="server" BackColor="DarkViolet" BorderColor="Black" Font-Size="Small"
                    ForeColor="White" Text="" Width="35px" BorderWidth="1px"></asp:Label>
            </td>
             <td width="125" align="left"> 
                维修
                <asp:Label ID="lblRepairNum" runat="server" Font-Size="Small" ></asp:Label>
                <asp:Label
                    ID="lblRepairPerCent" runat="server" BackColor="MidnightBlue" BorderColor="Black" Font-Size="Small"
                    ForeColor="White" Text="" Width="35px" BorderWidth="1px"></asp:Label>
            </td>
            <td>&nbsp</td>
        </tr>    
    </table>   
  
    
    <table width="95%" runat="server">
        <tr>
            <td align="left">                        
             <asp:DataList ID="DataList1" runat="server" RepeatColumns="10" RepeatDirection="Horizontal"  OnPreRender="GridView1_PreRender">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" BackColor='<%# GetBackColor(Eval("RoomState.RoomStateName").ToString()) %>'
                        Font-Size="12px" ForeColor="White" Height="55px" Style="cursor: hand;" BorderStyle="Solid" Font-Names="华文中宋"
                        Text='<%# GetButtonText(Eval("RoomNum").ToString(),Eval("RoomType.Name").ToString(),Eval("RoomState.RoomStateId").ToString()) %>'  
                        BorderColor="Black"    
                        ToolTip='<%# GetButtonTool(Eval("RoomType.Name").ToString(),Eval("RoomStation.StationName").ToString(),Eval("RoomLayer").ToString(),Eval("RoomTel").ToString()) %>'
                        Width="80px" OnCommand="Button1_Command" CommandArgument='<%# Eval("RoomState.RoomStateId")+","+Eval("RoomNum") %>' CommandName='<%# Eval("RoomId") %>' />
                </ItemTemplate>
            </asp:DataList>   
            </td>
        </tr>    
    </table>
    
    <table width="95%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center">
               <webdiyer:AspNetPager ID="anpPager" runat="server" AlwaysShow="True" PageSize="60" OnPageChanged="anpPager_PageChanged" ShowInputBox="Always" ShowNavigationToolTip="True"  SubmitButtonText=" GO " SubmitButtonClass="btn" >
               </webdiyer:AspNetPager>     
            </td>
          </tr>
      </table>
      
    
    <asp:Panel id="pnlNoFile" runat="server" Width="700px" Height="200px" Visible="false">
<BR /><FIELDSET style="WIDTH: 300px">
<TABLE width="100%"><TBODY><TR><TD style="FONT-WEIGHT: 100; FONT-SIZE: 14px" align=left>
&nbsp;&nbsp;&nbsp;&nbsp;提示信息 </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG height=1 alt="" src="../Admin/Images/img/103.gif" width="100%" /> </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG src="../Admin/Images/img/infod.gif" align=top />&nbsp;&nbsp;&nbsp;&nbsp;暂无信息！ </TD></TR><TR><TD align=right>
<asp:Button id="Button1" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " PostBackUrl="~/Admin/Index.aspx">
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 


            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

