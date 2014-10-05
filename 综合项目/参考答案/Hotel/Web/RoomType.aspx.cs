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

public partial class Prices : System.Web.UI.Page
{
    public List<RoomType> listType = new List<RoomType>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataBinds();
        }
    }

    private void DataBinds()
    {
        listType = new RoomTypeBLL().GetRoomTypeAll();
        anpPager.RecordCount = listType.Count;
        PagedDataSource pdsList = new PagedDataSource();
        pdsList.DataSource = listType;
        pdsList.AllowPaging = true;
        pdsList.PageSize = anpPager.PageSize;
        pdsList.CurrentPageIndex = anpPager.CurrentPageIndex - 1;
        DataList1.DataSource = pdsList;
        DataList1.DataBind();
    }

    protected void anpPager_PageChanged(object sender, EventArgs e)
    {
        DataBinds();
    }
}
