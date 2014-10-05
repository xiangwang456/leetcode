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

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CurrentUser"] != null)
            {
                UserInfo user = Session["CurrentUser"] as UserInfo;
                if (user.Url != null)
                {
                    Response.Redirect("~/" + user.Url);
                }
            }
        }
    }

    //确定登陆
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {
        if (txtValidateCode.Value.ToString().Trim() == Session["code"].ToString())
        {
            UserInfo user = new UserInfo();
            user = new UserInfoBLL().Login(new UserInfo(txtLoginId.Value, txtPwd.Value));
            if (user != null)
            {
                new LoginLogBLL().InsertLogin(txtLoginId.Value, DateTime.Now, 1, Request.UserHostAddress, "用户登录成功");

                Session["CurrentUser"] = user;
                Server.Execute("NoBackByLogin.htm");
            }
            else
            {
                new LoginLogBLL().InsertLogin(txtLoginId.Value, DateTime.Now, 0, Request.UserHostAddress, "用户登录失败，用户名或密码不正确。");

                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('用户名或密码错误！');</script>");
            }
        }
        else
        {
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请输入正确的验证码！');</script>");
        }       
    }
}
