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

public partial class StyleSet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CurrentUser"] != null)
            {
                UserInfo user = Session["CurrentUser"] as UserInfo;
                rfStyle.Value = user.Style.Id.ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }

    //确定选择
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        UserInfo user = Session["CurrentUser"] as UserInfo;

        try
        {
            int styleId = Convert.ToInt32(rfStyle.Value);
            new UserInfoBLL().UpdateUserStyle(user.UserId, styleId);

            user.Style = new StyleBLL().GetStyleById(styleId);
            Session["CurrentUser"] = user;
        }
        catch (Exception ex)
        { ;}

        Response.Redirect("Index.aspx");
    }

    protected void dlStyle_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        HtmlInputRadioButton rad = e.Item.FindControl("rad") as HtmlInputRadioButton;
        UserInfo user = Session["CurrentUser"] as UserInfo;
        if (user.Style.Id.ToString() == rad.Value)
        {
            rad.Checked = true;
        }
        else
        {
            rad.Checked = false;
        }      
    }
}
