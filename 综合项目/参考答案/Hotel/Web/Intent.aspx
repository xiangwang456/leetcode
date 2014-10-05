<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Intent.aspx.cs" Inherits="Intent" Title="Untitled Page" %>
<%@ Import Namespace="Hotel.Model" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
  <table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="Images/img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" background="Images/img2/02.jpg" >
        <img src="Images/img2/50.jpg" width="234" height="652" /></td>
      <td width="682" align="center" valign="top">
        <table width="632" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="Images/img2/51.jpg" width="682" height="179" /></td>
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
                <font style="font-weight:bold; font-size:15px; color:#6E4B25;">目的地指南</font></td>
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
        <table width="626" height="92" border="0" cellpadding="0" cellspacing="0">
		<tr>
            <td align="left" valign="top"><img src="Images/img/72.jpg" width="626" height="41"></td>
          </tr>
          <tr>
         
             <td align="center" valign="top" background="Images/img/74.jpg"><table width="591" height="198" border="0" cellpadding="0" cellspacing="0">
               <tr>
                 <td align="left" valign="top" style="line-height:25px"><p>【<strong>旅游景点</strong>】</p>
                  <div align="left">
				    <table height="119" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <% int count = 0; foreach (Intent each in listIntent) { if (each.Type == "旅游景点") { %> 
                          <td width="143" align="center" valign="middle" style="line-height:20px">
						    <table width="130" height="88" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
                              <tr>
                                <td align="center" valign="middle" bgcolor="#FEF9F3"><a href="IntentById.aspx?id=<%=each.Id%>" >
                                    <img src="<%=each.Pic%>" width="129" height="87" border="0"></a>
                                </td>
                              </tr>
                            </table>                              
                           <a href="IntentById.aspx?id=<%=each.Id%>" class="bb" ><%=each.Title%></a>
                          </td>        
                        <% count++; if (count % 4 == 0) { %><tr><td></td></tr> <%} } }%>	       
                      </tr>
                    </table>				

                  </div>                  
				    <p>【<strong>广州小吃</strong>】</p>
                    <div align="left">
        		    <table height="119" border="0" cellpadding="0" cellspacing="0">
                      <tr>
					     <% count = 0; foreach (Intent each in listIntent) { if (each.Type == "广州小吃") { %> 
					    <td width="143" align="center" valign="middle" style="line-height:20px">
						<table width="130" height="88" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
                          <tr>
                            <td align="center" valign="middle" bgcolor="#FEF9F3"><a href="IntentById.aspx?id=<%=each.Id%>" >
                                <img src="<%=each.Pic%>" width="129" height="87" border="0"></a></td>
                          </tr>
                        </table>                          
                          <a href="IntentById.aspx?id=<%=each.Id%>"  class="bb"><%=each.Title%></a></td>						       
                          <% count++; if (count % 4 == 0) { %><tr><td></td></tr> <%} } }%>	  
                      </tr>
                    </table> 
         
                    </div>
                    <p>&nbsp;</p>
                  </td>
               </tr>
             </table></td>
          </tr>
          
          <tr>
            <td align="left" valign="top"><img src="Images/img/73.jpg" width="626" height="41"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20"></td>
          </tr>
        </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="Images/img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>
</div>
</asp:Content>

