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

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    public HotelInfo hotelInfo = new HotelInfo();

    public HotelInfo HotelInfo
    {
        get { return hotelInfo; }
        set { hotelInfo = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CurrentCustomer"] == null)
            {
                Response.Redirect("CustomerNoLogin.aspx");
            }
            else
            {
                hotelInfo = new HotelInfoBLL().GetHotelInfo();
            }
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

    //注销
    protected void lnkbtnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
}
