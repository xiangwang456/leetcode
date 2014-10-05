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
    public class ConferenceDAL:IConference
    {       

        #region 修改
        public bool UpdateConference(string content, int id)
        {
            string sql = "update [Conference] set [Content]=@Content where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Content", SqlDbType.VarChar);
            p1.Value = content;
            SqlParameter p2 = new SqlParameter("@Id", SqlDbType.Int);
            p2.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2 });
            return flag;
        }
        #endregion

        #region IConference 成员
        public Conference GetConference()
        {

            string sql = "select * from [Conference]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            Conference conference = new Conference();

            if (read.Read())
            {
                conference.Id = (int)read["Id"];
                if (read["Content"] != DBNull.Value)
                {
                    conference.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    conference.Sj = (DateTime)read["Sj"];
                }
            }
            read.Close();
            return conference;
        }
        #endregion
    }
}
