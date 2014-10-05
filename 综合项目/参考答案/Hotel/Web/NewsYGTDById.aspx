<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsYGTDById.aspx.cs" Inherits="NewsYGTDById" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <table width="1003" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="left" valign="top"><img src="Images/img/100.jpg" width="1003" height="187"></td>
    </tr>
  </table>
  <table width="1003" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFF4C7" >
    <tr>
      <td width="120" align="left" valign="top" >
        <img src="Images/img/101.jpg" width="120" height="397"></td>
      <td width="763" align="center" valign="top">
      <table width="626" height="414" border="0" cellpadding="0" cellspacing="0">
		<tr>
            <td align="left" valign="top"><img src="Images/img/103.jpg" width="763" height="51"></td>
          </tr>
          <tr>
         
            <td height="318" align="center" valign="top" background="Images/img/104.jpg">
            <table width="100" height="31" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td>　</td>
              </tr>
            </table>
              <table width="656" height="59" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="40" align="center" valign="middle" style="line-height:30px"><strong>
                    <font style="font-size:19pt"><%=news.Title%></font></strong><br />
                  发布日期（<%=news.CreateDate%>）</td>
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
              <table width="658" height="360" border="0" cellpadding="0" cellspacing="0">
        		<tr>
                  <td align="center" valign="top" style="line-height:25px" nowrap="nowrap">
					<table border="0" width="66%" id="table1">
						<tr>
							<td>
							<%if (news.Pic != "" && news.Pic != null)
                            { %>
							<img border="0" src="<%=news.Pic%>"  >
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
              <table width="660" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="1" align="center" valign="middle" bgcolor="F1F1F1"></td>
                </tr>
                <tr>
                  <td height="30" align="right" valign="bottom">该信息被查阅 <%=news.Click%>次&nbsp;</td>
                </tr>
              </table></td>
          </tr>
          
          <tr>
            <td align="left" valign="top"><img src="Images/img/105.jpg" width="763" height="45"></td>
          </tr>
        </table>
        </td>
      <td width="120" align="right" valign="top" ><img src="Images/img/102.jpg" width="120" height="397"></td>
    </tr>
  </table>

</asp:Content>

