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


public partial class Admin_G_CheckGoods : System.Web.UI.Page
{
    public UserInfo user = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CurrentUser"] != null)
            {
                user = Session["CurrentUser"] as UserInfo;
                lblCreateTime.Text = DateTime.Now.ToString();
                lblUserName.Text = user.UserName;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        ddlGoodsName_PreRender(sender, e);
    }


    protected void ddlGoodsName_PreRender(object sender, EventArgs e)
    {
        try
        {
            lblStoreCount.Text = "" + new GoodsStoreBLL().GetGoodsStoreByNameId(Convert.ToInt32(ddlGoodsName.SelectedValue));
        }
        catch (Exception exe) { };
    }

    //保存
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtCount.Text == "")
            {
                return;
            }
            if (Convert.ToInt32(txtCount.Text) == 0)
            {
                return;
            }

            user = Session["CurrentUser"] as UserInfo;

            bool flag = true;
            if (Convert.ToInt32(txtCount.Text) > 0)//盘赢
            {
                flag = new GoodsStoreBLL().InsertStore(Convert.ToInt32(ddlGoodsName.SelectedValue), user.UserId, DateTime.Now, 0,
                    Convert.ToInt32(txtCount.Text), 0, Convert.ToInt32(lblStoreCount.Text) + Convert.ToInt32(txtCount.Text), txtMark.Text,
                   3);
            }
            else//盘亏
            {
                flag = new GoodsStoreBLL().InsertStore(Convert.ToInt32(ddlGoodsName.SelectedValue), user.UserId, DateTime.Now, 0, 0,
                    Convert.ToInt32(txtCount.Text), Convert.ToInt32(lblStoreCount.Text) + Convert.ToInt32(txtCount.Text), txtMark.Text,
                    4);
            }


            pnlNoFile.Visible = true;
            pnlMain.Visible = false;
        }
        catch (Exception exe) { };
    }

}
