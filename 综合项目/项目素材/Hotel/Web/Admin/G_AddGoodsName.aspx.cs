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

public partial class Admin_G_AddGoodsName : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //保存
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {

            bool flag = new GoodsNameBLL().InsertGoods(txtName.Text, Convert.ToDecimal(txtPrice.Text), 
                txtUnit.Text, Convert.ToInt32(txtUp.Text), Convert.ToInt32(txtDown.Text), 
                Convert.ToInt32(ddlGoodsType.SelectedValue));

            Response.Redirect("G_GoodsManage.aspx");
        }

        catch (Exception ex) { }
    }
}
