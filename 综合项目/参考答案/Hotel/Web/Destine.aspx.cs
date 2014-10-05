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

public partial class Destine : System.Web.UI.Page
{
List<RoomType> listRoom = new List<RoomType>();
protected void Page_Load(object sender, EventArgs e)
{
    if (!IsPostBack)
    {
        listRoom = new RoomTypeBLL().GetRoomTypeAll();
        for (int i = 0; i < listRoom.Count; i++)
        {
            if (i == 0)
            {
                imgRoom.ImageUrl = listRoom[i].Pic;
                lblArea.Text = listRoom[i].Area;
                lblPrice.Text = string.Format("{0:F2}", listRoom[i].Price);
            }
            ddlTypeName.Items.Add(new ListItem(listRoom[i].Name, listRoom[i].Id.ToString()));
        }
    }
    if (Session["CurrentCustomer"] != null)
    {
        Customer user = Session["CurrentCustomer"] as Customer;
        trEmail.Visible = false;
        trName.Visible = false;
        trTel.Visible = false;
        trAdd.Visible = false;
        trzip.Visible = false;
        trSex.Visible = false;
        trFax.Visible = false;//////
        trCompanyName.Visible = false;///////
    }   
}

//浏览房屋类型
protected void ddlTypeName_SelectedIndexChanged(object sender, EventArgs e)
{
    listRoom = new RoomTypeBLL().GetRoomTypeAll();
    for (int i = 0; i < listRoom.Count; i++)
    {
        if (ddlTypeName.SelectedValue == listRoom[i].Id.ToString())
        {
            imgRoom.ImageUrl = listRoom[i].Pic;
            lblArea.Text = listRoom[i].Area;
            lblPrice.Text =string.Format("{0:F2}",listRoom[i].Price);
        }
    }
}

//保存
protected void Submit1_ServerClick(object sender, EventArgs e)
{
    try
    {
        RoomBook book = null;
        if (Session["CurrentCustomer"] != null)
        {
            Customer customer = Session["CurrentCustomer"] as Customer;
            book = new RoomBook(ddlTypeName.SelectedValue, Convert.ToInt32(txtRoomCount.Value),
                Convert.ToInt32(txtPeopleCount.Value), customer.LoginId,
                customer.Sex, customer.Zip, customer.Address, txtTel.Value, "",
                customer.Email, Convert.ToDateTime(txtFromDate.Text), Convert.ToDateTime(txtToDate.Text),
                txtFanshi.Value, "", txtContent.Value, DateTime.Now);
        }
        else
        {
            book = new RoomBook(ddlTypeName.SelectedValue, Convert.ToInt32(txtRoomCount.Value),
             Convert.ToInt32(txtPeopleCount.Value), txtName.Value,
             rdoBed.SelectedValue, txtZip.Value, txtFromWhere.Value, txtTel.Value, txtFax.Value,
             txtMail.Value, Convert.ToDateTime(txtFromDate.Text), Convert.ToDateTime(txtToDate.Text),
             txtFanshi.Value, txtCompany.Value, txtContent.Value, DateTime.Now);
        }

        bool flag = new RoomBookBLL().insertRoomBook(book);

        pnlMain.Visible = false;
        pnlOK.Visible = true;
    }
    catch (Exception ex)
    { }
}

//插入OK
protected void Button3_ServerClick(object sender, EventArgs e)
{
    Response.Redirect("Home.aspx");
}
}
