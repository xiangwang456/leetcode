<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RoomTypeById.aspx.cs" Inherits="Prices_xx" Title="Untitled Page" %>

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
                <td width="396" height="25" align="left" valign="middle">&nbsp;
                    <font style="font-weight:bold; font-size:15px; color:#6E4B25;">客房特色及价格</font>
                </td>
                <td width="236" align="right" valign="middle">
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
     
            <table width="619" height="99" border="0" cellpadding="10" cellspacing="0">
              <tr>
                <td align="center" valign="middle"><p><img src="<%=roomType.Pic %>"  />
                </p>
                  <p>　</p>
                  <table width="516" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="191" height="25" align="left"><strong>客房类型：</strong>
                        <font color="#FF0000"><%=roomType.Name%></font>
                     </td>
                      <td width="167" align="left">
                            <strong>门市价：</strong><font color="#FF0000"><%=string.Format("{0:F2}", roomType.Price)%></font>(元)
                      </td>
                      <td width="158" align="left">
                            <strong>面积：</strong><font color="#FF0000"><%=roomType.Area%></font>(平方米)
                      </td>
                    </tr>
                  <tr>
                    <td height="80" colspan="3" align="left" valign="top" style="line-height:20px">
                       <p> <%=roomType.Content%></p>                      
                    </td>
                  </tr>
                </table>
            <p>　</p></td>
          </tr>
        </table>
      </td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;">
        <img src="Images/img/45.jpg" width="87" height="251" />
      </td>
    </tr>
  </table>
</div>

</asp:Content>

