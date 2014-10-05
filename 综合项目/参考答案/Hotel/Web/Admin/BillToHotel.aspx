<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"  EnableEventValidation="false" CodeFile="BillToHotel.aspx.cs" Inherits="Admin_BillToHotel" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <script type="text/javascript">    
    function ChangProvice()
    {
        document.getElementById("<%=ddlProvice.ClientID%>").length=0;
        if(document.getElementById("<%=ddlCountry.ClientID%>").value=="美国")  
        {      
            document.getElementById("<%=ddlProvice.ClientID%>").add(new Option("华盛顿","华盛顿"));
            document.getElementById("<%=ddlProvice.ClientID%>").add(new Option("纽约","纽约"));
        }
        if(document.getElementById("<%=ddlCountry.ClientID%>").value=="法国")    
        {    
            document.getElementById("<%=ddlProvice.ClientID%>").add(new Option("巴黎","巴黎"));
        }
        if(document.getElementById("<%=ddlCountry.ClientID%>").value=="德国")      
        {  
            document.getElementById("<%=ddlProvice.ClientID%>").add(new Option("柏林","柏林"));
        }
        if(document.getElementById("<%=ddlCountry.ClientID%>").value=="中国大陆")     
        {   
            document.getElementById("<%=ddlProvice.ClientID%>").add(new Option("上海","上海"));
            document.getElementById("<%=ddlProvice.ClientID%>").add(new Option("安徽","安徽"));
            document.getElementById("<%=ddlProvice.ClientID%>").add(new Option("山东","山东"));
            document.getElementById("<%=ddlProvice.ClientID%>").add(new Option("江苏","江苏"));
        }
            
    }      

    function CheckForm()
    {
         if(document.getElementById("<%=txtName.ClientID%>").value=="")
         {
            alert("姓名不能为空！");
            document.getElementById("<%=txtName.ClientID%>").focus();
            return false;
         }
         if(document.getElementById("<%=txtIdentityNo.ClientID%>").value=="")
         {
            alert("证件号码不能为空！");
            document.getElementById("<%=txtIdentityNo.ClientID%>").focus();
            return false;
         }
         if(document.getElementById("<%=txtAddress.ClientID%>").value=="")
         {
            alert("详细地址不能为空！");
            document.getElementById("<%=txtAddress.ClientID%>").focus();
            return false;
         }
         if(document.getElementById("<%=txtTel.ClientID%>").value=="")
         {
            alert("电话不能为空！");
            document.getElementById("<%=txtTel.ClientID%>").focus();
            return false;
         }
         return true;
    }
    </script>
    <script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js" charset="gb2312"></script>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div style="width: 95%; height: 290px; text-align:left" id="pnlMain" runat="server">
            <!--头-->
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    
                    <td style="width: 179px; height: 13px; background-image: url(../img/main/main/main_leftUp.JPG); font-weight: bold; font-size: 12px; ">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
                        新客入住登记</td>
                    <td style="background-image: url(../img/main/main/main_centerUp.JPG); width: 625px;
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
                                    <span style="font-size:17px;">新客入住登记</span>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: bold; font-size: 20pt;" align="center">
                                    <!--客人信息-->
                                    <table border="2" id="msg" cellpadding="0" cellspacing="0" style="width: 99%;height: 25px">
                                        <tr>
                                            <td>
                                                主客姓名
                                            </td>
                                            <td style="width: 110px; height: 20px">
                                                <asp:TextBox ID="txtName" runat="server" Height="20px" Width="110px" Font-Size="9pt" /><%--Width="85px"--%>
             <%--                                   <asp:ImageButton ID="ImageButton1" runat="server" Height="11px" Style="top: 1px" Width="18px" />--%>
                                            </td>
                                            <td>
                                                证件类型</td>
                                            <td style="width: 149px; height: 20px">
                                                <asp:DropDownList ID="ddlCertificateType" runat="server" Width="148px" Font-Size="9pt">
                                                    <asp:ListItem Text="身份证" Value="身份证"></asp:ListItem>
                                                    <asp:ListItem Text="学生证" Value="学生证"></asp:ListItem>
                                                    <asp:ListItem Text="军官证" Value="军官证"></asp:ListItem>
                                                    <asp:ListItem Text="驾驶证" Value="驾驶证"></asp:ListItem>
                                                    <asp:ListItem Text="护照" Value="护照"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                证件号码</td>
                                            <td style="width: 158px; height: 20px">
                                                <asp:TextBox ID="txtIdentityNo" runat="server" Height="20px" Width="151px" Font-Size="9pt" />
                                             </td>
                                            <td>
                                                性别</td>
                                            <td style="width: 39px; height: 20px" colspan="2">
                                                <asp:RadioButtonList ID="rdolistSex" runat="server" RepeatDirection="Horizontal" RepeatLayout="table">
                                                    <asp:ListItem Text='男' Value="男" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Text='女' Value="女"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>                                           
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                来自区域</td>
                                            <td style="width: 110px; height:20px">
                                                <asp:DropDownList ID="ddlCountry" runat="server" Height="20px" Width="110px" onchange="ChangProvice();" Font-Size="9pt">
                                                    <asp:ListItem Text="中国大陆" Value="中国大陆"></asp:ListItem>
                                                    <asp:ListItem Text="美国" Value="美国"></asp:ListItem>
                                                    <asp:ListItem Text="法国" Value="法国"></asp:ListItem>
                                                    <asp:ListItem Text="德国" Value="德国"></asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td>
                                                省市地区</td>
                                            <td style="width: 149px; height: 20px">                                           
                                                <asp:DropDownList ID="ddlProvice" runat="server" Width="148px">
                                                    <asp:ListItem Text="上海" Value="上海"></asp:ListItem>
                                                    <asp:ListItem Text="安徽" Value="安徽"></asp:ListItem>
                                                    <asp:ListItem Text="山东" Value="山东"></asp:ListItem>
                                                    <asp:ListItem Text="江苏" Value="江苏"></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                详细地址</td>
                                            <td  colspan="4"  style="height: 20px">
                                                <asp:TextBox ID="txtAddress" runat="server"  Height="20px" Width="100%" Font-Size="9pt" />
                                            </td>

                                            
                                        </tr>
                                        <tr style="color: #000000">
                                            <td>
                                                客人类型</td>
                                            <td style="width: 110px; height: 20px">
                                                <asp:DropDownList ID="ddlCustomerType" runat="server" Width="110px" Font-Size="9pt">
                                                    <asp:ListItem Text="散客" Value="散客"></asp:ListItem>
                                                    <asp:ListItem Text="团队" Value="团队"></asp:ListItem>
                                                    <asp:ListItem Text="内部" Value="内部"></asp:ListItem>
                                                    <asp:ListItem Text="协议单位" Value="协议单位"></asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td align="left">
                                                来&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;源</td>
                                            <td style="width: 149px; height: 20px">
                                                <asp:DropDownList ID="ddlCustomerResource" runat="server" Height="20px" Width="148px" Font-Size="9pt">
                                                    <asp:ListItem Text="自入" Value="自入"></asp:ListItem>
                                                    <asp:ListItem Text="业务员介绍" Value="业务员介绍"></asp:ListItem>
                                                    <asp:ListItem Text="参加会展" Value="参加会展"></asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td>
                                                &nbsp;备注信息
                                            </td>
                                            <td colspan="4" style="height: 20px">
                                                <asp:TextBox ID="txtCustomerMark" runat="server"  Height="20px" Width="100%" Font-Size="9pt" />
                                             </td>
                                        </tr>
                                        
                                        
                                        <tr style="color: #000000">
                                            <td>
                                                电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话</td>
                                            <td style="width: 110px; height: 20px">
                                                  <asp:TextBox ID="txtTel" runat="server" Height="20px" Width="110px" Font-Size="9pt" />
                                            </td>
                                            
                                            <td style="width: 149px; height: 20px" colspan="2" align="left">
                                                <%--<asp:RadioButton ID="rdoCommon" runat="server"  Text="普通" onclick="IsCommon();" Checked="true" GroupName="a" OnCheckedChanged="rdoCommon_CheckedChanged" />
                                                <asp:RadioButton ID="rdoCustomer" runat="server"  Text="会员" onclick="IsMember();"  GroupName="a" />--%>
                                                <asp:RadioButtonList ID="rdolistUserType" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" RepeatLayout="table" OnSelectedIndexChanged="rdolistUserType_SelectedIndexChanged">
                                                    <asp:ListItem Text='普通' Value="普通" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Text='会员' Value="会员"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                            
                                            <td colspan="5" style=" display:none" id="memberId"  runat="server">
                                                卡号
                                                <asp:TextBox ID="txtCardNo" runat="server"  Height="20px" Width="120" Font-Size="9pt" />
                                                密码
                                                <asp:TextBox ID="txtPwd" runat="server"  Height="20px" Width="100" TextMode="Password" Font-Size="9pt" />
                                                <asp:Button  ID="Button4" runat="server" Text="查&nbsp;&nbsp;询" Height="20" CssClass="btn" OnClick="Button4_Click" />
                                             </td>
                                        </tr>
                                        
 
                                    </table>
                                    <!--客房信息-->
                                    <table width="100%">
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel1" runat="server" Height="170px" ScrollBars="Both" Width="703">
                                                 <asp:GridView  CssClass="GridBody" BackColor="White" ID="GridView1" Width="684" runat="server" AutoGenerateColumns="False" EditRowStyle-Width="5px" Height="24px" OnRowDataBound="GridView1_RowDataBound" >
                                                    <Columns>
                                                    
                                                        <asp:TemplateField HeaderText="NO" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblId" runat="server" Text='<%# Eval("RoomId") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    
                                                        <asp:TemplateField HeaderText="NO">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblNo" runat="server" Text='<%# GetNo() %>'  Width="40px" ></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem" />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                    
                                                        <asp:TemplateField HeaderText="房号">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblRoomNum" runat="server" Text='<%# Eval("RoomNum") %>' Width="100"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead"   />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="房型">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblRoomType" runat="server" Text='<%# Eval("RoomType.Name") %>' Width="110"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem" />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="入住时间">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtBeginTime" runat="server" Width="120" ReadOnly="true" Text='<%# GetCurrentTime() %>'></asp:TextBox>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"  />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText=" 退房时间">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtEndTime" runat="server" Width="140" Text='<%# GetEndTime()%>' CssClass="Wdate" onFocus="new WdatePicker(this,'%Y-%M-%D %h:%m:%s',true,'default')" ></asp:TextBox><%----%>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem" />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText=" 房间价格">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblOldPrice" runat="server" Text='<%# Eval("RoomType.Price","{0:F2}") %>' Width="100"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="加床单价">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblAddBedPrice" runat="server" Text='<%# Eval("RoomType.AddBedPrice","{0:F2}") %>' Width="100"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="加床张数">
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="ddlAddBedPriceCount" runat="server" Width="100" AutoPostBack="true" OnSelectedIndexChanged="ddlAddBedPriceCount_SelectedIndexChanged">
                                                                    <asp:ListItem Text="无" Value="0"></asp:ListItem>
                                                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                                                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="加床总费用">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblAddBedPriceSun" runat="server" Text='0.00' Width="100"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText=" 折扣率">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblDiscount" runat="server" Text='不折扣' Width="80"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem" />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="折扣后价">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblNewPrice" runat="server" Text='<%# Eval("RoomType.Price","{0:F2}") %>' Width="110"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        
                                                        <asp:TemplateField ShowHeader="False" HeaderText="操作">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkbtnDel" runat="server" CssClass="btn" CommandArgument='<%# GetNo() %>' OnCommand="lnkbtn_Command" Width="60">删除</asp:LinkButton>
                                                            </ItemTemplate>
                                                            <HeaderStyle CssClass="GridHead"/>
                                                        </asp:TemplateField>
                                                        
                                                    </Columns>
                                                    <EditRowStyle Width="5px" />
                                                    <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />   
                                                </asp:GridView>
                                                </asp:Panel>
                                            </td>
                                            <td width="110" valign="middle">
                                                <asp:Button ID="Button1" runat="server" Text="添加房间" CssClass="btn" OnClick="Button1_Click" /><br /><br />
                                                <asp:Button ID="Button2" runat="server" Text="价格合计"  CssClass="btn" OnClick="Button2_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                    <!--结算信息-->
                                    <table border="1" id="msg" cellpadding="0" cellspacing="0" style="width: 99%; height: 24px;">
                                        <tr>                                        
                                            <td style="height: 25px; width: 92px;">
                                                <asp:DropDownList id="ddlMoneyType" runat="server" Width="90px" Height="25px">
                                                    <asp:ListItem Text="现金" Value="现金"></asp:ListItem>
                                                    <asp:ListItem Text="支票" Value="支票"></asp:ListItem>
                                                    <asp:ListItem Text="银行卡" Value="银行卡"></asp:ListItem>
                                                </asp:DropDownList>
                                             </td>
                                             
                                            <td style="height: 11px; width: 152px;" colspan="3" >
                                                应收金额<asp:TextBox ID="txtYinShouMoney" runat="server" Height="16px" Width="70px"  />
                                            </td>
                                                
                                            <td style="height: 11px; width: 126px;" colspan="3" >
                                                押金<asp:TextBox ID="txtDeposit" runat="server" Height="16px" Width="70px" Text="1000"  />
                                            </td>

                                            <td style=" height: 11px; width: 200px;" colspan="2">
                                                付款说明<asp:TextBox ID="txtPayMark" runat="server" Width="121px"></asp:TextBox>
                                            </td>
                                            
                                            <td style="width: 142px; height: 11px">
                                                实收金额<asp:TextBox ID="txtShiShouMoney" runat="server" Width="70px"></asp:TextBox>
                                            </td>
                                            
                                        </tr>
                                       <tr>
                                            <td  height="22" colspan="10" align="right" style="text-align:right">
                                                总公司：美斯坦福大酒店&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                操作员：<%=user.UserName%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                时间：<%=DateTime.Now%>
                                            </td>
                                        </tr>
                                    </table>
                                    <!--结算信息--><br />
                                    <table  cellpadding="0" cellspacing="0" style="width: 99%; height: 24px;">
                                        <tr>
                                            <td align="center">
                                                <asp:Button ID="Button3" runat="server" Text="确定登记" CssClass="btn" OnClick="Button3_Click" OnClientClick="return CheckForm();" />
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
                    <td style="width: 775px; background-image: url(../img/main/main/main_centerFoot.JPG); height: 6px;">
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
<asp:Button id="Button6" runat="server" CssClass="btn" CausesValidation="false" Text=" 确 定 "  OnClientClick="window.history.go(-1);"/>
</TD></TR></TBODY></TABLE></FIELDSET></asp:Panel> 

        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>

