<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kf.aspx.cs" Inherits="Kf" Title="Untitled Page" %>
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
            <td width="405" height="25" align="left" valign="middle">&nbsp;
                <font style="font-weight:bold; font-size:15px; color:6E4B25;">客房展示</font>
            </td>
            <td width="227" align="right" valign="middle">
                <font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:6E4B25;">
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
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top" style="line-height:20px"><p>&nbsp;&nbsp;&nbsp;&nbsp;客房面积达45平方米，装修豪华、舒适高雅，并配有网络信息电视、互联网、电脑等现代化设施。 </p><p>
&nbsp;&nbsp;&nbsp;&nbsp;富含天然矿物质的地热温泉接通到每间客房，有利于缓解疲劳，美体养颜，促进血液循环，让你您尽情地享受休闲养生，感受绿色健康。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;房间内首家配备的内置机顶盒网络数字电视让您在CNN、BBC、NHK、国际电影频道、凤凰卫视等卫星电视频道和数字电影频道中感受全球瞬间变化，领略大千世界。 </p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;位于酒店六楼的行政楼层，设有商务洽谈室和贵宾接待厅。房间内配有电脑、传真、多功能电熨斗、熨衣板和雨伞等为您的商旅生活提供意想不到的超值享受。 </p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;总统套房庄重高雅，壅容绚丽，提供24小时贴身管家服务，尽显搁下尊贵显赫的身份和超群的品位。              </p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;酒店贵宾别墅区环境优雅，六栋别墅风格别具，体验舒适豪华，尽享成功喜悦。</p>
              <table width="537" height="97" border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="261" align="center" valign="middle" style="line-height:20px">
                    <a href="PriceList.aspx" >
                        <img src="Images/img/86.jpg" width="262" height="51" border="0" />
                    </a>
                  </td>
                  <td width="292" align="center" valign="middle" style="line-height:20px">
                    <a href="RoomType.aspx">
                        <img src="Images/img/48.jpg" alt="查看客房特设及价格" width="270" height="51" border="0" align="right" />
                    </a>
                    
                  </td>
                </tr>
              </table>              
              </td>
          </tr>
        </table>
        <table width="634" height="50" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
      </table></td>
      <td width="87" align="left" valign="top" style="background:url(Images/img/46.jpg); background-position:bottom; background-repeat:no-repeat;">
        <img src="Images/img/45.jpg" width="87" height="251" />
      </td>
    </tr>
  </table>

</asp:Content>

