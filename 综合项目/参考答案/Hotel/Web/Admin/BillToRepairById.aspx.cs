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

public partial class Admin_BillToRepairById : System.Web.UI.Page
{   
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                BillToRepair repair = new BillToRepairBLL().GetBillToRepairById(Convert.ToInt32(Request.QueryString["id"]));
                ViewState["id"] = Request.QueryString["id"];
                lblOperator.Text = repair.Operator;
                lblNowTimes.Text = repair.BeginTime.ToString();
                ddlRoomNumber.SelectedValue = repair.RoomNumber;
                txtBeginTime.Text = string.Format("{0:yyyy-MM-dd hh:mm:ss}",repair.BeginTime);
                txtEndTime.Text = string.Format("{0:yyyy-MM-dd hh:mm:ss}", repair.EndTime);
                txtRepairCause.Text = repair.Cause;

                rdoRepairState.Items.Add(new ListItem("维修中","0"));
                rdoRepairState.Items.Add(new ListItem("维修完成", "1"));
                rdoRepairState.SelectedValue = repair.RepairState.ToString();
            }
        }
        catch (Exception ex) { }
    }

    //修改
    protected void Button3_Click(object sender, EventArgs e)
    {
        bool flag = new BillToRepairBLL().UpdateRepair(ddlRoomNumber.Text, Convert.ToDateTime(txtEndTime.Text),
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
