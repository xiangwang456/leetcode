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
    public class RoomStationDAL:IRoomStation
    {
        #region 查询所有
        public List<RoomStation> GetRoomStationAll()
        {
            string sql = "select * from [RoomStation] ";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomStation> list = new List<RoomStation>();

            //RoomStation temp = new RoomStation();
            //temp.StationName = "所有位置";
            //temp.StationId = 0;
            //list.Add(temp);

            while (read.Read())
            {
                RoomStation station = new RoomStation();
                station.StationId = (int)read["StationId"];
                station.StationName = read["StationName"].ToString();
                list.Add(station);
            }
            read.Close();

            return list;
        }
        #endregion
    }
}
