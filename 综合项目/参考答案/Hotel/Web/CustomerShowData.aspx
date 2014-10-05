<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CustomerShowData.aspx.cs" Inherits="CustomerShowData" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table width="95%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#CCCCCC" borderColorDark=#ffffff bgcolor="#F9F9F9">
            <tr>
              <td height="35" colspan="2" ><div align="center"><font color="#FF0000"><b>
                 <%=user.LoginId%>(卡号:<%=user.CardNo%>)会员资料</b></font></div></td>
            </tr>
            <tr>
              <td height="25" colspan="2" align="left"> 你现在拥有<font color="#ff0000"><b><%--<%=user.Point%>--%></b></font>点积分 ，
                    预存款：<font color="#ff0000"><b>
                    <%--<%=string.Format("{0:F2}",user.Balance)%>--%>
                    </b></font> RMB
              </td>
            </tr>
            <tr>
              <td height="30" colspan="2" align="left"><font color="#FF6600">会员状态</font></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right">上次进站时间:</td>
               <td width="74%"  align="left"><%=user.LastOnLineTime%></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right"><font class="medium">上线次数:</font></td>
              <td width="74%"  align="left"><%=user.LineCount%></td>
            </tr>
            <tr>
              <td height="30" colspan="2"  align="left"><font color="#FF6600">会员基本资料</font></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >用户名:</td>
              <td width="74%"  align="left"><%=user.LoginId%></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >性别:</td>
              <td width="74%"  align="left"><%=user.Sex%></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >E-mail:</td>
              <td width="74%"  align="left"><%=user.Email%></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >注册日期:</td>
              <td width="74%"  align="left"><%=user.CreateTime%></td>
            </tr>
            <tr>
              <td height="30" colspan="2"  align="left"><font color="#FF6600">会员补充资料</font></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" ><font class="medium">真实姓名:</font></td>
              <td width="74%"  align="left"><%=user.RealName%></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right"><font class="medium">邮编:</font></td>
              <td width="74%"  align="left"><%=user.Zip%></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >联系电话:</td>
              <td width="74%"  align="left"><%=user.Tel%></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right" >联系地址:</td>
              <td width="74%"  align="left"><%=user.Address%></td>
            </tr>
            <tr>
              <td width="26%" height="19" align="right">身份证编号:</td>
              <td width="74%"  align="left"><%=user.IdentityCardNo%></td>
            </tr>
            <tr>
              <td width="26%" height="25" align="right">工作:</td>
              <td width="74%"  align="left"><%=user.Work%></td>
            </tr>
         </table> 

</asp:Content>

