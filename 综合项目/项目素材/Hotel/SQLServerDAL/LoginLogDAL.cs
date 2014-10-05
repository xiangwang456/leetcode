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
    public class LoginLogDAL:ILoginLog
    {
        #region 登录日志
        public bool InsertLogin(string userId, DateTime loginTime, int ifSuccess, string loginUserIp, string loginDesc)
        {
            string sql = "insert into [LoginLog] values(@UserId,@LoginTime,@IfSuccess,@LoginUserIp,@LoginDesc)";

            SqlParameter p1 = new SqlParameter("@UserId", SqlDbType.VarChar);
            p1.Value = userId;
            SqlParameter p2 = new SqlParameter("@LoginTime", SqlDbType.DateTime);
            p2.Value = loginTime;
            SqlParameter p3 = new SqlParameter("@IfSuccess", SqlDbType.Int);
            p3.Value = ifSuccess;
            SqlParameter p4 = new SqlParameter("@LoginUserIp", SqlDbType.VarChar);
            p4.Value = loginUserIp;
            SqlParameter p5 = new SqlParameter("@LoginDesc", SqlDbType.VarChar);
            p5.Value = loginDesc;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5 });

            return flag;
        }
        #endregion

        #region 有条件查询 S_LoginLog.aspx
        public List<LoginLog> GetLoginBySearch(string beginTime, string endTime, int day)
        {
            string sql = "select l.*,u.UserName,u.UserId as uUserId  "+
                " from LoginLog l,UserInfo u"+
                " where l.UserId=u.UserId";

            if (day != -1)
            {
                sql += " and datediff(day,[LoginTime],getdate())<=" + day;
            }
            else
            {
                if (beginTime != "" && endTime == "")
                {
                    sql += " and l.[LoginTime] >= '" + beginTime + "'";
                }
                else if (beginTime == "" && endTime != "")
                {
                    sql += " and l.[LoginTime] <= '" + endTime + "'";
                }
                else if (beginTime != "" && endTime != "")
                {
                    sql += " and l.[LoginTime] >= '" + beginTime + "' and l.[LoginTime] <= '" + endTime + "'";
                }
            }
            sql += " order by l.LoginTime desc ";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<LoginLog> list = new List<LoginLog>();
            while (read.Read())
            {
                LoginLog log = new LoginLog();
                log.LoginId = (int)read["LoginId"];
                log.LoginTime = (DateTime)read["LoginTime"];
                log.IfSuccess = (int)read["IfSuccess"];
                log.LoginUserIp = (string)read["LoginUserIp"];
                log.LoginDesc = (string)read["LoginDesc"];

                UserInfo user = new UserInfo();
                user.UserName = (string)read["UserName"];
                user.UserId = (string)read["uUserId"];

                log.UserInfo = user;

                list.Add(log);
            }
            read.Close();

            return list;
        }
        #endregion

        #region 删除
        public bool DeleteById(string loginId)
        {
            string sql = "delete from [LoginLog] where LoginId in (" + loginId + ")";

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text);

            return flag;
        }

        #endregion
    }
}
