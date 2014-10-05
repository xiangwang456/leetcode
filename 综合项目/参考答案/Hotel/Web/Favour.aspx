<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Favour.aspx.cs" Inherits="Favour" Title="Untitled Page" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<%@ Import Namespace="Hotel.Model" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">

  <table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg" >
        <img src="Images/img2/11.jpg" width="234" height="651" />
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

                       
                <asp:DataList ID="DataList1" runat="server" Width="100%">
                    <ItemTemplate>   
         <table width="636" height="106" border="0" cellpadding="0" cellspacing="0">  
              <tr>  
                <td width="204" align="center" valign="middle">
    
                    <table border="0" cellpadding="2" cellspacing="1" bgcolor="#EDC975">
                      <tr>
                        <td align="center" valign="middle" bgcolor="#FDF9F0">
                            <img src="<%# Eval("Pic") %>" width="190" height="65">
                        </td>
                      </tr>
                    </table>
                </td>                                 
                   <td width="432" align="left" valign="middle">
                    <table width="409" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                       <td width="22" align="center" valign="middle">
                            <img src="Images/img/gif-0109.gif" width="9" height="9">
                        </td>
                       <td width="387" height="25" align="left" valign="middle">
                            <a href="FavourById.aspx?id=<%# Eval("Id") %>"  class="aa"><%# Eval("Title") %></a>
                       </td>
                     </tr>
                     <tr>
                       <td colspan="2" bgcolor="#F0CC7E" height="1"></td>
                     </tr>
                   </table>
                     <table width="100" border="0" cellspacing="0" cellpadding="0">
                       <tr>
                         <td height="5"></td>
                       </tr>
                     </table>
                     <table width="411" height="46" border="0" cellpadding="0" cellspacing="0">
                       <tr>
                         <td width="22" align="left" valign="top" >&nbsp;</td>
                         <td width="389" align="left" valign="top" style="line-height:22px">                          
                            <%# Master.GetCut(Eval("Content").ToString(),70) %>
                        </td>
                       </tr>
                     </table>
                  </td>
                       </tr>
              </table> 
                   </ItemTemplate>
                </asp:DataList>
                 
              
              <table width="629" height="58" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle">
                  <table width="508" height="30" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="bottom" style="height: 30px">
                    <div align="center">
                      <p><span class=blue><strong>
                          <webdiyer:AspNetPager ID="anpPager" runat="server" AlwaysShow="True" PageSize="5" OnPageChanged="anpPager_PageChanged" ShowInputBox="Always" ShowNavigationToolTip="True" SubmitButtonText="GO" SubmitButtonClass="go-wenbenkuang" InputBoxStyle="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 30px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff" >
                          </webdiyer:AspNetPager>    
                          </strong></span>                  
                      </p>
                    </div>
                  </td>
                </tr>
              </table>
	            </td>
                </tr>
              </table></td>
          </tr>
      </table>
        <table width="682" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20" align="left" valign="top">&nbsp;</td>
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

