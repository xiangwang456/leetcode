using System;
using System.Collections.Generic;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using Hotel.IDAL;
using Hotel.Model;
using Hotel.DBUtility;

namespace Hotel.SQLServerDAL
{
    public class RoomNumberDAL:IRoomNumber
    {
        #region 前台查询
        public List<RoomNumber> GetRoomNumberByCondition(int typeId, int stationId, int stateId)
        {
            string sql = 
                " select n.RoomId as nId,n.RoomNum as nNum,n.RoomLayer as nLayer,n.RoomTel as nTel,"+
                " t.[Name] as tName,t.Id as tId,"+
                " s.RoomStateName as sName,s.RoomStateId as sId,"+
                " f.StationName as fName,f.StationId as fId "+
                " from RoomNumber n,RoomType t,RoomState s ,RoomStation f"+
                " where n.RoomTypeId=t.Id "+
                " and   n.RoomStateId=s.RoomStateId"+
                " and   n.RoomStationId=f.StationId";

            if (typeId != 0)
            {
                sql += " and n.RoomTypeId=" + typeId;
            }
            if (stationId != 0)
            {
                sql += " and n.RoomStationId=" + stationId;
            }
            if (stateId != 0)
            {
                sql += " and n.RoomStateId=" + stateId;
            }

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomNumber> list = new List<RoomNumber>();

            while (read.Read())
            {
                RoomNumber num = new RoomNumber();
                num.RoomId = (int)read["nId"];
                num.RoomNum = read["nNum"].ToString();
                num.RoomTel = read["nTel"].ToString();
                num.RoomLayer = (int)read["nLayer"];

                RoomState state = new RoomState();
                state.RoomStateId = (int)read["sId"];
                state.RoomStateName = read["sName"].ToString();
                num.RoomState = state;

                RoomStation station = new RoomStation();
                station.StationId = (int)read["fId"];
                station.StationName = read["fName"].ToString();
                num.RoomStation = station;

                RoomType type = new RoomType();
                type.Id = (int)read["tId"];
                type.Name = read["tName"].ToString();
                num.RoomType = type;

                list.Add(num);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 入住单
        public List<RoomNumber> GetRoomNumberByIds(string ids)
        {
            string sql =
                " select n.RoomId as nId,n.RoomNum as nNum,n.RoomLayer as nLayer,n.RoomTel as nTel," +
                " t.[Name] as tName,t.Id as tId,t.Price as tPrice,t.AddBedPrice as tAddBedPrice," +
                " s.RoomStateName as sName,s.RoomStateId as sId," +
                " f.StationName as fName,f.StationId as fId " +
                " from RoomNumber n,RoomType t,RoomState s ,RoomStation f" +
                " where n.RoomTypeId=t.Id " +
                " and n.RoomStateId=s.RoomStateId" +
                " and n.RoomStationId=f.StationId" +
                " and n.RoomId in (" + ids + " )"; 


            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomNumber> list = new List<RoomNumber>();
            int i = 1;
            while (read.Read())
            {
                RoomNumber num = new RoomNumber();
                num.RoomId = (int)read["nId"];
                num.RoomNum = read["nNum"].ToString();
                num.RoomTel = read["nTel"].ToString();
                num.RoomLayer = (int)read["nLayer"];

                RoomState state = new RoomState();
                state.RoomStateId = (int)read["sId"];
                state.RoomStateName = read["sName"].ToString();
                num.RoomState = state;

                RoomStation station = new RoomStation();
                station.StationId = (int)read["fId"];
                station.StationName = read["fName"].ToString();
                num.RoomStation = station;

                RoomType type = new RoomType();
                type.Id = (int)read["tId"];
                type.Name = read["tName"].ToString();
                type.Price = (decimal)read["tPrice"];
                type.AddBedPrice = (decimal)read["tAddBedPrice"];         
                num.RoomType = type;

                list.Add(num);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 返回所有房号，维修用
        public List<RoomNumber> GetRoomNumber()
        {
            string sql = "select RoomNum from RoomNumber";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomNumber> list = new List<RoomNumber>();
           
            while (read.Read())
            {
                RoomNumber num = new RoomNumber();        
                num.RoomNum = read["RoomNum"].ToString();

                list.Add(num);
            }
            read.Close();
            return list;
        }
        #endregion

        #region G_Shoping.aspx
        public List<RoomNumber> GetByState3()
        {
            string sql = "select RoomNum from RoomNumber where RoomStateId=3 ";
                
            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomNumber> list = new List<RoomNumber>();
            int i = 1;
            while (read.Read())
            {
                RoomNumber num = new RoomNumber();
                num.RoomNum = read["RoomNum"].ToString();

                list.Add(num);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 改变房间状态 BillToHotelByShow.aspx
        public bool UpdateRoomNumberState(string roomNo, int state)
        {
            string sql = "update RoomNumber set RoomStateId=" + state + "where RoomNum='" + roomNo + "'";
            return SQLHelper.ExeNonQuery(sql, CommandType.Text);
        }
        #endregion
    }
}
