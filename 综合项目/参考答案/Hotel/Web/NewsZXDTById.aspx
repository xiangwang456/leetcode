<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsZXDTById.aspx.cs" Inherits="NewsZXDTById" Title="Untitled Page" %>

<%@ Import Namespace="Hotel.Model" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg" >
        <img src="Images/img2/01.jpg" width="234" height="637" />
      </td>
      <td width="682" align="center" valign="top">
        <table width="632" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="Images/img2/04.jpg" width="682" height="179" /></td>
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
                <td width="363" height="28" align="left" valign="middle">&nbsp;<strong>最新动态</strong></td>
                <td width="227" align="right" valign="middle">
                    <font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:#6E4B25;">
                     <%=Master.HotelInfo.NameOfEnglish %></font>
               </td>
              </tr>
              
            </table></td>
          </tr>
          <tr>
          

              <td height="319" align="center" valign="top" background="Images/img/74.jpg"><table width="580" height="59" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="40" align="center" valign="middle" style="line-height:30px"><strong>
                    <font style="font-size:14px"><%=news.Title%>
                    </font>   </strong>
                    <br />发布日期（<%=news.CreateDate%>）</td>
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
                
                <table width="574" height="360" border="0" cellpadding="0" cellspacing="0">
   				<tr>
                  <td align="center" valign="top" style="line-height:25px">
					<table border="0" width="66%" id="table1">
						<tr>
							<td>
							<%if (news.Pic != "" && news.Pic != null)
                            { %>
							<img border="0" src="<%=news.Pic%>" width="450" height="338">
							<%} %>
							</td>
						</tr>
					</table>				  
			        
			        </td>
                </tr>
                
               
                
                <tr>
                  <td align="left" valign="top" style="line-height:25px"><%=news.Content%></td>
                </tr>
                <tr>
                  <td align="left" valign="top" style="line-height:25px">　</td>
                </tr>
                <tr>
                  <td align="left" valign="top" style="line-height:25px">&nbsp; </td>
                </tr>
              </table>
                <table width="575" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="1" align="center" valign="middle" bgcolor="F1F1F1"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right" valign="bottom">该信息被查阅 <%=news.Click%>次&nbsp;</td>
                  </tr>
                </table>
              </td>
          </tr>
          <tr>
            <td align="left" valign="top"><img src="Images/img/73.jpg" width="626" height="41" /></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10"></td>
          </tr>
        </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;">
        <img src="Images/img/45.jpg" width="87" height="251" />
      </td>
    </tr>
  </table>

</asp:Content>

