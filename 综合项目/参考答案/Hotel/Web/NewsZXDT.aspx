<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsZXDT.aspx.cs" Inherits="ZXDT" Title="Untitled Page" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<%@ Import Namespace="Hotel.Model" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg" >
        <img src="Images/img2/01.jpg" width="234" height="637" alt="" /></td>
      <td width="682" align="center" valign="top">
      <table width="632" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="Images/img2/04.jpg" width="682" height="179" alt="" /></td>
        </tr>
      </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10"></td>
          </tr>
        </table>
        <table width="626" height="401" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="41" align="center" valign="middle" background="Images/img/72.jpg">
            <table width="590" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="339" height="28" align="left" valign="middle">&nbsp;<strong>最新动态</strong></td>
                <td width="251" align="right" valign="middle">
                    <font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:#6E4B25;">
                      <%=Master.HotelInfo.NameOfEnglish %></font></td>
              </tr>
              <tr>
                <td height="1" colspan="2" bgcolor="593E34"></td>
              </tr>
            </table></td>
          </tr>
          <tr>
              <td height="319" align="center" valign="top" background="Images/img/74.jpg">
              <table width="575" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="left" valign="middle">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题</td>
                  <td width="101" height="14" align="center" valign="middle">发布日期</td>
                  <td width="75" height="14" align="center" valign="middle">浏览次数</td>
                </tr>
                <tr>
                  <td height="1" colspan="4" align="center" valign="middle" bgcolor="EAE5DD"></td>
                </tr>
              </table>
                <table width="575" height="202" border="0" cellpadding="0" cellspacing="0" background="Images/img/p43.jpg">
                  <tr>
                    <td align="center" valign="top">               
           
                        <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                              <table width="575" height="28" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td width="27" height="28" align="center" valign="middle">
                                    <img src="Images/img/iecool_arrow_204.gif" width="14" height="11" alt="" />       
                                  </td>
                                  <td width="372" height="28" align="left" valign="middle"><a href="NewsZXDTById.aspx?id=<%# Eval("Id") %>" class="aa"  title=""><%# Eval("Title") %></a>
                                  </td>
                                  <td width="101" height="28" align="center" valign="middle"><%# Eval("CreateDate", "{0:yyyy-MM-dd}")%></td>
                                  <td width="75" height="28" align="center" valign="middle"><%# Eval("Click") %>次</td>
                                </tr>
                              </table>
                        </ItemTemplate>
                        </asp:DataList>                         
                     </td>
                  </tr>
                </table>
                  <webdiyer:AspNetPager ID="anpPager" runat="server" AlwaysShow="True" PageSize="5" OnPageChanged="anpPager_PageChanged" ShowInputBox="Always" ShowNavigationToolTip="True"  SubmitButtonText=" GO " SubmitButtonClass="go-wenbenkuang" InputBoxStyle="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 30px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff">
                  </webdiyer:AspNetPager>
                  
            </td>
          </tr>
          <tr>
            <td align="left" valign="top"><img src="Images/img/73.jpg" width="626" height="41" alt="" /></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10"></td>
          </tr>
        </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;">
        <img src="Images/img/45.jpg" width="87" height="251" alt="" />
      </td>
    </tr>
  </table>

</asp:Content>

