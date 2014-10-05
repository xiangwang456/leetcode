<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="BillToRepairById.aspx.cs" Inherits="Admin_BillToRepairById" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript">
    function CheckForm()
    { 
        if(document.getElementById("<%=txtEndTime.ClientID%>").value <= document.getElementById("<%=txtBeginTime.ClientID%>").value )
        {
            alert("结束日期必须大于开始日期");
            document.getElementById("<%=txtEndTime.ClientID%>").focus();
            return false;
        }
        if(document.getElementById("<%=txtRepairCause.ClientID%>").value.length<20)
        {
            alert("维修原因不能少于10个字");
            document.getElementById("<%=txtRepairCause.ClientID%>").focus();
            return false;
        }
        return true;
    }
</script>
     <script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js" charset="gb2312"></script>
    <div style="width: 95%; height: 290px; text-align:left" id="pnlMain" runat="server">
            <!--头-->
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    
                    <td style="width: 179px; height: 13px; background-image: url(../img/main/main/main_leftUp.JPG); font-weight: bold; font-size: 12px; ">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
                        房间维修登记</td>
                    <td style="background-image: url(../img/main/main/main_centerUp.JPG); width: 610px;
                        height: 13px">
                        <asp:Label ID="Label1" runat="server" Height="25px"></asp:Label></td>
                    <td style="width: 12px; height: 13px; background-image: url(../img/main/main/main_rightUp.JPG);">
                        </td>
                </tr>
            </table>
            <!--中间-->
             <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <!--左-->
                    <td style="width: 9px; background-image: url(../img/main/main/main_leftCenter.JPG); height: 454px;"> </td><%--464--%>
                   
                    <!--内容-->
                    <td style="width: 780px; height: 440px; background-color: #f1f5f4;" valign="top"><%--450--%>
                        <p>&nbsp;</p>
                        <table width="100%">
                            <tr>
                                <td align="center">
                                    <span style="font-size:15px; font-family:楷体_GB2312">房间维修单</span>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: bold; font-size: 20pt;" align="center">
                                    <!--客人信息-->
                                    <table border="1"  id="msg" cellpadding="0" cellspacing="0" style="width: 99%;height: 25px; ">
                                        <tr>
                                            <td>待维修房号</td>
                                            <td style="text-align:left">                                                
                                                <asp:DropDownList ID="ddlRoomNumber" runat="server" DataSourceID="ObjectDataSource1" DataTextField="RoomNum" DataValueField="RoomNum">
                                                </asp:DropDownList><asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetRoomNumber"
                                                    TypeName="Hotel.BLL.RoomNumberBLL"></asp:ObjectDataSource>
                                            </td>
                                            <td>维修开始时间</td>
                                            <td style="text-align:left">                                                   
                                                <asp:TextBox ID="txtBeginTime" ReadOnly="true" runat="server"></asp:TextBox>
                                            </td>
                                            <td>维修结束时间</td>
                                            <td style="text-align:left">                                                   
                                                <asp:TextBox ID="txtEndTime" runat="server"    CssClass="Wdate" onFocus="new WdatePicker(this,'%Y-%M-%D %h:%m:%s',true,'default')" ></asp:TextBox>                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>维修状态</td>
                                            <td  colspan="5" style="text-align:left">      
                                                <asp:RadioButtonList ID="rdoRepairState" runat="server" RepeatDirection="Horizontal">
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>维修原因</td>
                                            <td  colspan="5" style="text-align:left">                                              
                                                <asp:TextBox ID="txtRepairCause" runat="server" TextMode="MultiLine" Columns="65" Rows="10"></asp:TextBox>
                                            </td>
                                        </tr>

                                    </table>
                                </td>
                            </tr>
                        </table>
                        
                        <!--结算信息-->
                        <table border="1" id="msg" cellpadding="0" cellspacing="0" style="width: 99%; height: 25px;">                           
                           <tr>
                                <td  height="22" colspan="10" align="right" style="text-align:right">
                                    总公司：美斯坦福大酒店&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    分公司：<asp:Label ID="lblSubcompany" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    部门：<asp:Label ID="lblDepartName" runat="server" Text="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    操作员：<asp:Label ID="lblOperator" runat="server" Text="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    时间：<asp:Label ID="lblNowTimes" runat="server" Text="" />
                                </td>
                            </tr>
                        </table>
                        <!--结算信息--><br />
                        <table  cellpadding="0" cellspacing="0" style="width: 99%; height: 25px;">
                            <tr>
                                <td align="center">
                                    <asp:Button ID="Button3" runat="server" Text="修&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改" CssClass="btn" OnClientClick="return CheckForm();" OnClick="Button3_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="Reset1" type="reset" value="重&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置" class="btn" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblErrNote" runat="server" Text="" ForeColor="red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                                    
                        
                    </td>
                    <!--右-->
                   <td style="width: 10px; background-image: url(../img/main/main/main_rightCenter.JPG); height: 454px;"></td><%--464--%>
                </tr>
            </table>
            
            <!--尾-->
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="width: 19px; background-image: url(../img/main/main/main_leftFoot.JPG); height: 6px;">
                    </td>
                    <td style="width: 760px; background-image: url(../img/main/main/main_centerFoot.JPG); height: 6px;">
                        <asp:Label ID="Label2" runat="server" Height="17px"></asp:Label></td>
                    <td style="width: 15px; background-image: url(../img/main/main/main_rightFoot.JPG); height: 6px;">
                    </td>
                </tr>
            </table>
        </div>
        
                <asp:Panel id="pnlOk" runat="server" Width="700px" Height="200px" Visible="false">
<BR /><FIELDSET style="WIDTH: 300px">
<TABLE width="100%"><TBODY><TR><TD style="FONT-WEIGHT: 100; FONT-SIZE: 14px" align=left>
&nbsp;&nbsp;&nbsp;&nbsp;提示信息 </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG height=1 alt="" src="Images/img/103.gif" width="100%" /> </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG src="Images/img/succ.gif" align=top />&nbsp;&nbsp;&nbsp;&nbsp;操作成功！ </TD></TR><TR><TD align=right>
<asp:Button id="Button5" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " PostBackUrl="~/Admin/RoomNumberManager.aspx" >
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 

        <asp:Panel id="pnlErr" runat="server" Width="700px" Height="200px" Visible="false">
<BR /><FIELDSET style="WIDTH: 300px">
<TABLE width="100%"><TBODY><TR><TD style="FONT-WEIGHT: 100; FONT-SIZE: 14px" align=left>
&nbsp;&nbsp;&nbsp;&nbsp;操作失败</TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG height=1 alt="" src="Images/img/103.gif" width="100%" /> </TD></TR><TR><TD align=left>&nbsp;&nbsp;&nbsp;&nbsp;
<IMG src="Images/img/err.gif" align=top />&nbsp;&nbsp;&nbsp;&nbsp;数据库异常，请联系管理员！ </TD></TR><TR><TD align=right>
<asp:Button id="Button6" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 " PostBackUrl="~/Admin/RoomNumberManager.aspx" >
</asp:Button> </TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 

</asp:Content>

