<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PriceList.aspx.cs" Inherits="Kfjg" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
  <table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" style="background:url(Images/img/49.jpg); background-position:bottom; background-repeat:repeat;">
        <img src="Images/img/42.jpg" width="234" height="616" />
      </td>
      <td width="682" align="center" valign="top">
        <table width="632" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="Images/img/43.jpg" width="682" height="179" /></td>
        </tr>
      </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="402" height="25" align="left" valign="middle">&nbsp;
                <font style="font-weight:bold; font-size:15px; color:#6E4B25;">客房展示</font>-客房价格表</td>
            <td width="230" align="right" valign="middle">
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
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top" style="line-height:20px">
                   <%=price.Content %>       
           </td>
          </tr>
        </table>
        <table width="634" height="50" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td>　</td>
          </tr>
      </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="Images/img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>
</div>

</asp:Content>

