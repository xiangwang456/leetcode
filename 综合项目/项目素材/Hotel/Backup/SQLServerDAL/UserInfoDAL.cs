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
    public class UserInfoDAL : IUserInfo
    {
        #region 登陆
        public UserInfo Login(UserInfo user)
        {
            string sql = "select U.*,S.* from UserInfo U inner join [Style] S on U.StyleId=S.Id where"+
            " U.UserId=@UserId and U.Password=@Password ";

            SqlParameter p1 = new SqlParameter("@UserId", SqlDbType.VarChar);
            p1.Value = user.UserId;
            SqlParameter p2 = new SqlParameter("@Password", SqlDbType.VarChar);
            p2.Value = user.Password;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1, p2 });

            UserInfo userinfo = null;

            if (read.Read())
            {
                userinfo = new UserInfo();
                userinfo.UserId = user.UserId;
                userinfo.Password = user.Password;
                userinfo.UserName = read["UserName"].ToString();
                userinfo.Gender = (int)read["Gender"];

                Style style = new Style();
                style.Id = (int)read["Id"];
                style.Path = (string)read["Path"];
                userinfo.Style = style;

            }
            read.Close();
            return userinfo;
        }
        #endregion

        #region 修改用户风格
        public bool UpdateUserStyle(string userId, int styleId)
        {
            string sql = "update [UserInfo] set StyleId=@StyleId  where UserId=@UserId ";

            SqlParameter p1 = new SqlParameter("@StyleId", SqlDbType.Int);
            p1.Value = styleId;
            SqlParameter p2 = new SqlParameter("@UserId", SqlDbType.VarChar);
            p2.Value = userId;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2 });

            return flag;
        }
        #endregion


    }
}
