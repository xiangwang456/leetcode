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
    public class RoomStateDAL:IRoomState
    {
        #region 查询所有
        public List<RoomState> GetRoomStateAll()
        {
            string sql = "select * from [RoomState] ";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomState> list = new List<RoomState>();

            //RoomState temp = new RoomState();
            //temp.RoomStateName= "不限房态";
            //temp.RoomStateId = 0;
            //list.Add(temp);

            while (read.Read())
            {
                RoomState state = new RoomState();
                state.RoomStateId = (int)read["RoomStateId"];
                state.RoomStateName = read["RoomStateName"].ToString();
                list.Add(state);
            }
            read.Close();

            return list;
        }

        #endregion
    }
}
