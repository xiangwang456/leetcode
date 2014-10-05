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

public partial class Conference : System.Web.UI.Page
{
    public Hotel.Model.Conference conference = new Hotel.Model.Conference();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conference = new ConferenceBLL().GetConference();
        }
    }
}
