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

public partial class Admin_RoomById : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected string IsOrNot(string str)
    {
        if (str == "1")
        {
            return "是";
        }
        else
        {
            return "否";
        }
    }
    protected void DetailsView1_DataBound(object sender, EventArgs e)
    {
        if (DetailsView1.CurrentMode == DetailsViewMode.Edit)
        {
            RadioButtonList rdoBed = this.DetailsView1.FindControl("rdoBed") as RadioButtonList;
            HiddenField hfIsBed = this.DetailsView1.FindControl("hfIsBed") as HiddenField;
            rdoBed.SelectedValue = hfIsBed.Value.Trim();
        }
    }
    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        RadioButtonList rdoBed = this.DetailsView1.FindControl("rdoBed") as RadioButtonList;
        this.ObjectDataSource1.UpdateParameters.Add("isAddBed", rdoBed.SelectedValue);
    }


    //截取内容
    public string GetCut(string content, int num)
    {
        string subs = null;
        if (content != null)
        {
            if (content.Length > num)
            {
                subs = content.Substring(0, num);
                subs += "...";
            }
            else
            {
                subs = content;
            }
        }
        return subs;
    }
}
