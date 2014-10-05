<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FavourById.aspx.cs" Inherits="FavourById" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
  <table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg" >
        <img src="Images/img2/13.jpg" width="234" height="651" /></td>
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
            <td width="387" height="25" align="left" valign="middle">&nbsp;
            <font style="font-weight:bold; font-size:15px; color:#6E4B25;">特惠精选</font></td>
            <td width="245" align="right" valign="middle">
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
        <table width="682" height="258" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="20" align="center" valign="top">      
            <table width="635" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="40" align="center" valign="middle"><strong><font style="font-size:19pt">
                    <%=favour.Title%></font></strong>
                </td>
              </tr>
              <tr>
                <td background="Images/img/85.jpg" height="1"></td>
              </tr>
            </table>
              <table width="100" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>　</td>
                </tr>
              </table>
              <table width="629" height="360" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="left" valign="top" style="line-height:25px"><%=favour.Content%></td>
                </tr>
              </table></td>
          </tr>
      </table>
        </td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="Images/img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>
</div>
</asp:Content>

