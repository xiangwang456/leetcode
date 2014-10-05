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

public partial class Admin_BillToOwnManage : System.Web.UI.Page
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
        }
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
