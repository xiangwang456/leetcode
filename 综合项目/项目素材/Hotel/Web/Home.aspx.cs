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

public partial class home : System.Web.UI.Page
{
    public Hotel.Model.Favour favour = new Hotel.Model.Favour();
    public List<News> listZXDT = new List<News>();
    public List<News> listYGHD = new List<News>();
    public News YGJY = new News();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CurrentCustomer"] != null)
        {
            divShowCustomer.Style.Add("display", "block");
            divLogin.Style.Add("display", "none");
            Customer customer=Session["CurrentCustomer"] as Customer;
            lblCustomerName.Text = customer.RealName;
        }
        if (!IsPostBack)
        {
            favour = new FavourBLL().GetFavourByTop1();
            listZXDT = new NewsBLL().GetNewsByZXDT();
            listYGHD = new NewsBLL().GetNewsByYGHD();
            YGJY = new NewsBLL().GetNewsYGJY();
        }
    }

    //客户登录
    protected void btnLogin_ServerClick(object sender, EventArgs e)
    {
        if (txtValidateCode.Text.ToString().Trim() == Session["code"].ToString())
        {
            Customer customer = new CustomerBLL().LoginByCustomer(new Customer(txtLoginId.Text, txtPwd.Text));
            if (customer != null)
            {               
                divShowCustomer.Style.Add("display", "block");
                divLogin.Style.Add("display", "none");
                lblCustomerName.Text = customer.RealName;

                lblScript.Text = "";

                bool flag = new CustomerBLL().UpdateCustomerByLineCount(customer.Id);
                if (flag)
                {
                    customer.LineCount += 1;
                }
                Session["CurrentCustomer"] = customer;

                flag = new CustomerBLL().UpdateCustomerLastOnLineTime(customer.Id);
            }
            else
            {
                lblScript.Text = "用户名或密码错误！";
            }
        }
        else
        {
           lblScript.Text = "请输入正确的验证码！";
        }
       
        
    }

    //注销退出
    protected void lnkBtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        divShowCustomer.Style.Add("display", "none");
        divLogin.Style.Add("display", "block");
        txtLoginId.Text = "";
        txtValidateCode.Text = "";
    }
}
