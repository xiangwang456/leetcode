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

public partial class Admin_NewsById : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DetailsView1_DataBound(object sender, EventArgs e)
    {
        if (DetailsView1.CurrentMode == DetailsViewMode.Edit)
        {
            DropDownList DropDownList1 = this.DetailsView1.FindControl("DropDownList1") as DropDownList;
            HiddenField hfStyle = this.DetailsView1.FindControl("hfStyle") as HiddenField;
            DropDownList1.SelectedValue = hfStyle.Value.Trim();
        }
    }
    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        DropDownList DropDownList1 = this.DetailsView1.FindControl("DropDownList1") as DropDownList;
        this.ObjectDataSource1.UpdateParameters.Add("style", DropDownList1.SelectedValue);
    }
}
