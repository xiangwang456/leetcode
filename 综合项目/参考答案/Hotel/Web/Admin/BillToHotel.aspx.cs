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

public partial class Admin_BillToHotel : System.Web.UI.Page
{
    List<RoomNumber> listNum = new List<RoomNumber>();
    public UserInfo user = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CurrentUser"] != null)
        {
            if (!IsPostBack)
            {
                try
                {
                    string ids = Request.QueryString["id"];
                    listNum = new RoomNumberBLL().GetRoomNumberByIds(ids);
                    ViewState["listNum"] = listNum;
                    GridView1.DataSource = listNum;
                    GridView1.DataBind();
                    txtDeposit.Text = Convert.ToString(listNum.Count * 500);
                }
                catch (Exception ex) { }
            }
            user = Session["CurrentUser"] as UserInfo;
        }
        else
        {
            Response.Redirect("Login.aspx");
        }


        if (rdolistUserType.SelectedValue == "会员")
        {
            memberId.Style.Add("display", "block");
        }
        else
        {
            memberId.Style.Add("display", "none");
        }
    }

    //行绑定，光棒效果。。。
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.className='GridMove'");
            e.Row.Attributes.Add("onmouseout", "this.className='GridItem'");
        }
    }

    //获取当前时间
    protected string GetCurrentTime()
    {
        return string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now);
    }

    //获取结束时间
    protected string GetEndTime()
    {
        return string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now.AddHours(1));
    }


    //查询
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            Customer cus = new CustomerBLL().GetCustomerByCardNo(txtCardNo.Text, txtPwd.Text);
            if (cus == null)
            {
                lblErrNote.Text = "小助手提醒您：卡号或密码错误！";
            }
            else
            {
                lblErrNote.Text = "";
                txtAddress.Text = cus.Address;
                txtName.Text = cus.RealName;
                txtIdentityNo.Text = cus.IdentityCardNo;
                txtTel.Text = cus.Tel;
                rdolistSex.SelectedValue = cus.Sex;

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    Label lblDiscount = GridView1.Rows[i].FindControl("lblDiscount") as Label;
                    lblDiscount.Text = cus.Card.Discount.ToString();
                }

                bool flag = PriceSum();
            }
        }
        catch (Exception ex) { }
    }

    //删除
    protected void lnkbtn_Command(object sender, CommandEventArgs e)
    {
        try
        {
            listNum = ViewState["listNum"] as List<RoomNumber>;
            listNum.RemoveAt(Convert.ToInt32(e.CommandArgument.ToString()) - 1);

            GridView1.DataSource = listNum;
            GridView1.DataBind();

            txtDeposit.Text = Convert.ToString(listNum.Count * 500);
        }
        catch (Exception ex) { }
    }

    //获得序列号
    protected int GetNo()
    {
        return GridView1.Rows.Count + 1;
    }

    //添加房间
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ids = "";
        foreach (RoomNumber num in ViewState["listNum"] as List<RoomNumber>)
        {
            ids += num.RoomId + ",";
        }
        if (ids.Length > 0)
        {
            ids = ids.Substring(0, ids.LastIndexOf(","));
            Response.Redirect("RoomNumberManager.aspx?id=" + ids);
        }
        else
        {
            Response.Redirect("RoomNumberManager.aspx");
        }
    }

    //登记
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (GridView1.Rows.Count == 0)
            {
                lblErrNote.Text = "小助手提醒您：您尚未选择房间！";
            }
            else
            {
                lblErrNote.Text = "";
                if (PriceSum())
                {
                    List<BillToStay> listBill = new List<BillToStay>();
                    user = Session["CurrentUser"] as UserInfo;
                    for (int i = 0; i < GridView1.Rows.Count; i++)
                    {
                        TextBox txtBeginTime = GridView1.Rows[i].FindControl("txtBeginTime") as TextBox;
                        TextBox txtEndTime = GridView1.Rows[i].FindControl("txtEndTime") as TextBox;
                        Label lblRoomNum = GridView1.Rows[i].FindControl("lblRoomNum") as Label;
                        Label lblRoomType = GridView1.Rows[i].FindControl("lblRoomType") as Label;
                        Label lblOldPrice = GridView1.Rows[i].FindControl("lblOldPrice") as Label;
                        Label lblDiscount = GridView1.Rows[i].FindControl("lblDiscount") as Label;
                        Label lblNewPrice = GridView1.Rows[i].FindControl("lblNewPrice") as Label;

                        Label lblAddBedPrice = GridView1.Rows[i].FindControl("lblAddBedPrice") as Label;
                        DropDownList ddlAddBedPriceCount = GridView1.Rows[i].FindControl("ddlAddBedPriceCount") as DropDownList;
                        Label lblAddBedPriceSun = GridView1.Rows[i].FindControl("lblAddBedPriceSun") as Label;

                        string cardNo = "否";
                        if (lblDiscount.Text != "不折扣")
                        {
                            cardNo = txtCardNo.Text;
                        }

                        BillToStay bill = new BillToStay(txtName.Text, ddlCertificateType.SelectedValue, txtIdentityNo.Text,
                        rdolistSex.SelectedValue, ddlCountry.SelectedValue, ddlProvice.SelectedValue, txtAddress.Text,
                        ddlCustomerType.SelectedValue, ddlCustomerResource.SelectedValue, txtCustomerMark.Text, txtTel.Text,
                        Convert.ToDateTime(txtBeginTime.Text), Convert.ToDateTime(txtEndTime.Text), lblRoomNum.Text,
                        lblRoomType.Text, Convert.ToDecimal(lblOldPrice.Text), lblDiscount.Text,
                        Convert.ToDecimal(lblNewPrice.Text), GridView1.Rows.Count, ddlMoneyType.SelectedValue,
                        Convert.ToDecimal(txtYinShouMoney.Text), Convert.ToDecimal(txtDeposit.Text),
                        Convert.ToDecimal(txtShiShouMoney.Text), txtPayMark.Text,user.UserName, cardNo, Convert.ToDecimal(lblAddBedPrice.Text),
                        Convert.ToInt32(ddlAddBedPriceCount.SelectedValue), Convert.ToDecimal(lblAddBedPriceSun.Text));

                        listBill.Add(bill);
                    }

                    pnlMain.Visible = false;
                    bool flag = new BillToStayBLL().InsertBillToStay(listBill);
                    if (flag)
                    {
                        pnlOk.Visible = true;
                    }
                    else
                    {
                        pnlErr.Visible = true;
                    }
                }
            }
        }
        catch (Exception ex)
        {
            pnlMain.Visible = false;
            pnlErr.Visible = true;
        }
    }

    //用户身份之间的切换
    protected void rdolistUserType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdolistUserType.SelectedValue == "会员")
        {
            memberId.Style.Add("display", "block");
        }
        else
        {
            memberId.Style.Add("display", "none");

            txtAddress.Text = "";
            txtName.Text = "";
            txtIdentityNo.Text = "";
            txtTel.Text = "";
            rdolistSex.SelectedValue = "男";


            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                Label lblOldPrice = GridView1.Rows[i].FindControl("lblOldPrice") as Label;

                Label lblDiscount = GridView1.Rows[i].FindControl("lblDiscount") as Label;
                lblDiscount.Text = "不折扣";

                Label lblNewPrice = GridView1.Rows[i].FindControl("lblNewPrice") as Label;
                lblNewPrice.Text = lblOldPrice.Text;

            }
        }
    }

    //价格合计事件
    protected void Button2_Click(object sender, EventArgs e)
    {
        bool flag = PriceSum();
    }

    //价格合计方法
    protected bool PriceSum()
    {
        bool flag = true;
        try
        {
            decimal sum = 0;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                TextBox txtBeginTime = GridView1.Rows[i].FindControl("txtBeginTime") as TextBox;
                TextBox txtEndTime = GridView1.Rows[i].FindControl("txtEndTime") as TextBox;
                DateTime begin = Convert.ToDateTime(txtBeginTime.Text);
                DateTime end = Convert.ToDateTime(txtEndTime.Text);
                if (end <= begin)
                {
                    lblErrNote.Text = "小助手提醒您：退房日期必须大于入住日期！";
                    return false;
                }
                else
                {
                    lblErrNote.Text = "";
                    decimal day = 0;

                    if (end.Year == begin.Year && end.Month == begin.Month && end.Day == begin.Day)
                    {
                        day = 1;
                    }
                    else
                    {
                        if (end.Hour <= 11)//12点前退房按1天内计算
                        {
                            day = end.Day - begin.Day;
                        }
                        else if (end.Hour > 11 && end.Hour <= 17)//12点-18点间退房按半天计算
                        {
                            day = end.Day - begin.Day + Convert.ToDecimal(0.5);
                        }
                        else//18点以后退房加1天
                        {
                            day = end.Day - begin.Day + 1;
                        }
                    }
                    
                    

                    Label lblAddBedPriceSun = GridView1.Rows[i].FindControl("lblAddBedPriceSun") as Label;

                    Label lblOldPrice = GridView1.Rows[i].FindControl("lblOldPrice") as Label;
                    Label lblDiscount = GridView1.Rows[i].FindControl("lblDiscount") as Label;
                    Label lblNewPrice = GridView1.Rows[i].FindControl("lblNewPrice") as Label;

                    if (lblDiscount.Text == "不折扣")
                    {
                        lblNewPrice.Text = string.Format("{0:f2}",
                        (Convert.ToDecimal(lblOldPrice.Text) + Convert.ToDecimal(lblAddBedPriceSun.Text)) * day);
                    }
                    else
                    {
                        lblNewPrice.Text = string.Format("{0:f2}",
                        (Convert.ToDecimal(lblOldPrice.Text) + Convert.ToDecimal(lblAddBedPriceSun.Text)) * day * Convert.ToDecimal(lblDiscount.Text) / 10);
                    }
                    sum += Convert.ToDecimal(lblNewPrice.Text);
                }
            }
            txtYinShouMoney.Text = sum.ToString();
            txtShiShouMoney.Text = Convert.ToString(sum + Convert.ToDecimal(txtDeposit.Text));
            if (GridView1.Rows.Count == 0)
            {
                lblErrNote.Text = "小助手提醒您：请选择要入住的房间！";
            }
        }
        catch (Exception ex)
        {
            flag = false;
        }
        return flag;
    }

    //加床张数
    protected void ddlAddBedPriceCount_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                DropDownList ddlAddBedPriceCount = GridView1.Rows[i].FindControl("ddlAddBedPriceCount") as DropDownList;
                Label lblAddBedPrice = GridView1.Rows[i].FindControl("lblAddBedPrice") as Label;
                Label lblAddBedPriceSun = GridView1.Rows[i].FindControl("lblAddBedPriceSun") as Label;
                if (ddlAddBedPriceCount.SelectedValue != "0")
                {
                    lblAddBedPriceSun.Text =
                   string.Format("{0:F2}", Convert.ToInt32(ddlAddBedPriceCount.SelectedValue) * Convert.ToDecimal(lblAddBedPrice.Text));
                }
                else
                {
                    lblAddBedPriceSun.Text = "0.00";
                }
            }
        }
        catch (Exception ex)
        {
        }

    }


}
