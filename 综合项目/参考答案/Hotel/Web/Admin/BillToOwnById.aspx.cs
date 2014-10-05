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

public partial class Admin_BillToOwnById : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                BillToOwn own = new BillToOwnBLL().GetBillToOwnById(Convert.ToInt32(Request.QueryString["id"]));
                ViewState["id"] = Request.QueryString["id"];
                lblOperator.Text = own.Operator;
                lblNowTimes.Text = own.BeginTime.ToString();
                ddlRoomNumber.SelectedValue = own.RoomNumber;
                txtBeginTime.Text = string.Format("{0:yyyy-MM-dd hh:mm:ss}", own.BeginTime);
                txtEndTime.Text = string.Format("{0:yyyy-MM-dd hh:mm:ss}", own.EndTime);
                txtRepairCause.Text = own.Cause;

                rdoRepairState.Items.Add(new ListItem("自用中", "0"));
                rdoRepairState.Items.Add(new ListItem("置为空房", "1"));
                rdoRepairState.SelectedValue = own.OwnState.ToString();
            }
        }
        catch (Exception ex) { }
    }

    //修改
    protected void Button3_Click(object sender, EventArgs e)
    {
        bool flag = new BillToOwnBLL().UpdateOwn(ddlRoomNumber.Text, Convert.ToDateTime(txtEndTime.Text),
            Convert.ToInt32(rdoRepairState.SelectedValue), txtRepairCause.Text, Convert.ToInt32(ViewState["id"]));

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

}
