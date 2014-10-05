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
    public class BillToOwnDAL : IBillToOwn
    {

        #region 插入
        public bool Insert(BillToOwn own)
        {
            List<SqlCommand> listCom = new List<SqlCommand>();
            SqlCommand com = null;

            string sql = "insert into [BillToOwn] values(@RoomNumber,@BeginTime,@EndTime,@Cause,@Operator,@OwnState)";

            SqlParameter p1 = new SqlParameter("@RoomNumber", SqlDbType.VarChar);
            p1.Value = own.RoomNumber;
            SqlParameter p2 = new SqlParameter("@BeginTime", SqlDbType.DateTime);
            p2.Value = own.BeginTime;
            SqlParameter p3 = new SqlParameter("@EndTime", SqlDbType.DateTime);
            p3.Value = own.EndTime;
            SqlParameter p4 = new SqlParameter("@Cause", SqlDbType.VarChar);
            p4.Value = own.Cause;
            SqlParameter p7 = new SqlParameter("@Operator", SqlDbType.VarChar);
            p7.Value = own.Operator;
            SqlParameter p8 = new SqlParameter("@OwnState", SqlDbType.Int);
            p8.Value = own.OwnState;

            com = new SqlCommand();
            com.Parameters.AddRange(new SqlParameter[] { p1, p2, p3, p4, p7, p8 });
            com.CommandType = CommandType.Text;
            com.CommandText = sql;
            listCom.Add(com);


            com = new SqlCommand();
            com.CommandType = CommandType.Text;
            com.CommandText = "update RoomNumber set RoomStateId=2 where RoomNum='" + own.RoomNumber + "'";
            listCom.Add(com);


            bool flag = SQLHelper.ExeNonQueryTran(listCom);

            return flag;
        }
        #endregion

        #region 查询全部
        public List<BillToOwn> GetAll()
        {
            string sql = "select * from [BillToOwn]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<BillToOwn> list = new List<BillToOwn>();

            while (read.Read())
            {
                BillToOwn own = new BillToOwn();
                own.Id = (int)read["Id"];
                own.RoomNumber = read["RoomNumber"].ToString();
                own.BeginTime = (DateTime)read["BeginTime"];
                own.EndTime = (DateTime)read["EndTime"];
                own.Cause = read["Cause"].ToString();

                own.Operator = (string)read["Operator"];
                own.OwnState = (int)read["OwnState"];
                list.Add(own);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 根据主键查询
        public BillToOwn GetBillToOwnById(int id)
        {
            string sql = "select * from [BillToOwn] where Id=" + id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            BillToOwn own = null;

            if (read.Read())
            {
                own = new BillToOwn();
                own.Id = (int)read["Id"];
                own.RoomNumber = read["RoomNumber"].ToString();
                own.BeginTime = (DateTime)read["BeginTime"];
                own.EndTime = (DateTime)read["EndTime"];
                own.Cause = read["Cause"].ToString();
                own.Operator = (string)read["Operator"];
                own.OwnState = (int)read["OwnState"];
            }
            read.Close();
            return own;
        }
        #endregion

        #region 修改
        public bool UpdateOwn(string roomNum, DateTime endTime, int ownState, string cause, int id)
        {
            string sql = "update [BillToOwn] set [RoomNumber] = @RoomNumber,[EndTime]=@EndTime,[Cause]=@Cause,[OwnState]=@OwnState where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@RoomNumber", SqlDbType.VarChar);
            p1.Value = roomNum;
            SqlParameter p2 = new SqlParameter("@EndTime", SqlDbType.DateTime);
            p2.Value = endTime;
            SqlParameter p3 = new SqlParameter("@Cause", SqlDbType.VarChar);
            p3.Value = cause;
            SqlParameter p4 = new SqlParameter("@OwnState", SqlDbType.Int);
            p4.Value = ownState;
            SqlParameter p5 = new SqlParameter("@Id", SqlDbType.Int);
            p5.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5 });

            if (flag == true && ownState == 1)
            {
                flag = SQLHelper.ExeNonQuery("update RoomNumber set RoomStateId=1 where RoomNum='" + roomNum + "'", CommandType.Text);
            }
            return flag;
        }
        #endregion

        #region 获得ID
        public int GetId(int roomNumberId)
        {
            int id = 0;
            try
            {
                string sql = "select top 1 Id from [BillToOwn] where [RoomNumber]=(select RoomNum from RoomNumber where RoomId="
                    + roomNumberId + ") order by BeginTime desc ";

                id = (int)SQLHelper.GetScalar(sql, CommandType.Text);
            }
            catch (Exception ex) { }

            return id;
        }
        #endregion
    }
}
