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

public partial class Intent : System.Web.UI.Page
{
    public List<Hotel.Model.Intent> listIntent = new List<Hotel.Model.Intent>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            listIntent = new IntentBLL().GetIntentAll();
        }
    }
}
