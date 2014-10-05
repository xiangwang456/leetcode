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
public partial class Admin_RoomAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //小图
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

                txtPathXiao.Text = "Images/uppic/" + filename;

                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('上传成功');</script>");

            }
            catch (Exception ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('上传失败！');</script>");
            }
        }
    }

    //大图
    protected void Submit2_ServerClick(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
        {
            try
            {
                string temp = "";
                Random n = new Random();
                for (int i = 0; i < 3; i++)
                {
                    temp += n.Next(0, 10);
                }

                string filename = DateTime.Now.ToShortDateString() + "_" + temp + "_" + FileUpload2.FileName;

                FileUpload2.SaveAs(Server.MapPath("~/Images/uppic/") + filename);

                txtPathDa.Text = "Images/uppic/" + filename;

                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('上传成功');</script>");

            }
            catch (Exception ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('上传失败！');</script>");
            }
        }
    }

    //添加
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bool flag = new RoomTypeBLL().InsertRoom(new RoomType(txtTitle.Text, txtPathXiao.Text, txtPathDa.Text, txtContent.Text, Convert.ToDecimal(txtPrice.Text), txtArea.Text, DateTime.Now, Convert.ToInt32(rdoBed.SelectedValue), Convert.ToDecimal(txtAddBedPrice.Text)));
            Response.Redirect("RoomTypeManager.aspx");
        }
        catch (Exception ex)
        { ;}
    }
    protected void rdoBed_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdoBed.SelectedValue == "0")
        {
            txtAddBedPrice.Enabled = false;
        }
        else
        {
            txtAddBedPrice.Enabled = true;
        }
    }
}
