<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="StyleSet.aspx.cs" Inherits="StyleSet" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script type="text/javascript">
    function SelectStyle(styleId)
    {
        var rfStyle=document.getElementById("<%=rfStyle.ClientID%>");
        rfStyle.value=styleId.value;    
        
        var items=document.getElementsByTagName("input");
        for(i=0;i<items.length;i++)
        {
            if(items[i].type=="radio")
            {
                if(items[i].value == styleId.value)
                {
                    items[i].checked=true;
                }
                else
                {
                    items[i].checked=false;
                }
            }
        }
        
        
            
    }
</script>
<br />
<div>
    <TABLE cellSpacing="0" cellPadding="0" width="98%" align="center">
		<TR>
			<TD width="5" background="Images/img/wenbenkuan_02.gif"><IMG height="5" src="Images/img/wenbenkuan_01.gif" width="5"></TD>
			<TD width="874" background="Images/img/wenbenkuan_02.gif"><IMG height="5" src="Images/img/wenbenkuan_02.gif" width="5"></TD>
			<TD><IMG height="5" src="Images/img/wenbenkuan_03.gif" width="5"></TD>
		</TR>
		<TR>
			<TD background="Images/img/wenbenkuan_04.gif">&nbsp;</TD>
			<TD class="tablebg" background="Images/img/wenbenkuan_05.gif"><TABLE width="100%">
					<TR>
						<TD width="100%" class="tabletop">
						    <img src="Images/img/syssetup.gif" width="18" height="18" align="absmiddle"> 风格选择&nbsp;&nbsp;&nbsp;&nbsp;
						    <a href="javascript:history.go(-1);"><img src="Images/img/link_back.gif" border="0" align="absmiddle"></a>	
						    <br />
						     <img src="../Admin/Images/img/103.gif" width="100%" height="1px" alt="" />				   
                        </TD>
					</TR>
					<TR class="tablebg">
						<TD align="center">
						    <asp:DataList id="dlStyle" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="100%" DataSourceID="ObjectDataSource1" OnItemDataBound="dlStyle_ItemDataBound">
								<ItemTemplate>
									<table width="100%" border="0" class="tablebgborder">
										<tr class="tablebg">
											<td>
											    <div align="center">
											        <img src='../<%# Eval("Pic") %>' />
											    </div>
											</td>
										</tr>
										<tr class="tablebg">
											<td>
											    <div align="center">                          	        
											       <input id="rad" runat="server" name="rad"  type="radio" value='<%#Eval("Id")%>' onclick="SelectStyle(this);" /><%#Eval("Title")%>
												</div>
											</td>
										</tr>
									</table>
								</ItemTemplate>
							</asp:DataList>
							<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetStyleAll"
                                TypeName="Hotel.BLL.StyleBLL"></asp:ObjectDataSource>
				        </TD>
					</TR>
				</TABLE>
				<P align="center">
                    <asp:Button ID="btnSelect" runat="server" CssClass="btn" Text="确定选择" OnClick="btnSelect_Click" />
                </P>
			</TD>
			<TD width="5" background="Images/img/wenbenkuan_06.gif"><IMG height="5" src="Images/img/wenbenkuan_06.gif" width="5"></TD>
		</TR>
		<TR>
			<TD background="Images/img/wenbenkuan_08.gif"><IMG height="5" src="Images/img/wenbenkuan_07.gif" width="5"></TD>
			<TD background="Images/img/wenbenkuan_08.gif"><IMG height="5" src="Images/img/wenbenkuan_08.gif" width="5"></TD>
			<TD><IMG height="5" src="Images/img/wenbenkuan_09.gif" width="5"></TD>
		</TR>
	</TABLE>

    <asp:HiddenField ID="rfStyle" runat="server" />


    </div>
</asp:Content>

