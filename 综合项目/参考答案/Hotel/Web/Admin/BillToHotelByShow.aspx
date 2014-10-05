<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="BillToHotelByShow.aspx.cs" Inherits="Admin_BillToHotelByShow" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
<script type="text/javascript">
    function TuiFangAll()
    {
         if(confirm("确定要全部退房吗？"))
         {
            return true;
         }
         else         
         {
            return false;
         }
    }
</script>
<br />
        <div style="width: 95%; height: 290px; text-align:left" id="pnlMain" runat="server">
            <!--头-->
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>                    
                    <td style="width: 179px; height: 13px; background-image: url(../img/main/main/main_leftUp.JPG); font-weight: bold; font-size: 12px; ">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
                        退房登记</td>
                    <td style="background-image: url(../img/main/main/main_centerUp.JPG); width: 625px;
                        height: 13px"><asp:Label ID="Label1" runat="server" Height="25px"></asp:Label>
                        </td>
                    <td style="width: 12px; height: 13px; background-image: url(../img/main/main/main_rightUp.JPG);">
                        </td>
                </tr>
            </table>
            <!--中间-->
             <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <!--左-->
                    <td style="width: 9px; background-image: url(../img/main/main/main_leftCenter.JPG); height: 454px;"> </td>
                   
                    <!--内容-->
                    <td style="width: 780px; height: 440px; background-color: #f1f5f4;" valign="top">
                        <p>&nbsp;</p>
                        <table width="100%">
                            <tr>
                                <td align="center">
                                    <span style="font-size:15px;">退房</span>
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
                                            <td style="width: 110px; height: 19px">
                                                <asp:Label ID="lblRealName" runat="server" Text=""></asp:Label>                                               
                                            </td>
                                            <td>
                                                证件类型</td>
                                            <td style="width: 149px; height: 19px">
                                             <asp:Label ID="lblCertificateType" runat="server" Text=""></asp:Label>  
                                                
                                            </td>
                                            <td>
                                                证件号码</td>
                                            <td style="width: 158px; height: 19px">
                                               <asp:Label ID="lblCertificateNo" runat="server" Text=""></asp:Label>  
                                             </td>
                                            <td>
                                                性别</td>
                                            <td style="width: 39px; height: 16px" colspan="2">
                                                 <asp:Label ID="lblSex" runat="server" Text=""></asp:Label>
                                            </td>                                          
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                来自区域</td>
                                            <td style="width: 110px; height: 16px">
                                                      <asp:Label ID="lblCountryArea" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                省市地区</td>
                                            <td style="width: 149px; height: 16px">                                           
                                                    <asp:Label ID="lblProviceArea" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                详细地址</td>
                                            <td  colspan="4"  style="height: 18px">
                                                 <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
                                            </td>

                                            
                                        </tr>
                                        <tr style="color: #000000">
                                            <td>
                                                客人类型</td>
                                            <td style="width: 110px; height: 18px">
                                                 <asp:Label ID="lblCustomerType" runat="server" Text=""></asp:Label>
                                             </td>
                                            <td align="left">
                                                来&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;源</td>
                                            <td style="width: 149px; height: 18px">
                                                   <asp:Label ID="lblCustomerSource" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;备注信息
                                            </td>
                                            <td colspan="4" style="height: 18px">
                                                 <asp:Label ID="lblCustomerMark" runat="server" Text=""></asp:Label>
                                             </td>
                                        </tr>                                      
                                        
                                        <tr style="color: #000000">
                                            <td>
                                                电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话</td>
                                            <td style="width: 110px; height: 19px">
                                                 <asp:Label ID="lblTel" runat="server" Text=""></asp:Label>
                                            </td>
                                            
                                            <td style="width: 149px; height: 18px" colspan="2" align="left">                                                
                                            </td>                                            
                                            <td colspan="5" style=" display:none" id="memberId"  runat="server">                                               
                                             </td>
                                        </tr>
                                    </table>
                                    <!--客房信息-->
                                    <table width="100%">
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel1" runat="server" Height="170px" ScrollBars="Both" Width="740">
                                                 <asp:GridView  CssClass="GridBody" BackColor="White" ID="GridView1" Width="684" runat="server" AutoGenerateColumns="False" EditRowStyle-Width="5px" Height="24px" OnRowDataBound="GridView1_RowDataBound" >
                                                    <Columns>
                                                    
                                                        <asp:TemplateField HeaderText="NO" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
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
                                                                <asp:Label ID="lblRoomNo" runat="server" Text='<%# Eval("RoomNo") %>' Width="100"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead"   />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="房型">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblRoomType" runat="server" Text='<%# Eval("RoomType") %>' Width="110"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem" />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="入住时间">
                                                            <ItemTemplate>
                                                                 <asp:Label ID="lblComeDate" runat="server" Text='<%# Eval("ComeDate") %>' Width="150"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"  />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText=" 退房时间">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblGoDate" runat="server" Text='<%# Eval("GoDate") %>' Width="150"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem" />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText=" 房间价格">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblOldPrice" runat="server" Text='<%# Eval("PriceBase","{0:F2}") %>' Width="100"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="加床单价">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblAddBedPrice" runat="server" Text='<%# Eval("AddBedPrice","{0:F2}") %>' Width="100"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="加床张数">
                                                            <ItemTemplate>
                                                                 <asp:Label ID="lblAddBedCount" runat="server" Text='<%# Eval("AddBedCount") %>' Width="100"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="加床总费用">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblAddBedPriceSun" runat="server" Text='<%# Eval("AddBedPriceSum") %>' Width="100"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText=" 折扣率">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblDiscount" runat="server" Text='<%# Eval("Discount") %>' Width="80"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem" />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                        <asp:TemplateField HeaderText="折扣后价">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblPriceByDiscount" runat="server" Text='<%# Eval("PriceByDiscount","{0:F2}") %>' Width="110"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                    <asp:TemplateField HeaderText="退房">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkbtnTuiFang" runat="server" Text="退房" Width="50" CommandName='<%# Eval("RoomNo") %>' OnCommand="lnkbtnTuiFang_Command"></asp:LinkButton>
                                                            </ItemTemplate>
                                                            <ItemStyle CssClass="GridItem"   />
                                                            <HeaderStyle CssClass="GridHead" />
                                                        </asp:TemplateField>
                                                        
                                                                                                 
                                                    </Columns>
                                                    <EditRowStyle Width="5px" />
                                                    <AlternatingRowStyle CssClass="GridLine" HorizontalAlign="Center" />   
                                                </asp:GridView>
                                                </asp:Panel>
                                            </td>                                           
                                        </tr>
                                    </table>
                                    <!--结算信息-->
                                    <table border="1" id="Table1" cellpadding="0" cellspacing="0" style="width: 99%; height: 24px;">
                                        <tr>                                        
                                            <td style="height: 11px; width: 92px;">
                                                 <asp:Label ID="lblPayType" runat="server" Text='<%# Eval("PayType") %>' Width="80"></asp:Label>
                                             </td>
                                             
                                            <td style="height: 11px; width: 152px;" colspan="3" >
                                                应收金额 <asp:Label ID="lblYinShouMoney" runat="server" Text='<%# Eval("YinShouMoney") %>' Width="80"></asp:Label>
                                            </td>
                                                
                                            <td style="height: 11px; width: 126px;" colspan="3" >
                                                押金<asp:Label ID="lblDeposit" runat="server" Text='<%# Eval("Deposit") %>' Width="80"></asp:Label>
                                            </td>

                                            <td style=" height: 11px; width: 200px;" colspan="2">
                                                付款说明<asp:Label ID="lblPayMark" runat="server" Text='<%# Eval("PayMark") %>' Width="80"></asp:Label>
                                            </td>
                                            
                                            <td style="width: 142px; height: 11px">
                                                实收金额<asp:Label ID="lblShiShouMoney" runat="server" Text='<%# Eval("ShiShouMoney") %>' Width="80"></asp:Label>
                                            </td>
                                            
                                        </tr>
                                       <tr>
                                            <td  height="22" colspan="10" align="right" style="text-align:right">
                                                总公司：美斯坦福大酒店&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                分公司：<asp:Label ID="lblBranchName" runat="server" Text='<%# Eval("BranchName") %>' ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                部门：<asp:Label ID="lblDepartName" runat="server" Text='<%# Eval("DepartName") %>' ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                操作员：<asp:Label ID="lblOperationer" runat="server" Text='<%# Eval("Operationer") %>' ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                时间：<asp:Label ID="lblComeDate2" runat="server" Text='<%# Eval("Operationer") %>' ></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <!--结算信息--><br />
                                    <table  cellpadding="0" cellspacing="0" style="width: 99%; height: 24px;">
                                        <tr>
                                            <td align="center">
                                                <asp:Button ID="Button3" runat="server" Text="全部退房" CssClass="btn" OnClientClick="return TuiFangAll();" OnClick="Button3_Click" />
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
                   <td style="width: 10px; background-image: url(../img/main/main/main_rightCenter.JPG); height: 454px;"></td>
                </tr>
            </table>
            
            <!--尾-->
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="width: 19px; background-image: url(../img/main/main/main_leftFoot.JPG); height: 6px;">
                    </td>
                    <td style="width: 760px; background-image: url(../img/main/main/main_centerFoot.JPG); height: 6px;">
                      </td>
                    <td style="width: 15px; background-image: url(../img/main/main/main_rightFoot.JPG); height: 6px;">
                    </td>
                </tr>
            </table>
        </div>
    
</asp:Content>

