using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Hotel.BLL;
using Hotel.Model;


public partial class NewsYGTD : System.Web.UI.Page
{
    public List<News> ygtdList = new List<News>();
    public List<News> ygfcList = new List<News>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ygtdList = new NewsBLL().GetNewsByYGHD();
            ygfcList = new NewsBLL().GetNewsByYGFC();
        }
    }
}
