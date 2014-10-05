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

public partial class jsyl : System.Web.UI.Page
{
    public List<HealthFun> listHealthFun = new List<HealthFun>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            listHealthFun = new HealthFunBLL().GetHealthFunAll();
            lblContent.Text = listHealthFun[0].Content;
            ViewState["listHealthFun"] = listHealthFun;
        }
    }
    //水疗馆
    protected void imgbtnWater_Click(object sender, ImageClickEventArgs e)
    {
        foreach (HealthFun each in ViewState["listHealthFun"] as List<HealthFun>)
        {
            if (each.Style == "水疗馆")
            {
                lblContent.Text = each.Content;
                break;
            }
        }
    }
    //健身中心
    protected void imgbtnSportCenter_Click(object sender, ImageClickEventArgs e)
    {
        foreach (HealthFun each in ViewState["listHealthFun"] as List<HealthFun>)
        {
            if (each.Style == "健身中心")
            {
                lblContent.Text = each.Content;
                break;
            }
        }
    }
    //KTV
    protected void imgbtnKTV_Click(object sender, ImageClickEventArgs e)
    {
        foreach (HealthFun each in ViewState["listHealthFun"] as List<HealthFun>)
        {
            if (each.Style == "泰国风情KTV")
            {
                lblContent.Text = each.Content;
                break;
            }
        }
    }
}
