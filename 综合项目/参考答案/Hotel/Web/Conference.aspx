<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Conference.aspx.cs" Inherits="Conference" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
  <table width="1003" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg" >
        <img src="Images/img3/10.jpg" width="234" height="651" />
      </td>
      <td width="682" align="center" valign="top">
        <table width="632" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="Images/img2/08.jpg" width="682" height="179" /></td>
        </tr>
      </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="405" height="25" align="left" valign="middle">&nbsp;
                <font style="font-weight:bold; font-size:15px; color:#6E4B25;">会议及宴会</font></td>
            <td width="227" align="right" valign="middle">
                <font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:#6E4B25;">
                <%=Master.HotelInfo.NameOfEnglish %></font>
            </td>
          </tr>
          <tr>
            <td height="1" colspan="2" bgcolor="593E34"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20"></td>
          </tr>
        </table>
        <table width="632" height="56" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top" style="line-height:20px">    <%=conference.Content%></td>
          </tr>
        </table>
        <table width="633" height="50" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center">　</td>
          </tr>
      </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="Images/img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>

    </div>
</asp:Content>

