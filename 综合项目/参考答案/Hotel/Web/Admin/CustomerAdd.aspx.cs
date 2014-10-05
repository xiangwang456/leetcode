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

public partial class Admin_AddCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //登录名是否重复
    protected void txtLoginId_TextChanged(object sender, EventArgs e)
    {
        bool flag = new CustomerBLL().IsLoginIdExit(txtLoginId.Text);
        if (flag)
        {
            lblLoginId.Text = "该用户名已经存在";
        }
        else
        {
            lblLoginId.Text = "";
        }
    }

    //身份证是否重复
    protected void txtIdentityCardNo_TextChanged(object sender, EventArgs e)
    {
        bool flag = new CustomerBLL().IsIdentityExit(txtIdentityCardNo.Text);
        if (flag)
        {
            lblIdentityId.Text = "该身份证号码已经存在";
        }
        else
        {
            lblIdentityId.Text = "";
        }
    }

    //ＥMail是否重复
    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {
        bool flag = new CustomerBLL().IsEmailExit(txtEmail.Text);
        if (flag)
        {
            lblEmail.Text = "该 Email 已经存在";
        }
        else
        {
            lblEmail.Text = "";
        }
    }

    //添加用户
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtLoginId_TextChanged(sender, e);
        txtEmail_TextChanged(sender, e);
        txtIdentityCardNo_TextChanged(sender, e);
        if (lblLoginId.Text == "" && lblEmail.Text == "" && lblIdentityId.Text == "")
        {
            string CardNo = string.Format("{0:yyyyMMddHHmmss}", DateTime.Now);
            Random n = new Random();
            for (int i = 0; i < 3; i++)
            {
                CardNo += n.Next(0, 10);
            }

            Customer cus = new Customer(txtLoginId.Text, txtPwd.Text, CardNo, txtEmail.Text,
                RadioButtonList1.SelectedValue, DateTime.Now, txtRealName.Text, txtTel.Text,
                txtAddress.Text, txtZip.Text, txtIdentityCardNo.Text, txtWork.Text
                , 0, DateTime.Now);

            bool flag = new CustomerBLL().InsertCustomer(cus);
            Response.Redirect("CustomerManager.aspx");
        }
    }
}
