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

public partial class IntentById : System.Web.UI.Page
{
    public Hotel.Model.Intent intent = new Hotel.Model.Intent();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string idTemp = Request.QueryString["id"];
            if (idTemp != null && idTemp != "")
            {
                intent = new IntentBLL().GetIntentById(Convert.ToInt32(idTemp)); 
            }
            else
            {
                Server.Transfer("home.aspx");
            }
        }
    }
}
