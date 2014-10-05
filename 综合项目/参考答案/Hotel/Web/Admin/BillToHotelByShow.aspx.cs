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

public partial class Admin_BillToHotelByShow : System.Web.UI.Page
{
    public List<BillToStay> list = new List<BillToStay>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BeginLoad();
        }
    }

    protected void BeginLoad()
    {
        string name = Request.QueryString["name"];
        if (name != null && name != "")
        {
            list = new BillToStayBLL().GetByRealName(name);

            GridView1.DataSource = list;
            GridView1.DataBind();

            if (list.Count > 0)
            {
                lblAddress.Text = list[0].Address;
                lblCertificateNo.Text = list[0].CertificateNo;
                lblCertificateType.Text = list[0].CertificateType;
                lblCountryArea.Text = list[0].CountryArea;
                lblCustomerMark.Text = list[0].CustomerMark;
                lblCustomerSource.Text = list[0].CustomerSource;
                lblCustomerType.Text = list[0].CustomerType;
                lblDeposit.Text = list[0].Deposit.ToString();

                lblOperationer.Text = list[0].Operationer;
                lblPayMark.Text = list[0].PayMark;
                lblPayType.Text = list[0].PayType;
                lblProviceArea.Text = list[0].ProviceArea;
                lblRealName.Text = list[0].RealName;

                lblSex.Text = list[0].Sex;
                lblShiShouMoney.Text = list[0].ShiShouMoney.ToString();
                lblTel.Text = list[0].Tel;
                lblYinShouMoney.Text = list[0].YinShouMoney.ToString();
                lblComeDate2.Text = list[0].ComeDate.ToString();
            }
            else
            {
                Response.Redirect("RoomNumberManager.aspx");
            }
        }
    }


    //行绑定，光棒效果。。。
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.className='GridMove'");
            e.Row.Attributes.Add("onmouseout", "this.className='GridItem'");

            LinkButton lnkbtnTuiFang = e.Row.FindControl("lnkbtnTuiFang") as LinkButton;
            lnkbtnTuiFang.Attributes.Add("onclick", "return confirm('确定要退房吗？')");
        }
    }


    //获得序列号
    protected int GetNo()
    {
        return GridView1.Rows.Count + 1;
    }

    //退房
    protected void lnkbtnTuiFang_Command(object sender, CommandEventArgs e)
    {
        try
        {
            bool flag = new RoomNumberBLL().UpdateRoomNumberState(e.CommandName.ToString(), 1);
            BeginLoad();
        }
        catch (Exception ee) { }
    }

    //全部退房
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                Label lblRoomNo = GridView1.Rows[i].FindControl("lblRoomNo") as Label;
                bool flag = new RoomNumberBLL().UpdateRoomNumberState(lblRoomNo.Text, 1);
            }
            Response.Redirect("RoomNumberManager.aspx");
        }
        catch (Exception ee) { }
    }
}
