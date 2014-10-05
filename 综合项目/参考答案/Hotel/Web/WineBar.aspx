<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WineBar.aspx.cs" Inherits="Cyjb" Title="Untitled Page" %>
<%@ Import Namespace="Hotel.Model" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
  <table width="1003" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg">
        <img src="Images/img3/10.jpg" />
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
            <td width="405" height="25" align="left" valign="middle">&nbsp;
                <font style="font-weight:bold; font-size:15px; color:#6E4B25;">餐饮及酒吧</font>
            </td>
            <td width="227" align="right" valign="middle">
                <font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:#6E4B25;">
                <%=Master.HotelInfo.NameOfEnglish %></font>
            </td>
          </tr>
          <tr>
            <td height="1" colspan="2" bgcolor="#593E34"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20"></td>
          </tr>
        </table>
        <table width="632" height="56" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top" style="line-height:20px">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;在美斯坦福集团大酒店，无论在马克波罗西餐厅品尝动感的国际自助餐，或到花园中餐厅品尝地道的粤菜和豫菜，各色中西餐厅可令人各得其所。各类酒吧，亦静亦喧，品位生活，尽在酒店饭店网站正式版-美斯坦福。 </p>
           </td>
          </tr>
        </table>
        <table width="619" height="9" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top">
                <img src="Images/img/50.jpg" width="619" height="9" />
            </td>
          </tr>
        </table>
   
   
      
<table width="619" height="99" border="0" cellpadding="10" cellspacing="0" background="Images/img/51.jpg">
  <tr>          
    <%
    int i = 0;
    foreach (WineBar bar in listBar)
    {               
    %>
    <td align="left" valign="middle">
    <table width="258" height="156" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
      <tr>
        <td align="center" valign="middle" bgcolor="#FFF8DE">
            <a href="<%=bar.Pic%>" rel="lightbox" title="">
                <img src="<%=bar.Spic%>" alt="" width="246" height="158" border="0" />
            </a>
        </td>
      </tr>
    </table>
      <table width="258" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="27" align="center" valign="middle">
            <img src="Images/img/gif-0109.gif" width="9" height="9" />
          </td>
          <td width="231" height="25" align="left" valign="middle">
            <a href="WineBarById.aspx?id=<%=bar.Id%>"  class="aa"><%=bar.Name%></a>
          </td>
        </tr>
        <tr>
          <td colspan="2" bgcolor="#F0CC7E" height="1"></td>
        </tr>
    </table>
    </td>
    <%      i = i + 1; if (i % 2 == 0)
            {
               %> <tr><td></td></tr>    <%} 
    }
    %>
  </tr>
</table>
    
       
        <table width="619" height="9" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img/52.jpg" width="619" height="8" /></td>
          </tr>
        </table>
        <table width="634" height="50" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center">　</td>
          </tr>
      </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="Images/img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>
</asp:Content>

