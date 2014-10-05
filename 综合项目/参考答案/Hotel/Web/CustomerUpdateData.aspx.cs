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


public partial class CustomerUpdateData : System.Web.UI.Page
{

    public Customer user = new Customer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CurrentCustomer"] != null)
            {
                user = Session["CurrentCustomer"] as Customer;     

                lblLoginId.Text = user.LoginId;
                txtAddress.Text = user.Address;
                txtCreateDate.Text = user.CreateTime.ToString();
                txtEmail.Text = user.Email;
                txtIdentityId.Text = user.IdentityCardNo;
                txtRealName.Text = user.RealName;
                txtTel.Text = user.Tel;
                txtWork.Text = user.Work;
                txtZip.Text = user.Zip;
                if (user.Sex == "男")
                {
                    rdobtnBoy.Checked = true;
                }
                else
                {
                    rdobtnGril.Checked = true;
                }

            }
        }
    }

    //修改
    protected void Button1_Click(object sender, EventArgs e)
    {
        user = Session["CurrentCustomer"] as Customer;

        string sex = "男";
        if (rdobtnGril.Checked)
        {
            sex = "女";
        }

        Customer customer = user;
        customer.Email = txtEmail.Text;
        customer.Id = user.Id;
        customer.RealName = txtRealName.Text;
        customer.Sex = sex;
        customer.IdentityCardNo = txtIdentityId.Text;
        customer.Zip = txtZip.Text;
        customer.Address = txtAddress.Text;
        customer.Work = txtWork.Text;
        customer.Tel = txtTel.Text;

        bool flag = new CustomerBLL().UpdateCustomer(customer);

        if (flag)
        {
            Session["CurrentCustomer"] = customer;
            Response.Redirect("CustomerShowData.aspx");
        }
    }
}
