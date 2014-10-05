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

public partial class Favour : System.Web.UI.Page
{
    public List<Hotel.Model.Favour> listFavour = new List<Hotel.Model.Favour>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {            
            DataBinds();
        }
    }

    private void DataBinds()
    {
        listFavour = new FavourBLL().GetFavourAll();
        anpPager.RecordCount = listFavour.Count;
        PagedDataSource pdsList = new PagedDataSource();
        pdsList.DataSource = listFavour;
        pdsList.AllowPaging = true;
        pdsList.PageSize = anpPager.PageSize;
        //pdsList.AllowCustomPaging = true;
        pdsList.CurrentPageIndex = anpPager.CurrentPageIndex - 1;
        DataList1.DataSource = pdsList;
        DataList1.DataBind();
    }

    protected void anpPager_PageChanged(object sender, EventArgs e)
    {
        DataBinds();
    }
}
