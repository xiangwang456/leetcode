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

public partial class RoomTypeShow : System.Web.UI.UserControl
{
    public List<RoomType> listType = new List<RoomType>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            listType = new RoomTypeBLL().GetRoomTypeAll();
        }
    }
}
