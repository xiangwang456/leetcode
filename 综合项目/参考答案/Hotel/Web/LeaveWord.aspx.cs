using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Hotel.BLL;
using Hotel.Model;

public partial class LeaveWord : System.Web.UI.Page
{
    public Customer user = new Customer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CurrentCustomer"] != null)
        {
            user = Session["CurrentCustomer"] as Customer;
            trEmail.Visible = false;
            trName.Visible = false;
            trTel.Visible = false;
            trAdd.Visible = false;
        }     

    }

    //提交信息
    protected void Button1_Click(object sender, EventArgs e)
    {
        Hotel.Model.LeaveWord leaveWord = null;
        if (Session["CurrentCustomer"] != null)
        {
            user = Session["CurrentCustomer"] as Customer;
            leaveWord = new Hotel.Model.LeaveWord(DropDownList1.SelectedValue, txtSubject.Text, user.LoginId, user.Email, user.Address, user.Tel, txtContent.Value, DateTime.Now, Request.UserHostAddress, "是");
        }
        else
        {
            leaveWord = new Hotel.Model.LeaveWord(DropDownList1.SelectedValue, txtSubject.Text, txtName.Text, txtEmial.Text, txtAddress.Text, txtTel.Text, txtContent.Value, DateTime.Now, Request.UserHostAddress, "否");
        }
        bool flag = new LeaveWordBLL().Insert(leaveWord);
        pnlMain.Visible = false;
        pnlOK.Visible = true;
    }

    //保存成功
    protected void Button3_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}
