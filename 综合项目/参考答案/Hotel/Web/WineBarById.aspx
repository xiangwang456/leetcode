<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WineBarById.aspx.cs" Inherits="Cyjb_xx" Title="Untitled Page" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
  <table width="1003" height="940" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg">
        <img src="Images/img2/05.jpg" />
      </td>
      <td width="682" align="center" valign="top">
        <table width="632" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="Images/img2/06.jpg" width="682" height="179" /></td>
        </tr>
      </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="393" height="25" align="left" valign="middle">&nbsp;
                <font style="font-weight:bold; font-size:15px; color:#6E4B25;">餐饮及酒吧</font>
            </td>
            <td width="239" align="right" valign="middle">
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


        <table width="626" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="40" align="center" valign="middle">
                <strong><font style="font-size:19pt; color:#FF0000"><%=bar.Name%></font></strong>
            </td>
          </tr>
          <tr>
            <td background="Images/img/85.jpg" height="1"></td>
          </tr>
        </table>
        <table width="619" height="99" border="0" cellpadding="10" cellspacing="0">
          <tr>
            <td align="center" valign="middle"><p><img src="<%=bar.Pic%>"/> </p>
                <p>　</p>
                <table width="534" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="25"><strong><font color="#FF0000"><%=bar.Name%></font></strong></td>
                  </tr>
                  <tr>
                    <td height="80" align="left" valign="top" style="line-height:20px"><%=bar.Content%></td>
                  </tr>
                </table>
                <p>　</p></td>
          </tr>
        </table>      </td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="Images/img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>
</div>


</asp:Content>

