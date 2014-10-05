<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsYGHD.aspx.cs" Inherits="NewsYGHD" Title="Untitled Page" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<table width="1003" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="left" valign="top"><img src="Images/img/100.jpg" width="1003" height="187"></td>
    </tr>
  </table>
  <table width="1003" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFF4C7" >
    <tr>
      <td width="120" align="left" valign="top" ><img src="Images/img/101.jpg" width="120" height="397"></td>
      <td width="763" align="center" valign="top"><table width="626" height="414" border="0" cellpadding="0" cellspacing="0">
		<tr>
            <td align="left" valign="top">&nbsp;</td>
          </tr>
          <tr>
         
            <td height="318" align="center" valign="top" background="Images/img/104.jpg">
            <table width="575" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="30" align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题
                 </td>
                <td width="101" height="14" align="center" valign="middle">发布日期</td>
                <td width="75" height="14" align="center" valign="middle">浏览次数</td>
              </tr>
              <tr>
                <td height="1" colspan="4" align="center" valign="middle" bgcolor="EAE5DD"></td>
              </tr>
            </table>
              <table width="575" border="0" cellpadding="0" cellspacing="0" background="Images/img/p43.jpg">
                <tr>
                  <td align="center" valign="top">
                  
                  
                  <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                         <table width="575" height="28" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="27" height="28" align="center" valign="middle"><img src="Images/img/iecool_arrow_204.gif" width="14" height="11" /></td>
                            <td width="372" height="28" align="left" valign="middle"><a href="NewsYGTDById.aspx?id=<%# Eval("Id") %>" class="aa"  title="<%# Eval("Title") %>"><%# Eval("Title") %></a></td>
                            <td width="101" height="28" align="center" valign="middle"><%# Eval("CreateDate", "{0:yyyy-MM-dd}")%></td>
                            <td width="75" height="28" align="center" valign="middle"><%# Eval("Click") %>次</td>
                          </tr>
                        </table>            
                    </ItemTemplate>
                  </asp:DataList>         
                    
                  </td>
                </tr>
              </table>
              <table width="575" height="37" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="bottom">
                   <webdiyer:AspNetPager ID="anpPager" runat="server" AlwaysShow="True" PageSize="5" OnPageChanged="anpPager_PageChanged" ShowInputBox="Always" ShowNavigationToolTip="True" SubmitButtonText=" GO " SubmitButtonClass="go-wenbenkuang" InputBoxStyle="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 30px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff">
                  </webdiyer:AspNetPager>
</td>
                </tr>
              </table></td>
          </tr>
          
          <tr>
            <td align="left" valign="top"><img src="Images/img/105.jpg" width="763" height="45"></td>
          </tr>
        </table>
      </td>
      <td width="120" align="right" valign="top" ><img src="Images/img/102.jpg" width="120" height="397" /></td>
    </tr>
  </table>
<img src="Images/img/103.jpg" width="763" height="51" /></div>


</asp:Content>

