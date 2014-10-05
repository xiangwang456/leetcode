<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RoomTypeShow.ascx.cs" Inherits="RoomTypeShow" %>
<%@ Import Namespace="Hotel.Model" %>

    <div>
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
<div id=demo style="OVERFLOW: hidden; WIDTH:430px; HEIGHT:126px">
  <table cellSpacing="0" cellPadding="0" border="0">
      <TR>
        <TD id="demo1">
		<table  height="126" width="511" border="0" cellpadding="0" cellspacing="0">			  
          <tr>   
          <%
              foreach (RoomType type in listType)
              { %>
                  
       
            <td align="center"  valign="middle">			
			    <table width="156" height="104" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
                  <tr>
                    <td align="center" valign="middle" bgcolor="#FFF8DE">
                        <a href="RoomTypeById.aspx?id=<%=type.Id%>"  title="">
                            <img src="<%=type.Spic%>" alt="<%=type.Name%>" width="146" height="94" border="0" />
                        </a>
                    </td>
                  </tr>
                </table>
                  <table width="105" height="24" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td align="center" valign="middle">
                        <a href="RoomTypeById.aspx?id=<%=type.Id%>"  class="aa"><font color="#666F58" style=" font-size:11px;"><%=type.Name%></font></a>
                      </td>
                    </tr>
                </table>                
			  </td>		  
			       <% } %>
          </tr>
        </table>
      </TD>
    <TD id="demo2"></TD></TR>
  </table>
</div>
<script>

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

    </div>