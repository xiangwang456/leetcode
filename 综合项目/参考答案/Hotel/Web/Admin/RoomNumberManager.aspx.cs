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
using System.Drawing;

public partial class Admin_RoomNumberManager : System.Web.UI.Page
{
    public List<RoomState> listState = new List<RoomState>();
    public List<RoomStation> listStation = new List<RoomStation>();
    public List<RoomType> listType = new List<RoomType>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CurrentUser"] != null)
            {
                string ids = Request.QueryString["id"];
                ViewState["ids"] = ids;
                listState = new RoomStateBLL().GetRoomStateAll();
                listStation = new RoomStationBLL().GetRoomStationAll();
                listType = new RoomTypeBLL().GetRoomTypeAllByDDL();
                ddlState.Items.Clear();
                ddlStation.Items.Clear();
                ddlRoomType.Items.Clear();
                ddlState.Items.Add(new ListItem("不限房态", "0"));
                ddlStation.Items.Add(new ListItem("所有位置", "0"));
                ddlRoomType.Items.Add(new ListItem("所有房型", "0"));
                foreach (RoomState state in listState)
                {
                    ddlState.Items.Add(new ListItem(state.RoomStateName, state.RoomStateId.ToString()));
                }
                foreach (RoomStation station in listStation)
                {
                    ddlStation.Items.Add(new ListItem(station.StationName, station.StationId.ToString()));
                }
                foreach (RoomType type in listType)
                {
                    ddlRoomType.Items.Add(new ListItem(type.Name, type.Id.ToString()));
                }
                DDlChange();
            }
        }
    }

    //获得按钮的背景色
    protected Color GetBackColor(string stateName)
    {
        Color returnColor = new Color();
        if (stateName == "空闲")
        {
            returnColor = Color.Green;
        }
        else if (stateName == "自用")
        {
            returnColor = Color.Olive;
        }
        else if (stateName == "已入住")
        {
            returnColor = Color.Coral;

        }
        else if (stateName == "保留")
        {
            returnColor = Color.DarkViolet;
        }
        else if (stateName == "待维修")
        {
            returnColor = Color.MidnightBlue;
        }
        return returnColor;
    }

    //获得按钮的显示文本
    protected string GetButtonText(string number, string typeName,string stateId)
    {
        string returnValue = number + "\n" + typeName;
        if (stateId == "3")
        {
            returnValue = number + "\n" + typeName + "\n" + new BillToStayBLL().GetRealName(number);
        }
        return returnValue;
    }

    //获得按钮的提示文本
    protected string GetButtonTool(string typeName, string station, string layer, string tel)
    {
        return typeName + "," + station + "," + layer + "层\n电话：" + tel;
    }

    //房屋位置
    protected void ddlStation_SelectedIndexChanged(object sender, EventArgs e)
    {
        DDlChange();
    }
    //房屋类型
    protected void ddlRoomType_SelectedIndexChanged(object sender, EventArgs e)
    {
        DDlChange();
    }
    //房屋状态
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        DDlChange();
    }

    //绑定
    protected void DDlChange()
    {
        try
        {

            List<RoomNumber> listNmu = new RoomNumberBLL().GetRoomNumberByCondition(Convert.ToInt32(ddlRoomType.SelectedValue), Convert.ToInt32(ddlStation.SelectedValue), Convert.ToInt32(ddlState.SelectedValue));

            anpPager.RecordCount = listNmu.Count;
            PagedDataSource pdsList = new PagedDataSource();
            pdsList.DataSource = listNmu;
            pdsList.AllowPaging = true;
            pdsList.PageSize = anpPager.PageSize;
            //pdsList.AllowCustomPaging = true;
            pdsList.CurrentPageIndex = anpPager.CurrentPageIndex - 1;
            DataList1.DataSource = pdsList;
            DataList1.DataBind();

            int RepairNum = 0;
            int emptyNum = 0;
            int OwnNum = 0;
            int GuestNum = 0;
            int KeepNum = 0;

            int sum = 0;

            foreach (RoomNumber num in listNmu)
            {
                if (num.RoomState.RoomStateId == 1)
                {
                    emptyNum++;
                }
                if (num.RoomState.RoomStateId == 2)
                {
                    OwnNum++;
                }
                if (num.RoomState.RoomStateId == 3)
                {
                    GuestNum++;
                }
                if (num.RoomState.RoomStateId == 4)
                {
                    KeepNum++;
                }
                if (num.RoomState.RoomStateId == 5)
                {
                    RepairNum++;
                }
                sum++;
            }

            lblEmptyNum.Text = emptyNum.ToString();
            lblGuestNum.Text = GuestNum.ToString();
            lblKeepNum.Text = KeepNum.ToString();
            lblOwnNum.Text = OwnNum.ToString();
            lblRepairNum.Text = RepairNum.ToString();
            lblFullNum.Text = sum.ToString();

            if (sum == 0)
            {
                lblEmptyPerCent.Text = "0%";
                lblGuestPerCent.Text = "0%";
                lblKeepPerCent.Text = "0%";
                lblOwnPerCent.Text = "0%";
                lblRepairPerCent.Text = "0%";
            }
            else
            {
                lblEmptyPerCent.Text = string.Format("{0:F2}", Convert.ToDouble(emptyNum) / sum * 100) + "%";
                lblGuestPerCent.Text = string.Format("{0:F2}", Convert.ToDouble(GuestNum) / sum * 100) + "%";
                lblKeepPerCent.Text = string.Format("{0:F2}", Convert.ToDouble(KeepNum) / sum * 100) + "%";
                lblOwnPerCent.Text = string.Format("{0:F2}", Convert.ToDouble(OwnNum) / sum * 100) + "%";
                lblRepairPerCent.Text = string.Format("{0:F2}", Convert.ToDouble(RepairNum) / sum * 100) + "%";
            }

        }
        catch (Exception ex) { }

    }

    //按钮单击事件
    protected void Button1_Command(object sender, CommandEventArgs e)
    {
        try
        {
            string type = e.CommandArgument.ToString().Substring(0, e.CommandArgument.ToString().IndexOf(","));
            string roomNum = e.CommandArgument.ToString().Substring(e.CommandArgument.ToString().IndexOf(",") + 1);
            if (type == "1")//空闲
            {
                if (ViewState["ids"] == null)
                {
                    Response.Redirect("BillToHotel.aspx?id=" + Convert.ToInt32(e.CommandName.ToString()));
                }
                else
                {
                    Response.Redirect("BillToHotel.aspx?id=" + ViewState["ids"] as string + "," + Convert.ToInt32(e.CommandName.ToString()));                       
                }
            }
            else if (type == "2")//自用
            {

                Response.Redirect("BillToOwnById.aspx?id=" + new BillToOwnBLL().GetId(Convert.ToInt32(e.CommandName.ToString())));        
            }
            else if (type == "5")//待维修
            {
                Response.Redirect("BillToRepairById.aspx?id=" + new BillToRepairBLL().GetId(Convert.ToInt32(e.CommandName.ToString())));
            }
            else if (type == "3")//已入住
            {
                string name = new BillToStayBLL().GetRealName(roomNum);
                Response.Redirect("BillToHotelByShow.aspx?name=" + name);                
            }
        }
        catch (Exception ex) { }      
    }


    //呈现之前
    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        if (DataList1.Items.Count > 0)
        {
            pnlNoFile.Visible = false;
        }
        else
        {
            pnlNoFile.Visible = true;
        }
    }

    //分页绑定
    protected void anpPager_PageChanged(object sender, EventArgs e)
    {
        DDlChange();
    }


}
