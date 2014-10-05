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

public partial class Admin_G_Shoping : System.Web.UI.Page
{
    public UserInfo user = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CurrentUser"] != null)
            {
                user = Session["CurrentUser"] as UserInfo;
                lblUserId.Text = user.UserName;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        lblNote.Text = "";
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.className='GridMove'");
            e.Row.Attributes.Add("onmouseout", "this.className='GridItem'");

        }
    }


    //呈现之前
    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chkCount = GridView1.Rows[i].FindControl("chkCount") as CheckBox;
            Label lblCount = GridView1.Rows[i].FindControl("lblCount") as Label;
            TextBox txtCount = GridView1.Rows[i].FindControl("txtCount") as TextBox;
            if (chkCount.Checked == true)
            {
                lblCount.Visible = true;
                txtCount.Visible = true;
            }
            else
            {
                lblCount.Visible = false;
                txtCount.Visible = false;
            }
        }
    }

    //计算
    protected void btnTotal_Click(object sender, EventArgs e)
    {
        decimal count = 0;
        try
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chkCount = GridView1.Rows[i].FindControl("chkCount") as CheckBox;
                TextBox txtCount = GridView1.Rows[i].FindControl("txtCount") as TextBox;
                Label lblStoreCount = GridView1.Rows[i].FindControl("lblStoreCount") as Label;
                if (chkCount.Checked == true)
                {
                    if (txtCount.Text != "")
                    {
                        if (Convert.ToInt32(txtCount.Text) > Convert.ToInt32(lblStoreCount.Text))
                        {
                            lblNote.Text = "购买数量不能大于库存数量！";
                            return;
                        }
                        else
                        {
                            Label lblPrice2 = GridView1.Rows[i].FindControl("lblPrice2") as Label;
                            count += Convert.ToDecimal(txtCount.Text) * Convert.ToDecimal(lblPrice2.Text);
                        }
                    }
                }
            }
            txtTotal.Text = count.ToString();
            txtZhao.Text = "" + (Convert.ToDecimal(txtCustomerPay.Text) - Convert.ToDecimal(txtTotal.Text));
        }
        catch (Exception exe) { lblNote.Text = "数据库异常，请联系管理员！"; }
    }

    //支付
    protected void txtCustomerPay_TextChanged(object sender, EventArgs e)
    {
         try
        
         {
             txtZhao.Text = "" + (Convert.ToDecimal(txtCustomerPay.Text) - Convert.ToDecimal(txtTotal.Text));
        }
        catch (Exception exe) { lblNote.Text = "数据库异常，请联系管理员！"; }
    }

    //保存  在之前应该调用 计算 事件，我没有做。。。。。
    protected void btnSave_Click(object sender, EventArgs e)
    {
         user = Session["CurrentUser"] as UserInfo;
        try
        {

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chkCount = GridView1.Rows[i].FindControl("chkCount") as CheckBox;
                TextBox txtCount = GridView1.Rows[i].FindControl("txtCount") as TextBox;
                Label lblStoreCount = GridView1.Rows[i].FindControl("lblStoreCount") as Label;
                 Label lblGoodsNameId = GridView1.Rows[i].FindControl("lblGoodsNameId") as Label;
                
                if (chkCount.Checked == true && txtCount.Text != "")
                {
                    bool flag = new GoodsStoreBLL().InsertStore(Convert.ToInt32(lblGoodsNameId.Text),
                        user.UserId, DateTime.Now, 0, 0, Convert.ToInt32(txtCount.Text),
                        Convert.ToInt32(lblStoreCount.Text) - Convert.ToInt32(txtCount.Text), txtMark.Text, 2);
                }
            }

            pnlMain.Visible = false;
            pnlNoFile.Visible = true;
        }
        catch (Exception exe) { lblNote.Text = "数据库异常，请联系管理员！"; }
    }
}
