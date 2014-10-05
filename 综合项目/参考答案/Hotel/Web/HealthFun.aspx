<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HealthFun.aspx.cs" Inherits="jsyl" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="script1" runat="server">
    </asp:ScriptManager>
<div align="center">

  <table width="1003" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg" ><img src="Images/img2/09.jpg" width="234" height="651" /></td>
      <td width="682" align="center" valign="top">
        <table width="632" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="Images/img2/10.jpg" width="682" height="179" /></td>
        </tr>
      </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="379" height="25" align="left" valign="middle">&nbsp;
                <font style="font-weight:bold; font-size:15px; color:#6E4B25;">健身和娱乐</font></td>
            <td width="253" align="right" valign="middle">
                <font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:#6E4B25;">
                    <%=Master.HotelInfo.NameOfEnglish %></font>
            </td>
          </tr>
          <tr>
            <td height="1" colspan="2" bgcolor="593E34"></td>
          </tr>
        </table>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table width="632" height="97" border="0" cellpadding="0" cellspacing="0">
                <tr>
                <td align="center" valign="middle" style="line-height:20px">
                    <asp:ImageButton ID="imgbtnWater" runat="server" ImageUrl="Images/img/65.jpg" AlternateText="水疗馆" width="167" height="51" OnClick="imgbtnWater_Click"/>                           
                </td>
                <td align="center" valign="middle" style="line-height:20px">          
                 <asp:ImageButton ID="imgbtnSportCenter" runat="server" ImageUrl="Images/img/66.jpg" AlternateText="健身中心" width="167" height="51" OnClick="imgbtnSportCenter_Click"/>                     
                </td>
                <td align="center" valign="middle" style="line-height:20px">                
                 <asp:ImageButton ID="imgbtnKTV" runat="server" ImageUrl="Images/img/67.jpg" AlternateText="中原首家泰国风情KTV" width="167" height="51" OnClick="imgbtnKTV_Click"/>                 
                </td>
                </tr>
                </table>
                <table width="632" height="66" border="0" cellpadding="0" cellspacing="0">
                <tr>
                <td align="left" valign="top" style="line-height:20px" id="showSubPage">
                    <asp:Label runat="server" Text="" ID="lblContent"></asp:Label>
                </td>
                </tr>
                </table>                    
            </ContentTemplate>
        </asp:UpdatePanel>
          
        <table width="633" height="50" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center"></td>
          </tr>
      </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="Images/img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>

</div>

</asp:Content>

