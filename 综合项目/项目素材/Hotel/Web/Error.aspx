<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		
			  
    <table Width="1003" height="500" align="center"  style="background-color:White; background-image:url(Images/img/104.jpg)">
       <tr>
          <td align="center" >			 		  
			  <img src="Admin/Images/img/fail.gif"  width="155" height="180">
	      </td>
	   </tr>
	    <tr>
          <td align="center" >			 		  
			    此页面发现一个意外错误，对此我们非常抱歉。此错误已被系统记录，我们会及时解决此问题！
	      </td>
	   </tr>
	    <tr>
          <td align="center" >			  
			  错误页面：<%if (Request["url"]!=null) Response.Write(Request["url"].ToString());%>
	      </td>
	   </tr>
	   <tr>
         <td align="center" >		  
			    错误信息：<%if (Request["msg"]!=null) Response.Write(Request["msg"].ToString());%>
	      </td>
	   </tr>
	   <tr>
          <td align="center" >	 		  
			   您的理解和支持就是我们的动力！
	      </td>
	   </tr>			 
    </table>

 
</asp:Content>

