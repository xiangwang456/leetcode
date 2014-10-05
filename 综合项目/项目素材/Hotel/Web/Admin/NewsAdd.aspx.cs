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

public partial class Admin_NewsAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //添加新闻
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool flag = new NewsBLL().InsertNews(new News(DropDownList1.SelectedValue, txtTitle.Text, txtContent.Text, "", DateTime.Now, 0));
        Response.Redirect("NewsManager.aspx");
    }
}
