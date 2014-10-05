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

public partial class Admin_TeHuiAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //添加
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool flag = new FavourBLL().InsertFavour(new Favour(txtTitle.Text, txtPath.Text, txtContent.Text, DateTime.Now));
        Response.Redirect("TeHuiManager.aspx");
    }

    //上传
    protected void Submit1_ServerClick(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                string temp = "";
                Random n = new Random();
                for (int i = 0; i < 3; i++)
                {
                    temp += n.Next(0, 10);
                }

                string filename = DateTime.Now.ToShortDateString() + "_" + temp + "_" + FileUpload1.FileName;

                FileUpload1.SaveAs(Server.MapPath("~/Images/uppic/") + filename);

                txtPath.Text = "Images/uppic/" + filename;

                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('上传成功');</script>");

            }
            catch (Exception ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('上传失败！');</script>");
            }
        }
    }
}
