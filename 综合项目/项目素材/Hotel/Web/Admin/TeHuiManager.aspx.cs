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

public partial class Admin_TeHuiManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.className='GridMove'");
            e.Row.Attributes.Add("onmouseout", "this.className='GridItem'");

            //如果把下面两行代码注释掉。就可以直接删除
            LinkButton lb = e.Row.FindControl("lnkbtnDelete") as LinkButton;
            lb.Attributes.Add("onclick", "return confirm('确实要删除该条记录吗？');");
        }
    }

    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0)
        {
            pnlNoFile.Visible = false;
        }
        else
        {
            pnlNoFile.Visible = true;
        }
    }

}
