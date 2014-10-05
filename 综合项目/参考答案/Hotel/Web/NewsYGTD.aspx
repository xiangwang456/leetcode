<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsYGTD.aspx.cs" Inherits="NewsYGTD" Title="Untitled Page" %>


<%@ Import Namespace="Hotel.Model" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="1003" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="left" valign="top"><img src="Images/img/100.jpg" width="1003" height="187"></td>
    </tr>
  </table>
  <table width="1003" border="0" cellpadding="0" cellspacing="0" bgcolor="#fff4c7" >
    <tr>
      <td width="120" align="left" valign="top" >
        <img src="Images/img/101.jpg" width="120" height="397"></td>
      <td width="763" align="center" valign="top">
        <table width="626" height="414" border="0" cellpadding="0" cellspacing="0">
		<tr>
            <td align="left" valign="top" style="height: 51px">
               <img src="Images/img/103.jpg" width="763" height="51">                
            </td>
          </tr>
          <tr>
         
            <td height="318" align="center" valign="top" background="Images/img/104.jpg">
            <table width="717" border="0" cellpadding="0" cellspacing="0"> 
              <tr>
                  <td height="1" colspan="4" background="Images/img/85.jpg"></td>
                </tr>
                <tr>
                  
                  <td width="292" align="left" valign="middle" style="line-height:30px">【员工互动】</td>
                  <td width="425" align="left" valign="middle" style="line-height:30px">
					<a href="NewsYGHD.aspx?style=员工互动" class="aa">更多信息</a></td>
                </tr>
               
            </table>
              <table width="693" height="244" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="693" align="center" valign="top">
                    <table width="709" border="0" cellpadding="0" cellspacing="0" background="Images/img/p43.jpg">
                    <tr>
                      <td width="709" align="center" valign="top">                     
                      <%
                      foreach (News news in ygtdList)
                      {%>               
                      <table width="721" height="28" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="28" align="center" valign="middle" style="height: 28px">
                                <img src="Images/img/iecool_arrow_204.gif" width="14" height="11" />
                            </td>
                            <td width="693" align="left" valign="middle" style="height: 28px">
                                <a href="NewsYGTDById.aspx?id=<%=news.Id%>" class="aa"  title="<%=news.Title%>"><%=news.Title%></a>                               
                                </td>
                            </tr>
                        </table>
                       <% }
                       %>
                           
 <%--                       <table width="719" height="28" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="27" height="28" align="center" valign="middle">
                                <img src="Images/img/iecool_arrow_204.gif" width="14" height="11" /></td>
                            <td width="692" height="28" align="left" valign="middle">
                                <a href="ygtd_xx.asp?id=" class="aa"  title=""></a></td>
                          </tr>
                        </table>--%>
                        
           
                    </tr>
                  </table></td>
                </tr>
              </table>
              <table width="717" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="1" colspan="2" background="Images/img/85.jpg"></td>
                </tr>
                <tr>
                  <td height="30" align="left" valign="middle" style="line-height:30px">【员工风采】</td>
                  <td width="89" align="left" valign="middle" style="line-height:30px">
                    <a href="NewsYGHD.aspx?style=员工风采" class="aa">更多信息</a></td>
                </tr>
              </table>
              <table width="719" height="135" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle">
                  
                  
                  
                  
                  
                  
<script type="text/javascript">
var baseopacity=30
function slowhigh(which2){
imgobj=which2
browserdetect=which2.filters? "ie" : typeof which2.style.MozOpacity=="string"? "mozilla" : ""
instantset(baseopacity)
highlighting=setInterval("gradualfade(imgobj)",50)
}
function slowlow(which2){
cleartimer()
instantset(baseopacity)
}
function instantset(degree){
if (browserdetect=="mozilla")
imgobj.style.MozOpacity=degree/100
else if (browserdetect=="ie")
imgobj.filters.alpha.opacity=degree
}
function cleartimer(){
if (window.highlighting) clearInterval(highlighting)
}
function gradualfade(cur2){
if (browserdetect=="mozilla" && cur2.style.MozOpacity<1)
cur2.style.MozOpacity=Math.min(parseFloat(cur2.style.MozOpacity)+0.1, 0.99)
else if (browserdetect=="ie" && cur2.filters.alpha.opacity<100)
cur2.filters.alpha.opacity+=10
else if (window.highlighting)
clearInterval(highlighting)
}
</script>

<div id=demo style="OVERFLOW: hidden; WIDTH:700px; HEIGHT:136px">
  <table cellSpacing=0 cellPadding=0 border=0>  
    <tbody>
      <tr>
        <td id=demo1>
		<table  height="126" width="1014" border="0" cellpadding="0" cellspacing="0">  
          <tr>	  
            <%
              foreach (News news in ygfcList)
              {%>   		  
            <td align="center"  valign="middle">
			<table width="150" height="110" border="0" cellpadding="0" cellspacing="4" bgcolor="efefef">
              <tr>
                <td align="center" valign="middle" bgcolor="#FFFFFF"><a href="NewsYGTDById.aspx?id=<%=news.Id%>" ><img src="<%=news.Pic%>" alt="<%=news.Title%>" width="154" height="115" border="0" onload="javascript:DrawImage1(this);" ></a></td>
              </tr>
            </table>
              <table width="105" height="24" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="middle">
                    <a href="NewsYGTDById.aspx?id=<%=news.Id%>"  class="aa"><%=news.Title%></a></td>
                </tr>
              </table>
			  </td>	
		      <% }
              %>
          </tr>
        </table></td>
    <td id="demo2"></td></tr></tbody>
  </table>
</div>

<script type="text/javascript">
var speed=20
demo2.innerHTML=demo1.innerHTML
function Marquee(){
if(demo2.offsetWidth-demo.scrollLeft<=0)
 demo.scrollLeft-=demo1.offsetWidth
else{
 demo.scrollLeft++  
}  
}
var MyMar=setInterval(Marquee,speed)
demo.onmouseover=function(){clearInterval(MyMar)}
demo.onmouseout=function(){MyMar=setInterval(Marquee,speed)}
  </script>  
  
                             
                  
                  </td>
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

