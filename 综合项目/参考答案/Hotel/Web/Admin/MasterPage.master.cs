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
using System.Collections.Generic;
using AjaxControlToolkit;
using Hotel.BLL;
using Hotel.Model;

public partial class Admin_MasterPage : System.Web.UI.MasterPage
{
    public UserInfo user = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CurrentUser"] != null)
            {
                user = Session["CurrentUser"] as UserInfo;
                //确定皮肤样式
                linkStyle.Href = "../" + user.Style.Path;
                lblName.Text = user.UserName;
                AddIndexTreeNode();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }

    protected void AddIndexTreeNode()
    {
        TreeView1.Nodes.Clear();

        TreeNode tnd = new TreeNode("客房管理", "1");
        tnd.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tnd);
        TreeNode tnd_1 = new TreeNode("前台中心", "2");
        tnd_1.NavigateUrl = "RoomNumberManager.aspx";
        tnd_1.ImageUrl = "Images/img/syssetup.gif";
        tnd.ChildNodes.Add(tnd_1);
        TreeNode tnd_2 = new TreeNode("房间维修登记", "2");
        tnd_2.NavigateUrl = "BillToRepairAdd.aspx";
        tnd_2.ImageUrl = "Images/img/syssetup.gif";
        tnd.ChildNodes.Add(tnd_2);
        TreeNode tnd_3 = new TreeNode("房间维修查询", "2");
        tnd_3.NavigateUrl = "BillToRepairManage.aspx";
        tnd_3.ImageUrl = "Images/img/syssetup.gif";
        tnd.ChildNodes.Add(tnd_3);
        TreeNode tnd_4 = new TreeNode("房间自用登记", "2");
        tnd_4.NavigateUrl = "BillToOwnAdd.aspx";
        tnd_4.ImageUrl = "Images/img/syssetup.gif";
        tnd.ChildNodes.Add(tnd_4);
        TreeNode tnd_5 = new TreeNode("房间自用查询", "2");
        tnd_5.NavigateUrl = "BillToOwnManage.aspx";
        tnd_5.ImageUrl = "Images/img/syssetup.gif";
        tnd.ChildNodes.Add(tnd_5);

        TreeNode tne = new TreeNode("商品管理", "1");
        tne.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tne);
        TreeNode tne_1 = new TreeNode("品名设置", "2");
        tne_1.NavigateUrl = "G_GoodsManage.aspx";
        tne_1.ImageUrl = "Images/img/syssetup.gif";
        tne.ChildNodes.Add(tne_1);
        TreeNode tne_2 = new TreeNode("商品进货", "2");
        tne_2.NavigateUrl = "G_AddGoodsStock.aspx";
        tne_2.ImageUrl = "Images/img/syssetup.gif";
        tne.ChildNodes.Add(tne_2);
        TreeNode tne_3 = new TreeNode("库存盘点", "2");
        tne_3.NavigateUrl = "G_CheckGoods.aspx";
        tne_3.ImageUrl = "Images/img/syssetup.gif";
        tne.ChildNodes.Add(tne_3);
        TreeNode tne_4 = new TreeNode("商品零售", "2");
        tne_4.NavigateUrl = "G_Shoping.aspx";
        tne_4.ImageUrl = "Images/img/syssetup.gif";
        tne.ChildNodes.Add(tne_4);


        TreeNode tn10 = new TreeNode("新闻管理", "1");
        tn10.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tn10);
        TreeNode tn10_1 = new TreeNode("添加", "2");
        tn10_1.NavigateUrl = "NewsAdd.aspx";
        tn10_1.ImageUrl = "Images/img/syssetup.gif";
        tn10.ChildNodes.Add(tn10_1);
        TreeNode tn10_2 = new TreeNode("添加 查看 修改", "2");
        tn10_2.NavigateUrl = "NewsManager.aspx";
        tn10_2.ImageUrl = "Images/img/syssetup.gif";
        tn10.ChildNodes.Add(tn10_2);

        TreeNode tn4 = new TreeNode("公司基本信息", "1");
        tn4.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tn4);
        TreeNode tn4_1 = new TreeNode("公司基本信息", "2");
        tn4_1.NavigateUrl = "CompanyDesc.aspx";
        tn4_1.ImageUrl = "Images/img/syssetup.gif";
        tn4.ChildNodes.Add(tn4_1);

        TreeNode tn5 = new TreeNode("特惠精选", "1");
        tn5.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tn5);
        TreeNode tn5_1 = new TreeNode("添加", "2");
        tn5_1.NavigateUrl = "TeHuiAdd.aspx";
        tn5_1.ImageUrl = "Images/img/syssetup.gif";
        tn5.ChildNodes.Add(tn5_1);
        TreeNode tn5_2 = new TreeNode("添加 查看 修改", "2");
        tn5_2.NavigateUrl = "TeHuiManager.aspx";
        tn5_2.ImageUrl = "Images/img/syssetup.gif";
        tn5.ChildNodes.Add(tn5_2);

        TreeNode tn6 = new TreeNode("餐饮及酒吧", "1");
        tn6.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tn6);
        TreeNode tn6_1 = new TreeNode("添加", "2");
        tn6_1.NavigateUrl = "WineBarAdd.aspx";
        tn6_1.ImageUrl = "Images/img/syssetup.gif";
        tn6.ChildNodes.Add(tn6_1);
        TreeNode tn6_2 = new TreeNode("添加 查看 修改", "2");
        tn6_2.NavigateUrl = "WineBarManager.aspx";
        tn6_2.ImageUrl = "Images/img/syssetup.gif";
        tn6.ChildNodes.Add(tn6_2);


        TreeNode tn7 = new TreeNode("健身和娱乐", "1");
        tn7.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tn7);
        TreeNode tn7_1 = new TreeNode("修改 查看", "2");
        tn7_1.NavigateUrl = "HealthFunManager.aspx";
        tn7_1.ImageUrl = "Images/img/syssetup.gif";
        tn7.ChildNodes.Add(tn7_1);

        TreeNode tn8 = new TreeNode("目的地指南", "1");
        tn8.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tn8);
        TreeNode tn8_1 = new TreeNode("添加", "2");
        tn8_1.NavigateUrl = "IntentAdd.aspx";
        tn8_1.ImageUrl = "Images/img/syssetup.gif";
        tn8.ChildNodes.Add(tn8_1);
        TreeNode tn8_2 = new TreeNode("添加 查看 修改", "2");
        tn8_2.NavigateUrl = "IntentManager.aspx";
        tn8_2.ImageUrl = "Images/img/syssetup.gif";
        tn8.ChildNodes.Add(tn8_2);

        TreeNode tn9 = new TreeNode("会议及宴会", "1");
        tn9.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tn9);
        TreeNode tn9_1 = new TreeNode(" 查看 修改", "2");
        tn9_1.NavigateUrl = "Conference.aspx";
        tn9_1.ImageUrl = "Images/img/syssetup.gif";
        tn9.ChildNodes.Add(tn9_1);

        TreeNode tn11 = new TreeNode("客房类型管理", "1");
        tn11.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tn11);
        TreeNode tn11_1 = new TreeNode("添加", "2");
        tn11_1.NavigateUrl = "RoomTypeAdd.aspx";
        tn11_1.ImageUrl = "Images/img/syssetup.gif";
        tn11.ChildNodes.Add(tn11_1);
        TreeNode tn11_2 = new TreeNode("添加 查看 修改", "2");
        tn11_2.NavigateUrl = "RoomTypeManager.aspx";
        tn11_2.ImageUrl = "Images/img/syssetup.gif";
        tn11.ChildNodes.Add(tn11_2);
        TreeNode tn11_3 = new TreeNode("价格表管理", "2");
        tn11_3.NavigateUrl = "RoomPrice.aspx";
        tn11_3.ImageUrl = "Images/img/syssetup.gif";
        tn11.ChildNodes.Add(tn11_3);

        TreeNode tnb = new TreeNode("客户管理", "1");
        tnb.ImageUrl = "Images/img/hrms.gif";
        TreeView1.Nodes.Add(tnb);
        TreeNode tnb_1 = new TreeNode("客户预定", "2");
        tnb_1.NavigateUrl = "RoomBookManager.aspx";
        tnb_1.ImageUrl = "Images/img/hrms.gif";
        tnb.ChildNodes.Add(tnb_1);
        TreeNode tnb_2 = new TreeNode("添加客户", "2");
        tnb_2.NavigateUrl = "CustomerAdd.aspx";
        tnb_2.ImageUrl = "Images/img/hrms.gif";
        tnb.ChildNodes.Add(tnb_2);
        TreeNode tnb_3 = new TreeNode("客户列表", "2");
        tnb_3.NavigateUrl = "CustomerManager.aspx";
        tnb_3.ImageUrl = "Images/img/hrms.gif";
        tnb.ChildNodes.Add(tnb_3);

        TreeNode tnc = new TreeNode("会员卡管理", "1");
        tnc.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tnc);
        TreeNode tnc_1 = new TreeNode("会员卡管理", "2");
        tnc_1.NavigateUrl = "CardManager.aspx";
        tnc_1.ImageUrl = "Images/img/syssetup.gif";
        tnc.ChildNodes.Add(tnc_1);

        TreeNode tna = new TreeNode("留言反馈", "1");
        tna.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tna);
        TreeNode tna_1 = new TreeNode("留言反馈", "2");
        tna_1.NavigateUrl = "LeaveWordManager.aspx";
        tna_1.ImageUrl = "Images/img/syssetup.gif";
        tna.ChildNodes.Add(tna_1);


        TreeNode tn2 = new TreeNode("个性空间", "1");
        tn2.ImageUrl = "Images/img/syssetup.gif";
        TreeView1.Nodes.Add(tn2);
        TreeNode tn2_1 = new TreeNode("风格选择", "2");
        tn2_1.NavigateUrl = "StyleSet.aspx";
        tn2_1.ImageUrl = "Images/img/syssetup.gif";
        tn2.ChildNodes.Add(tn2_1);

        TreeNode tn1 = new TreeNode("退出登录", "1");
        tn1.ImageUrl = "Images/img/exits.gif";
        tn1.NavigateUrl = "Logout.aspx";
        tn1.Target = "_parent";
        TreeView1.Nodes.Add(tn1);


        TreeView1.CollapseAll();
    }
    //注销
    protected void lbkbtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("NoBackByLogout.htm");
    }

    //展开树
    protected void btnExpand_Click(object sender, EventArgs e)
    {
        TreeView1.ExpandAll();
    }

    //折叠树
    protected void btnCollapse_Click(object sender, EventArgs e)
    {
        TreeView1.CollapseAll();
    }


    //刷新树
    protected void btnRefreshTree_Click(object sender, EventArgs e)
    {
        TreeView1.Nodes.Clear();
        AddIndexTreeNode();
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
        return subs;
    }
   

    //跳转到首页
    protected void lnkbtnHomePage_Click(object sender, EventArgs e)
    {
        if (Session["CurrentUser"] != null)
        {
            user = Session["CurrentUser"] as UserInfo;
            user.Url = Request.RawUrl.Substring(Request.RawUrl.IndexOf("/Web") + 5);
        }
        Response.Redirect("~/Home.aspx");
    }

    ////跳转到Office
    //protected void lnkbtnOffic_Click(object sender, EventArgs e)
    //{
    //    if (Session["CurrentUser"] != null)
    //    {
    //        user = Session["CurrentUser"] as UserInfo;
    //        if (user.Url != null)
    //        {
    //            if (user.Url.IndexOf("Office") != -1)//说明是从Office,跳转过来
    //            {
    //                string temp = user.Url;
    //                user.Url = Request.RawUrl.Substring(Request.RawUrl.IndexOf("/Web") + 5);
    //                Session["CurrentUser"] = user;
    //                Response.Redirect("~/" + temp);
    //            }
    //            else//是从首页跳转过来
    //            {
    //                user.Url = Request.RawUrl.Substring(Request.RawUrl.IndexOf("/Web") + 5);
    //                Session["CurrentUser"] = user;
    //                Response.Redirect("~/Admin/Office/Default.aspx");
    //            }
    //        }
    //        else
    //        {
    //            user.Url = Request.RawUrl.Substring(Request.RawUrl.IndexOf("/Web") + 5);
    //            Session["CurrentUser"] = user;
    //            Response.Redirect("~/Admin/Office/Default.aspx");
    //        }
    //    }      
    //}
}
