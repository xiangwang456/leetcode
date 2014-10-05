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
    public class BillToRepairDAL : IBillToRepair
    {
        #region 插入
        public bool InsertBillToRepair(BillToRepair repair)
        {
            List<SqlCommand> listCom = new List<SqlCommand>();
            SqlCommand com = null;

            string sql = "insert into [BillToRepair] values(@RoomNumber,@BeginTime,@EndTime,@Cause,@Operator,@RepairState)";

            SqlParameter p1 = new SqlParameter("@RoomNumber", SqlDbType.VarChar);
            p1.Value = repair.RoomNumber;
            SqlParameter p2 = new SqlParameter("@BeginTime", SqlDbType.DateTime);
            p2.Value = repair.BeginTime;
            SqlParameter p3 = new SqlParameter("@EndTime", SqlDbType.DateTime);
            p3.Value = repair.EndTime;
            SqlParameter p4 = new SqlParameter("@Cause", SqlDbType.VarChar);
            p4.Value = repair.Cause;
           SqlParameter p7 = new SqlParameter("@Operator", SqlDbType.VarChar);
            p7.Value = repair.Operator;
            SqlParameter p8 = new SqlParameter("@RepairState", SqlDbType.Int);
            p8.Value = repair.RepairState;

            com = new SqlCommand();
            com.Parameters.AddRange(new SqlParameter[] { p1, p2, p3, p4, p7, p8 });
            com.CommandType = CommandType.Text;
            com.CommandText = sql;
            listCom.Add(com);


            com = new SqlCommand();
            com.CommandType = CommandType.Text;
            com.CommandText = "update RoomNumber set RoomStateId=5 where RoomNum='" + repair.RoomNumber + "'";
            listCom.Add(com);


            bool flag = SQLHelper.ExeNonQueryTran(listCom);

            return flag;
        }
        #endregion

        #region 查询所有
        public List<BillToRepair> GetAll()
        {
            string sql = "select * from [BillToRepair]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<BillToRepair> list = new List<BillToRepair>();

            while (read.Read())
            {
                BillToRepair repair = new BillToRepair();
                repair.RepairId = (int)read["RepairId"];
                repair.RoomNumber = read["RoomNumber"].ToString();
                repair.BeginTime = (DateTime)read["BeginTime"];
                repair.EndTime = (DateTime)read["EndTime"];
                repair.Cause = read["Cause"].ToString();                
                repair.Operator = (string)read["Operator"];
                repair.RepairState = (int)read["RepairState"];
                list.Add(repair);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 根据主键查询
        public BillToRepair GetBillToRepairById(int id)
        {

            string sql = "select * from [BillToRepair] where RepairId=" + id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            BillToRepair repair = null;

            if (read.Read())
            {
                repair = new BillToRepair();
                repair.RepairId = (int)read["RepairId"];
                repair.RoomNumber = read["RoomNumber"].ToString();
                repair.BeginTime = (DateTime)read["BeginTime"];
                repair.EndTime = (DateTime)read["EndTime"];
                repair.Cause = read["Cause"].ToString();
                repair.Operator = (string)read["Operator"];
                repair.RepairState = (int)read["RepairState"];
              
            }
            read.Close();
            return repair;
        }
        #endregion

        #region 修改
        public bool UpdateRepair(string roomNum, DateTime endTime, int repaidState, string cause, int id)
        {
            string sql = "update [BillToRepair] set [RoomNumber] = @RoomNumber,[EndTime]=@EndTime,[Cause]=@Cause,[RepairState]=@RepairState where RepairId=@RepairId ";

            SqlParameter p1 = new SqlParameter("@RoomNumber", SqlDbType.VarChar);
            p1.Value = roomNum;
            SqlParameter p2 = new SqlParameter("@EndTime", SqlDbType.DateTime);
            p2.Value = endTime;
            SqlParameter p3 = new SqlParameter("@Cause", SqlDbType.VarChar);
            p3.Value = cause;
            SqlParameter p4 = new SqlParameter("@RepairState", SqlDbType.Int);
            p4.Value = repaidState;
            SqlParameter p5 = new SqlParameter("@RepairId", SqlDbType.Int);
            p5.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5 });

            if (flag == true && repaidState == 1)
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
                string sql = "select top 1 RepairId from [BillToRepair] where [RoomNumber]=(select RoomNum from RoomNumber where RoomId="
                    + roomNumberId + ") order by BeginTime desc ";

                id = (int)SQLHelper.GetScalar(sql, CommandType.Text);
            }
            catch (Exception ex) { }

            return id;
        }
        #endregion
    }
}
