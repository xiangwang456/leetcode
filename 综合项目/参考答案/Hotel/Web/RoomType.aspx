<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RoomType.aspx.cs" Inherits="Prices" Title="Untitled Page" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Import Namespace="Hotel.Model" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
  <table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" style="background:url(Images/img/49.jpg); background-position:bottom; background-repeat:repeat;">
        <img src="Images/img/42.jpg" width="234" height="616" /></td>
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
            <td width="395" height="25" align="left" valign="middle">&nbsp;
                <font style="font-weight:bold; font-size:15px; color:#6E4B25;">客房特色及价格</font>
            </td>
            <td width="237" align="right" valign="middle">
                <font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:#6E4B25;">
                  <%=Master.HotelInfo.NameOfEnglish %></font></td>
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
        <table width="619" height="9" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top">
                <img src="Images/img/50.jpg" width="619" height="9" />
            </td>
          </tr>
        </table>
                            
          <asp:DataList ID="DataList1" runat="server" Width="100%">
                    <ItemTemplate>  
        
        <table width="619" height="99" border="0" cellpadding="10" cellspacing="0" background="Images/img/51.jpg">
          <tr>
            <td width="154" align="center" valign="middle">
            <table width="156" height="104" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
              <tr>
                <td align="center" valign="middle" bgcolor="#FFF8DE">
                    <a href='<%# Eval("Pic") %>' rel="lightbox" title='<%# Eval("Name") %>'>
                        <img src='<%# Eval("Spic") %>' alt='<%# Eval("Name") %>' width="146" height="94" border="0" />
                    </a>
                  </td>       
              </tr>
            </table></td>
            <td width="425" align="left" valign="top"><table width="421" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="151" height="25">
                    <strong>客房类型：</strong>
                    <font color="#FF0000">
                        <a href="RoomTypeById.aspx?id=<%# Eval("Id") %>"  class="dd1"><%# Eval("Name") %></a>
                    </font>
                </td>
                <td width="137"><strong>门市价：</strong><font color="#FF0000"><%# Eval("Price","{0:F2}") %></font>(元)</td>
                <td width="133"><strong>面积：</strong><font color="#FF0000"><%# Eval("Area") %></font>(平方米)</td>
              </tr>
              <tr>
                <td height="80" colspan="3" align="left" valign="top" style="line-height:20px">
                  <%# Master.GetCut(Eval("Content").ToString(),78) %>
                 </td>
              </tr>
            </table></td>
          </tr>
        </table>
                  </ItemTemplate>
                </asp:DataList>
                
               
        <table width="619" height="9" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img/52.jpg" width="619" height="8" /></td>
          </tr>
        </table>
        
        <table width="634" height="50" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center">
               <webdiyer:AspNetPager ID="anpPager" runat="server" AlwaysShow="True" PageSize="3" OnPageChanged="anpPager_PageChanged" ShowInputBox="Always" ShowNavigationToolTip="True"  SubmitButtonText=" GO " SubmitButtonClass="go-wenbenkuang" InputBoxStyle="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 30px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff" >
               </webdiyer:AspNetPager>     
            </td>
          </tr>
      </table>
      
      </td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="Images/img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>
</div>

</asp:Content>

