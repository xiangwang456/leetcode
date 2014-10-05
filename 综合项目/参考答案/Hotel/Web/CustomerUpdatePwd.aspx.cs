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
using Hotel.Model;
using Hotel.BLL;

public partial class CustomerUpdatePwd : System.Web.UI.Page
{
    public Customer user = new Customer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CurrentCustomer"] == null)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {           
            user = Session["CurrentCustomer"] as Customer;
            lblLoginId.Text=user.LoginId;
        }

    }

    //修改密码
    protected void Button1_Click(object sender, EventArgs e)
    {
        user = Session["CurrentCustomer"] as Customer;
        if (txtOldPwd.Text != user.Pwd)
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('原始密码输入有误！');</script>");
            return;
        }
        Customer temp=new Customer();
        temp.Id=user.Id;
        temp.Pwd=txtConfirmPwd.Text;
        bool flag = new CustomerBLL().UpdateCustomerByPwd(temp);

        if (flag)
        {
            pnlMain.Visible = false;
            pnlOK.Visible = true;
            user.Pwd = txtConfirmPwd.Text;
            Session["CurrentCustomer"] = user;
        }        
    }

    //确定
    protected void Button3_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("CustomerShowData.aspx");
    }
}