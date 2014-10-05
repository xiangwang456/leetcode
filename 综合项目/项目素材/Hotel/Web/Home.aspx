<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" EnableViewState="true" CodeFile="Home.aspx.cs" Inherits="home" Title="Untitled Page" %>

<%@ Register Src="RoomTypeShow.ascx" TagName="RoomTypeShow" TagPrefix="uc1" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<script language="javascript">
function CheckFormUserLogin()
{
	if(document.getElementById("<%=txtLoginId.ClientID%>").value=="")
	{
		alert("请输入用户名！");
		document.getElementById("<%=txtLoginId.ClientID%>").focus();
		return false;
	}
	if(document.getElementById("<%=txtPwd.ClientID%>").value == "")
	{
		alert("请输入密码！");
		document.getElementById("<%=txtPwd.ClientID%>").focus();
		return false;
	}
	return true;
}
</script>

<table width="1003" height="222" border="0" cellpadding="0" cellspacing="0" background="Images/img2/15.jpg">
 <tr>
    <!--左边部分-->
    <td align="center" valign="top">
      <table width="964" height="194" border="0" cellpadding="0" cellspacing="0" background="Images/img2/18.jpg">
        <tr>
          <td width="10" align="left" valign="top">
            <img src="Images/img2/19.jpg" width="10" height="194" />
          </td>
          <td width="945" align="left" valign="top">		  
             <script type="text/javascript"> 
                var flashURL="Images/fla/top.swf"; 
                var flashWIDTH="945"; 
                var flashHEIGHT="194"; 
            </script> 
            <script type="text/javascript" src="JS/flash_view.js"></script>
		  </td>
          <td width="9" align="right" valign="top">
            <img alt="" src="Images/img2/17.jpg" width="9" height="194" />
          </td>
        </tr>
      </table>
      <table width="964" height="28" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top">
                <img alt="" src="Images/img2/20.jpg" width="182" height="28" />
            </td>
            <td align="right" valign="middle">
		        <font color="#593E34"><strong>今天是：</strong>
		        <script type="text/javascript">
function RunGLNL(){
var today=new Date();
var d=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
var DDDD=(today.getYear()<100 ? today.getYear()+1900:today.getYear())+"年"+(today.getMonth()+1)+"月"+today.getDate()+"日";
DDDD = DDDD + " " + d[today.getDay()];
DDDD = DDDD+ " " + (CnDateofDateStr(today));
//DDDD = DDDD+ " " + SolarTerm(today);
document.write(DDDD);
}
function DaysNumberofDate(DateGL){
return parseInt((Date.parse(DateGL)-Date.parse(DateGL.getYear()+"/1/1"))/86400000)+1;
}
function CnDateofDate(DateGL){
var CnData=new Array(
0x16,0x2a,0xda,0x00,0x83,0x49,0xb6,0x05,0x0e,0x64,0xbb,0x00,0x19,0xb2,0x5b,0x00,
0x87,0x6a,0x57,0x04,0x12,0x75,0x2b,0x00,0x1d,0xb6,0x95,0x00,0x8a,0xad,0x55,0x02,
0x15,0x55,0xaa,0x00,0x82,0x55,0x6c,0x07,0x0d,0xc9,0x76,0x00,0x17,0x64,0xb7,0x00,
0x86,0xe4,0xae,0x05,0x11,0xea,0x56,0x00,0x1b,0x6d,0x2a,0x00,0x88,0x5a,0xaa,0x04,
0x14,0xad,0x55,0x00,0x81,0xaa,0xd5,0x09,0x0b,0x52,0xea,0x00,0x16,0xa9,0x6d,0x00,
0x84,0xa9,0x5d,0x06,0x0f,0xd4,0xae,0x00,0x1a,0xea,0x4d,0x00,0x87,0xba,0x55,0x04
);
var CnMonth=new Array();
var CnMonthDays=new Array();
var CnBeginDay;
var LeapMonth;
var Bytes=new Array();
var I;
var CnMonthData;
var DaysCount;
var CnDaysCount;
var ResultMonth;
var ResultDay;
var yyyy=DateGL.getYear();
var mm=DateGL.getMonth()+1;
var dd=DateGL.getDate();
if(yyyy<100) yyyy+=1900;
if ((yyyy < 1997) || (yyyy > 2020)){
return 0;
}
Bytes[0] = CnData[(yyyy - 1997) * 4];
Bytes[1] = CnData[(yyyy - 1997) * 4 + 1];
Bytes[2] = CnData[(yyyy - 1997) * 4 + 2];
Bytes[3] = CnData[(yyyy - 1997) * 4 + 3];
if ((Bytes[0] & 0x80) != 0) {CnMonth[0] = 12;}
else {CnMonth[0] = 11;}
CnBeginDay = (Bytes[0] & 0x7f);
CnMonthData = Bytes[1];
CnMonthData = CnMonthData << 8;
CnMonthData = CnMonthData | Bytes[2];
LeapMonth = Bytes[3];
for (I=15;I>=0;I--){
CnMonthDays[15 - I] = 29;
if (((1 << I) & CnMonthData) != 0 ){
CnMonthDays[15 - I]++;}
if (CnMonth[15 - I] == LeapMonth ){
CnMonth[15 - I + 1] = - LeapMonth;}
else{
if (CnMonth[15 - I] < 0 ){CnMonth[15 - I + 1] = - CnMonth[15 - I] + 1;}
else {CnMonth[15 - I + 1] = CnMonth[15 - I] + 1;}
if (CnMonth[15 - I + 1] > 12 ){ CnMonth[15 - I + 1] = 1;}
}
}
DaysCount = DaysNumberofDate(DateGL) - 1;
if (DaysCount <= (CnMonthDays[0] - CnBeginDay)){
if ((yyyy > 1901) && (CnDateofDate(new Date((yyyy - 1)+"/12/31")) < 0)){
ResultMonth = - CnMonth[0];}
else {ResultMonth = CnMonth[0];}
ResultDay = CnBeginDay + DaysCount;
}
else{
CnDaysCount = CnMonthDays[0] - CnBeginDay;
I = 1;
while ((CnDaysCount < DaysCount) && (CnDaysCount + CnMonthDays[I] < DaysCount)){
CnDaysCount+= CnMonthDays[I];
I++;
}
ResultMonth = CnMonth[I];
ResultDay = DaysCount - CnDaysCount;
}
if (ResultMonth > 0){
return ResultMonth * 100 + ResultDay;}
else{return ResultMonth * 100 - ResultDay;}
}
function CnYearofDate(DateGL){
var YYYY=DateGL.getYear();
var MM=DateGL.getMonth()+1;
var CnMM=parseInt(Math.abs(CnDateofDate(DateGL))/100);
if(YYYY<100) YYYY+=1900;
if(CnMM>MM) YYYY--;
YYYY-=1864;
return CnEra(YYYY)+"年";
}
function CnMonthofDate(DateGL){
var CnMonthStr=new Array("零","正","二","三","四","五","六","七","八","九","十","冬","腊");
var Month;
Month = parseInt(CnDateofDate(DateGL)/100);
if (Month < 0){return "闰" + CnMonthStr[-Month] + "月";}
else{return CnMonthStr[Month] + "月";}
}
function CnDayofDate(DateGL){
var CnDayStr=new Array("零",
"初一", "初二", "初三", "初四", "初五",
"初六", "初七", "初八", "初九", "初十",
"十一", "十二", "十三", "十四", "十五",
"十六", "十七", "十八", "十九", "二十",
"廿一", "廿二", "廿三", "廿四", "廿五",
"廿六", "廿七", "廿八", "廿九", "三十");
var Day;
Day = (Math.abs(CnDateofDate(DateGL)))%100;
return CnDayStr[Day];
}
function DaysNumberofMonth(DateGL){
var MM1=DateGL.getYear();
MM1<100 ? MM1+=1900:MM1;
var MM2=MM1;
MM1+="/"+(DateGL.getMonth()+1);
MM2+="/"+(DateGL.getMonth()+2);
MM1+="/1";
MM2+="/1";
return parseInt((Date.parse(MM2)-Date.parse(MM1))/86400000);
}
function CnEra(YYYY){
var Tiangan=new Array("甲","乙","丙","丁","戊","己","庚","辛","壬","癸");
//var Dizhi=new Array("子(鼠)","丑(牛)","寅(虎)","卯(兔)","辰(龙)","巳(蛇)",
//"午(马)","未(羊)","申(猴)","酉(鸡)","戌(狗)","亥(猪)");
var Dizhi=new Array("子","丑","寅","卯","辰","巳","午","未","申","酉","戌","亥");
return Tiangan[YYYY%10]+Dizhi[YYYY%12];
}
function CnDateofDateStr(DateGL){
if(CnMonthofDate(DateGL)=="零月") return "　请调整您的计算机日期!";
else return "农历"+CnYearofDate(DateGL)+ " " + CnMonthofDate(DateGL) + CnDayofDate(DateGL);
}
function SolarTerm(DateGL){
var SolarTermStr=new Array(
"小寒","大寒","立春","雨水","惊蛰","春分",
"清明","谷雨","立夏","小满","芒种","夏至",
"小暑","大暑","立秋","处暑","白露","秋分",
"寒露","霜降","立冬","小雪","大雪","冬至");
var DifferenceInMonth=new Array(
1272060,1275495,1281180,1289445,1299225,1310355,
1321560,1333035,1342770,1350855,1356420,1359045,
1358580,1355055,1348695,1340040,1329630,1318455,
1306935,1297380,1286865,1277730,1274550,1271556);
var DifferenceInYear=31556926;
var BeginTime=new Date(1901/1/1);
BeginTime.setTime(947120460000);
for(;DateGL.getYear()<BeginTime.getYear();){
BeginTime.setTime(BeginTime.getTime()-DifferenceInYear*1000);
}
for(;DateGL.getYear()>BeginTime.getYear();){
BeginTime.setTime(BeginTime.getTime()+DifferenceInYear*1000);
}
for(var M=0;DateGL.getMonth()>BeginTime.getMonth();M++){
BeginTime.setTime(BeginTime.getTime()+DifferenceInMonth[M]*1000);
}
if(DateGL.getDate()>BeginTime.getDate()){
BeginTime.setTime(BeginTime.getTime()+DifferenceInMonth[M]*1000);
M++;
}
if(DateGL.getDate()>BeginTime.getDate()){
BeginTime.setTime(BeginTime.getTime()+DifferenceInMonth[M]*1000);
M==23?M=0:M++;
}
var JQ;
if(DateGL.getDate()==BeginTime.getDate()){
JQ="　 今天是<font color='#FF9999'><b>"+SolarTermStr[M] + "</b></font>";
}
else if(DateGL.getDate()==BeginTime.getDate()-1){
JQ="　 明天是<font color='#FF9999'><b>"+SolarTermStr[M] + "</b></font>";
}
else if(DateGL.getDate()==BeginTime.getDate()-2){
JQ="　 后天是<font color='#FF9999'><b>"+SolarTermStr[M] + "</b></font>";
}
else{
JQ=" "
if(DateGL.getMonth()==BeginTime.getMonth()){
JQ+="　 本月";
}
else{
JQ+="　 下月";
}
JQ+=BeginTime.getDate()+"日"+"<font color='#FF9999'><b>"+SolarTermStr[M]+"</b></font>";
}
return JQ;
}
function CAL()
{}
RunGLNL();


  function  CurentTime(){  
        var  now  =  new  Date();  
        var  hh  =  now.getHours();  
        var  mm  =  now.getMinutes();  
        var  ss  =  now.getTime()  %  60000;  
        ss  =  (ss  -  (ss  %  1000))  /  1000;  
        var  clock  =  hh+':';  
        if  (mm  <  10)  clock  +=  '0';  
        clock  +=  mm+':';  
        if  (ss  <  10)  clock  +=  '0';  
        clock  +=  ss;  
        return(clock);  }  
function  refreshCalendarClock(){  
document.all.calendarClock4.innerHTML  =  CurentTime();  }
document.write('&nbsp;<img src="Images/img/time.gif">&nbsp;<font  id="calendarClock4"  >  </font>&nbsp;&nbsp;');
setInterval('refreshCalendarClock()',1000);
</script>

                </font>	
		    </td>
          </tr>
        </table>
      </td>
    </tr>
 </table>
  
 <table width="1003" height="10" border="0" cellpadding="0" cellspacing="0" bgcolor="FFF5CE">
    <tr>
      <td></td>
    </tr>
  </table>

<table width="1003" height="10" border="0" cellpadding="0" cellspacing="0" background="Images/img2/16.jpg" bgcolor="FFF5CE">
  <tr>
     <td width="267"  height="500" align="center" valign="top">
     
        <!-- 今日天气标题部 -->
        <table width="233" height="46" border="0" cellpadding="0" cellspacing="0" background="Images/img2/27.jpg">
          <tr>
            <td width="32">　</td>
            <td width="201" align="left" valign="top">
                <table width="180" height="38" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td align="left" valign="bottom"><strong>会员登陆&nbsp;</strong></td>
                  </tr>
                </table>
            </td>
          </tr>
        </table>        
       <!--特惠精选头部-->
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/28.jpg" width="232" height="16" alt="" /></td>
          </tr>
        </table>
        <!--特惠精选中间部-->
        <table width="232" height="163" border="0" cellpadding="0" cellspacing="0" background="Images/img2/29.jpg">
          <tr>
            <td height="163" align="center" valign="top">
              <table width="200" height="200" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="top">
                    <table width="191" height="190" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="190" align="left" valign="top" style="line-height:22px">
                             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                <div runat="server" id="divLogin">
                              <table>
                                <tr>
                                    <td colspan="2"> <font color="red"> 游客您好，更多精彩请先登录</font>
                                    </td>                                       
                                </tr>
                                <tr>
                                    <td align="left" width="50px">用户名：
                                    </td>        
                                    <td align="left">
                                       <asp:TextBox ID="txtLoginId" runat="server" Width="92px" CssClass="LeaveWord" ></asp:TextBox>
                                    </td>                                 
                                </tr>
                                <tr>
                                    <td align="left" width="50px">密   码：
                                    </td>        
                                    <td align="left">
                                       <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="92px" CssClass="LeaveWord"></asp:TextBox>
                                    </td>                                 
                                </tr>
                                <tr>
                                    <td align="left" width="50px">验证码：
                                    </td>        
                                    <td align="left">
                                       <asp:TextBox ID="txtValidateCode" runat="server" Width="65px" CssClass="LeaveWord"></asp:TextBox>
                                       <img src="Img.aspx" alt="" align="absMiddle" height="20px" />
                                    </td>                                 
                                </tr>
                                <tr>
                                    <td align="left" colspan="2">
                                        <input id="btnLogin" type="submit" onclick="return CheckFormUserLogin();" value=" 登 陆 " style="font-size: 9pt;  color: #000000; background-color: #EAEAF4;height:20px;  " onMouseOver ="this.style.backgroundColor='#ffffff'" onMouseOut ="this.style.backgroundColor='#EAEAF4'" title="确定" runat="server" onserverclick="btnLogin_ServerClick">
                                        <input type="reset"  value=" 重 输 " style="font-size: 9pt;  color: #000000; background-color: #EAEAF4;height:20px;" onMouseOver ="this.style.backgroundColor='#ffffff'" onMouseOut ="this.style.backgroundColor='#EAEAF4'" title="重输">
                                    </td>                                        
                                </tr>
                            </table>
                            </div>
                            <div id="divShowCustomer" runat="server" style="display:none">
                               <table width="100%">
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="lblCustomerName" runat="server" Text=""></asp:Label>
                                        &nbsp;&nbsp;您好
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" nowrap="nowrap">
                                        您目前有<asp:Label ID="lblPoint" runat="server" Text=""></asp:Label>积分,
                                        预存款<asp:Label ID="lblBalance" runat="server" Text=""></asp:Label>元                             
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl="CustomerShowData.aspx" runat="server" Text="<font color='red'>进入会员中心</font>" CssClass="bb"></asp:HyperLink>                         
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:LinkButton ID="lnkBtnLogOut" runat="server" Text="注销退出"  CssClass="bb" OnClick="lnkBtnLogOut_Click" ></asp:LinkButton>                       
                                    </td>
                                </tr>
                               </table>
                            </div> 
                            <asp:Label ID="lblScript" ForeColor="red" runat="server" Text=""></asp:Label>
                                  
                                </ContentTemplate>
                              </asp:UpdatePanel>
                               
                          </td>
                        </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
         <!--特惠精选尾部-->
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/30.jpg" width="232" height="16" alt="" /></td>
          </tr>
        </table>
        
        
         <!-- 网站直通车标题部 -->
        <table width="233" height="46" border="0" cellpadding="0" cellspacing="0" background="Images/img2/27.jpg">
          <tr>
            <td width="32">　</td>
            <td width="201" align="left" valign="top"><table width="180" height="38" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="left" valign="bottom"><strong>网站直通车&nbsp;</strong></td>
                </tr>
            </table></td>
          </tr>
        </table>
        
         <!-- 网站直通车顶部 -->
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/28.jpg" width="232" height="16" alt="" /></td>
          </tr>
        </table>
        
        <!--网站直通车内容部-->
         <table width="232" height="223" border="0" cellpadding="0" cellspacing="0" background="Images/img2/29.jpg">
          <tr>
            <!--客房-->
            <td align="center" valign="top">
              <table width="208" border="0" cellspacing="0" cellpadding="0">
              <!--小方格头部-->
                <tr>
                  <td align="left" valign="top">
                    <img src="Images/img2/40.jpg" width="208" height="9" alt="" />
                  </td>
                </tr>
                <!--小方格中部-->
                <tr>
                  <td height="60" align="center" valign="top" background="Images/img2/41.jpg">
                    <table width="195" height="56" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="87" rowspan="2" align="center" valign="middle">
                            <img src="Images/img3/05.jpg" width="83" height="53" alt="" />
                        </td>
                        <td width="108" height="28" align="center" valign="middle">客房
                        </td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">
                            <a href="Kf.aspx" class="bb">&gt;&gt;&gt;点击查看</a>
                        </td>
                      </tr>
                    </table>
                </td>
              </tr>
            <!--小方格尾部-->
            <tr>           
            <td align="left" valign="top">
               <img src="Images/img2/42.jpg" width="208" height="6" alt="" />
            </td>
          </tr>
         </table>         
         <!--横线分隔符-->
        <table width="217" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center" valign="middle">
                <img src="Images/img2/39.jpg" width="217" height="12" alt="" />
            </td>
          </tr>
      </table>         
            
            
            <!--会议室-->
             <table width="208" border="0" cellspacing="0" cellpadding="0">
              <!--小方格头部-->
                <tr>
                  <td align="left" valign="top">
                    <img src="Images/img2/40.jpg" width="208" height="9" alt="" />
                  </td>
                </tr>
                <!--小方格中部-->
                <tr>
                  <td height="60" align="center" valign="top" background="Images/img2/41.jpg">
                    <table width="195" height="56" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="87" rowspan="2" align="center" valign="middle">
                            <img src="Images/img3/06.jpg" width="83" height="53" alt="" />
                        </td>
                        <td width="108" height="28" align="center" valign="middle">会议室
                        </td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">
                            <a href="Conference.aspx" class="bb">&gt;&gt;&gt;点击查看</a>
                        </td>
                      </tr>
                    </table>
                </td>
              </tr>
            <!--小方格尾部-->
            <tr>           
            <td align="left" valign="top">
               <img src="Images/img2/42.jpg" width="208" height="6" alt="" />
            </td>
          </tr>
         </table>         
         <!--横线分隔符-->
        <table width="217" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center" valign="middle">
                <img src="Images/img2/39.jpg" width="217" height="12" alt="" />
            </td>
          </tr>
      </table> 
      
      
      <!--酒吧-->
       <table width="208" border="0" cellspacing="0" cellpadding="0">
              <!--小方格头部-->
                <tr>
                  <td align="left" valign="top">
                    <img src="Images/img2/40.jpg" width="208" height="9" alt="" />
                  </td>
                </tr>
                <!--小方格中部-->
                <tr>
                  <td height="60" align="center" valign="top" background="Images/img2/41.jpg">
                    <table width="195" height="56" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="87" rowspan="2" align="center" valign="middle">
                            <img src="Images/img3/07.jpg" width="83" height="53" alt="" />
                        </td>
                        <td width="108" height="28" align="center" valign="middle">酒吧
                        </td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">
                            <a href="WineBar.aspx" class="bb">&gt;&gt;&gt;点击查看</a>
                        </td>
                      </tr>
                    </table>
                </td>
              </tr>
            <!--小方格尾部-->
            <tr>           
            <td align="left" valign="top">
               <img src="Images/img2/42.jpg" width="208" height="6" alt="" />
            </td>
          </tr>
         </table>         
         <!--横线分隔符-->
        <table width="217" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center" valign="middle">
                <img src="Images/img2/39.jpg" width="217" height="12" alt="" />
            </td>
          </tr>
      </table> 
      
      <!--健身娱乐-->
       <table width="208" border="0" cellspacing="0" cellpadding="0">
              <!--小方格头部-->
                <tr>
                  <td align="left" valign="top">
                    <img src="Images/img2/40.jpg" width="208" height="9" alt="" />
                  </td>
                </tr>
                <!--小方格中部-->
                <tr>
                  <td height="60" align="center" valign="top" background="Images/img2/41.jpg">
                    <table width="195" height="56" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="87" rowspan="2" align="center" valign="middle">
                            <img src="Images/img1/20081712649156.jpg" width="83" height="53" alt="" />
                        </td>
                        <td width="108" height="28" align="center" valign="middle">健身娱乐
                        </td>
                      </tr>
                      <tr>
                        <td align="center" valign="middle">
                            <a href="HealthFun.aspx" class="bb">&gt;&gt;&gt;点击查看</a>
                        </td>
                      </tr>
                    </table>
                </td>
              </tr>
            <!--小方格尾部-->
            <tr>           
            <td align="left" valign="top">
               <img src="Images/img2/42.jpg" width="208" height="6" alt="" />
            </td>
          </tr>
         </table>         

      
         </td>
       </tr>
     </table>
        <!--网站直通车尾部-->
       <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top">
                <img src="Images/img2/30.jpg" width="232" height="16" />
            </td>
          </tr>
        </table>        
    </td>
    
    
    
    
    
    
    <!--中间部分-->
    <td width="469" align="center" valign="top">
      <table width="441" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="203" height="30" align="left" valign="middle"><strong><%=Master.hotelInfo.Name%>简介</strong></td>
          <td width="238" align="right" valign="middle">
            <font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:#6E4B25;">
                <%=Master.hotelInfo.NameOfEnglish %>
            </font>
          </td>
        </tr>
      </table>
       <table width="441" border="0" cellspacing="0" cellpadding="0">
        <tr>
           <td align="left" valign="top">
             <img src="Images/img2/31.jpg" width="441" alt="" height="10" />
           </td>
        </tr>
      </table>      
       
     <table width="441" height="150" border="0" cellpadding="0" cellspacing="0" background="Images/img2/32.jpg">
        <tr>
          <td align="center" valign="top">
             <table width="426" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="140" align="left" valign="top" style="line-height:22px">     
                      <%=Master.GetCut(Master.hotelInfo.Content,350) %>
                </td>
              </tr>
              <tr>
                <td align="right" valign="top" style="line-height:22px">                    <img src="Images/img/06.jpg" width="32" height="20" align="absmiddle" />                    <a href="HotelContent.aspx" class="bb">查看详细信息</a>
                </td>
              </tr>
             </table>             
          </td>
        </tr>
      </table>

      <!--客房展示-->
       <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/33.jpg" width="441" height="10" /></td>
          </tr>
        </table>
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>　</td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="203" height="30" align="left" valign="middle"><strong>客房展示</strong>&nbsp;</td>
            <td width="238" align="right" valign="middle"><a href="Kf.aspx" class="bb">详细介绍</a></td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/31.jpg" width="441" height="10" /></td>
          </tr>
        </table>
       
        <table width="441" height="130" border="0" cellpadding="0" cellspacing="0" background="Images/img2/32.jpg">
          <tr>
            <td align="center" valign="bottom">
                <uc1:RoomTypeShow id="RoomTypeShow1" runat="server">
                </uc1:RoomTypeShow>
            </td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/33.jpg" width="441" height="10" /></td>
          </tr>
        </table>  
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10" align="left" valign="middle"></td>
          </tr>
        </table>
      
      <!--最近动态-->
       <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="203" height="30" align="left" valign="middle"><strong>最新动态</strong>&nbsp;</td>
            <td width="238" align="right" valign="middle"><a href="NewsZXDT.aspx" class="bb">更多信息</a></td>
          </tr>
        </table>
        <table width="441" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/31.jpg" width="441" height="10" alt="" /></td>
          </tr>
        </table>
        
        <!--最近内容动态-->
        <table width="441" height="150" border="0" cellpadding="0" cellspacing="0" background="Images/img2/32.jpg">
          <tr>
            <td align="center" valign="top">
                <table width="428" height="175" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td align="left" valign="top">                  
                       
                        <%
                            foreach (Hotel.Model.News news in listZXDT)
                            {  %>
                            <table width="420" height="28" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="27"  align="center" valign="middle" style="height: 15px">
                                <img src="Images/img/iecool_arrow_204.gif" width="14" height="11" />
                              </td>
                              <td width="372"  align="left" valign="middle" style="height: 15px">
                                <a href="NewsZXDTById.aspx?id=<%=news.Id%>" class="bb"  title="AA"><%=news.Title%></a>
                              </td>
                              <td width="101"  align="center" valign="middle" style="height: 15px"><%=string.Format("{0:yyyy-MM-dd}",news.CreateDate)%></td>
                            </tr>
                            <tr>
                              <td height="1" colspan="3"  bgcolor="#DCCA9C"></td>
                            </tr>
                         </table>  
                                              
                           <% }
                         %>            

      	            </td>      	            
                 </tr>         
                
                </table>
              </td>              
          </tr>
        </table> 
    </td>
    
    
    
    
    
    
    
    
       <!--右边部分-->    
       <td width="267" align="center" valign="top">
       <!--特惠精选标题部-->
        <table width="233" height="46" border="0" cellpadding="0" cellspacing="0" background="Images/img2/27.jpg">
         <tr>
          <td width="32">　</td>
             <td width="201" align="left" valign="top">
                <table width="180" height="38" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td align="left" valign="bottom">
                        <strong>特惠精选&nbsp;</strong>&nbsp;
                        <a href="Favour.aspx" class="bb">更多信息</a>
                    </td>
                  </tr>
              </table>
            </td>
         </tr>
        </table>
        <!--特惠精选头部-->
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/28.jpg" width="232" height="16" alt="" /></td>
          </tr>
        </table>
        <!--特惠精选中间部-->
        <table width="232" height="163" border="0" cellpadding="0" cellspacing="0" background="Images/img2/29.jpg">
          <tr>
            <td height="163" align="center" valign="top">
              <table width="200" height="200" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center" valign="top">
                    <table width="191" height="190" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="190" align="left" valign="top" style="line-height:22px">
                            <marquee direction="up" scrollamount="1" scrolldelay="4" onMouseOver="this.stop();" onMouseOut="this.start();" width="190" height="190">
                              <font color="#666F58">
                                <%=favour.Content %>
                              </font>
                            </marquee>
                          </td>
                        </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
         <!--特惠精选尾部-->
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/30.jpg" width="232" height="16" alt="" /></td>
          </tr>
        </table>
        <!--员工天地标题部-->
        <table width="233" height="46" border="0" cellpadding="0" cellspacing="0" background="Images/img2/27.jpg">
          <tr>
            <td width="32">　</td>
            <td width="201" align="left" valign="top">
              <table width="197" height="38" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="left" valign="bottom"><strong>员工天地&nbsp;</strong>&nbsp;
                    <a href="NewsYGTD.aspx" class="bb">更多信息</a>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        <!--员工天地头部-->
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top"><img src="Images/img2/28.jpg" width="232" height="16" alt="" /></td>
          </tr>
        </table>
         <!--员工天地中间部-->
        <table width="232" border="0" cellpadding="0" cellspacing="0" background="Images/img2/29.jpg">
          <tr>
            <td align="center" valign="top">
             <!--员工天地内部图片部分-->
                <table width="208" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="168" align="center" valign="middle">
                          <table border="0" cellpadding="0" cellspacing="5" bgcolor="#FEEEB3">
                                <tr>
                                    <td height="73" align="center" valign="middle" bgcolor="#FFFFFF">				
					                    <img src="<%=YGJY.Pic%>" width="194" height="144" alt="" />
					                </td>             
                                </tr>
                          </table>
                          
				    </td>
                  </tr>
                  <tr>
                    <td height="25" align="left">【员工精英】<a href="NewsYGTDById.aspx?id=<%=YGJY.Id%>" class="bb">员工精英</a>
                        
                    </td>
                  </tr>
                </table>
                <!--员工天地内部分隔符-->
                <table width="217" border="0" cellspacing="0" cellpadding="0">
                   <tr>
                      <td align="center" valign="middle">
                        <img src="Images/img2/39.jpg" width="217" height="12"  alt="" />
                      </td>
                   </tr>
                </table>
                
                 <%
                foreach (Hotel.Model.News news in listYGHD)
                {  %>
                <table width="214" height="28" border="0" cellpadding="0" cellspacing="0">
                   <tr>
                      <td width="24" height="28" align="center" valign="middle">
                                <img src="Images/img/iecool_arrow_204.gif" width="14" height="11" alt="" />
                      </td>
                      <td width="190" height="28" align="left" valign="middle">
                        <a href="NewsYGTDById.aspx?id=<%=news.Id%>" class="aa"  title="">
                            <%=news.Title%>
                        </a>
                      </td>
                   </tr>
              </table>
                                      
               <% }
             %>   
                         
            </td>
          </tr>         
         </table>       

              
        <!--员工天地尾部-->
        <table width="232" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top">
                <img src="Images/img2/30.jpg" width="232" height="16" />
            </td>
          </tr>
        </table>
    </td> 
    
  </tr>
</table>
   <!--Foot页角前面一部分 -->
  <table width="1003" height="10" border="0" cellpadding="0" cellspacing="0" bgcolor="FFF5CE">
    <tr>
      <td></td>
    </tr>
  </table>
</asp:Content>

