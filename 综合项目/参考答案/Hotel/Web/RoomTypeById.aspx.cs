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
using System.Collections.Generic;

public partial class Prices_xx : System.Web.UI.Page
{
    public RoomType roomType = new RoomType();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string idTemp = Request.QueryString["id"];
            if (idTemp != null)
            {
                roomType = new RoomTypeBLL().GetRoomTypeById(Convert.ToInt32(idTemp));
            }
            else
            {
                Server.Transfer("home.aspx");
            }
        }
    }
}
