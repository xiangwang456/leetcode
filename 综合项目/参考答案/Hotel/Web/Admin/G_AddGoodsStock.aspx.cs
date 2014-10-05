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

public partial class Admin_G_AddGoodsStock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CurrentUser"] != null)
            {
                UserInfo user = Session["CurrentUser"] as UserInfo;
                lblUserId.Text = user.UserId;
                lblTime.Text = DateTime.Now.ToString();                
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        lblNote.Text = "";
        ddlGoodsName_PreRender(sender, e);
    }

    //保存
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
        }

        catch (Exception ex) { }
    }

    //商品类别：
    protected void ddlGoodsType_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlGoodsName_PreRender(sender, e);
    }

    //设置商品名称显示
    protected void ddlGoodsName_PreRender(object sender, EventArgs e)
    {
        try
        {
            GoodsName goodsName = new GoodsNameBLL().GetGoodsNameById(Convert.ToInt32(ddlGoodsName.SelectedValue));
            if (goodsName != null)
            {
                lblUnit.Text = goodsName.Unit;
                lblPrice.Text = string.Format("{0:C}", goodsName.Price);
               
            }
            else
            {
                lblUnit.Text = "暂无";
                lblPrice.Text = "暂无";
            }
        }
        catch (Exception exe) { }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.className='GridMove'");
            e.Row.Attributes.Add("onmouseout", "this.className='GridItem'");

       }
    }

    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0)
        {
            pnlNoFile.Visible = false;

            Label lblStoreCount = GridView1.Rows[GridView1.Rows.Count - 1].FindControl("lblStoreCount") as Label;
            lblStore.Text = lblStoreCount.Text;
        }
        else
        {
            pnlNoFile.Visible = true;
            lblStore.Text = "0";
        }
    }

    //截取内容
    public string GetCut(string content, int num)
    {
        string subs = null;
        if (content != null)
        {
            if (content.Length > num)
            {
                subs = content.Substring(0, num);
                subs += "...";
            }
            else
            {
                subs = content;
            }
        }
        if (content == "")
        {
            subs = "暂无";
        }
        return subs;
    }

    //保存
    protected void btnSvae_Click(object sender, EventArgs e)
    {
        try
        {
            UserInfo user = Session["CurrentUser"] as UserInfo;

            int storeCount = 0;
            if (GridView1.Rows.Count > 0)
            {
                Label lblStoreCount = GridView1.Rows[GridView1.Rows.Count - 1].FindControl("lblStoreCount") as Label;
                storeCount = Convert.ToInt32(lblStoreCount.Text);
            }

            bool flag = new GoodsStoreBLL().InsertStore(Convert.ToInt32(ddlGoodsName.SelectedValue), user.UserId, DateTime.Now,
                Convert.ToDecimal(txtPrice.Text), Convert.ToInt32(txtCount.Text), 0, storeCount + Convert.ToInt32(txtCount.Text), txtMark.Text, 1);

            GridView1.DataSourceID = "ObjectDataSource3";
            GridView1.DataBind();

        }
        catch (Exception exe) { lblNote.Text = "小助提醒您：数据库异常,请联系管理员！"; }
    }

    //导入Excel  不能不刷新
    protected void Button4_Click(object sender, EventArgs e)
    {
        string style = @"<style> .text { mso-number-format:\@; } </script> ";
        Response.Clear();
        Response.AddHeader("content-disposition", "attachment;filename=word1.xls");
        Response.Charset = "GB2312";
        Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");//设置输出流为简体中文
        Response.ContentType = "application/word1.xls";
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
        this.GridView1.RenderControl(htmlWrite);
        Response.Write(style);
        Response.Write(stringWrite.ToString());
        Response.End();


        //HttpContext.Current.Response.AppendHeader("Content-Disposition", "attachment;filename=" + strFileName + ".xls");
        //HttpContext.Current.Response.Charset = "utf-8";

        //HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.GetEncoding("utf-8");
        ////System.Text.Encoding.Default;	     

        //HttpContext.Current.Response.ContentType = "application/ms-excel";     //设置输出流为简体中文						
        //ctl.Page.EnableViewState = false;
        //System.Globalization.CultureInfo myCItrad = new System.Globalization.CultureInfo("ZH-CN", true);
        //System.IO.StringWriter tw = new System.IO.StringWriter();
        //System.Web.UI.HtmlTextWriter hw = new System.Web.UI.HtmlTextWriter(tw);

        //ctl.RenderControl(hw);
        //HttpContext.Current.Response.Write(tw.ToString());
        //HttpContext.Current.Response.End();
        //hw.Flush();
        //hw.Close();
        //tw.Flush();
        //tw.Close();

    }

    //导出到excel方法必须关联方法(使用当前GridView1)
    public override void VerifyRenderingInServerForm(Control control)
    {

    }

    //摘要
    protected string GetSummary(int type)
    {
        string returnValue = "";
        if (type == 1)
        {
            returnValue= "进货";
        }
        if (type == 2)
        {
            returnValue= "出货";
        }
        if (type == 3)
        {
            returnValue= "盘赢";
        }
        if (type == 4)
        {
            returnValue = "盘亏";
        }
        return returnValue;
    }

    //借方还是贷方
    protected string GetJi(string In,string type)
    {
        string returnValue = "";
        if (type == "1" || type == "3" )
        {
            returnValue = In;
        }
        return returnValue;
    }

    protected string GetDai(string outC, string type)
    {
        string returnValue = "";
        if (type == "2" || type == "4")
        {
            returnValue = outC;
        }
        return returnValue;
    }
}
