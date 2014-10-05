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

public partial class Admin_BillToRepair : System.Web.UI.Page
{
    public UserInfo user = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CurrentUser"] != null)
        {
            user = Session["CurrentUser"] as UserInfo;
            if (!IsPostBack)
            {
                txtBeginTime.Text = string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now);
                txtEndTime.Text = string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now.AddDays(3));
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    //登记
    protected void Button3_Click(object sender, EventArgs e)
    {

        try
        {
            user = Session["CurrentUser"] as UserInfo;

            bool flag = new BillToRepairBLL().InsertBillToRepair(new BillToRepair(ddlRoomNumber.SelectedValue,
                Convert.ToDateTime(txtBeginTime.Text),
                Convert.ToDateTime(txtEndTime.Text), txtRepairCause.Text,user.UserName, 0));

            pnlMain.Visible = false;
            if (flag)
            {
                pnlOk.Visible = true;
            }
            else
            {
                pnlErr.Visible = true;
            }
        }
        catch (Exception exe) { }
    }
}
