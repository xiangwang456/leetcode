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
    public class WineBarDAL:IWineBar
    {
        #region IWineBar 成员
        public List<Hotel.Model.WineBar> GetWineBarAll()
        {
            string sql = "select * from [WineBar]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<WineBar> list = new List<WineBar>();

            while (read.Read())
            {
                WineBar bar = new WineBar();

                bar.Id = (int)read["Id"];
                if (read["Name"] != DBNull.Value)
                {
                    bar.Name = read["Name"].ToString();
                }
                if (read["Spic"] != DBNull.Value)
                {
                    bar.Spic = read["Spic"].ToString();
                }
                if (read["Pic"] != DBNull.Value)
                {
                    bar.Pic = read["Pic"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    bar.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    bar.Sj = (DateTime)read["Sj"];
                }


                list.Add(bar);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 根据主键查询
        public WineBar GetWineBarById(int id)
        {
            string sql = "select * from [WineBar] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", id);

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1 });

            WineBar bar = new WineBar();

            if (read.Read())
            {       
                bar.Id = (int)read["Id"];
                if (read["Name"] != DBNull.Value)
                {
                    bar.Name = read["Name"].ToString();
                }
                if (read["Spic"] != DBNull.Value)
                {
                    bar.Spic = read["Spic"].ToString();
                }
                if (read["Pic"] != DBNull.Value)
                {
                    bar.Pic = read["Pic"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    bar.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    bar.Sj = (DateTime)read["Sj"];
                }
            }
            read.Close();
            return bar;
        }
        #endregion

        #region 插入
        public bool InsertWineBar(WineBar bar)
        {

            string sql = "insert into [WineBar] values(@Name,@Spic,@Pic,@Content,@Sj)";

            SqlParameter p1 = new SqlParameter("@Name", SqlDbType.VarChar);
            p1.Value = bar.Name;
            SqlParameter p2 = new SqlParameter("@Spic", SqlDbType.VarChar);
            p2.Value = bar.Spic;
            SqlParameter p3 = new SqlParameter("@Pic", SqlDbType.VarChar);
            p3.Value = bar.Pic;
            SqlParameter p4 = new SqlParameter("@Content", SqlDbType.VarChar);
            p4.Value = bar.Content;
            SqlParameter p5 = new SqlParameter("@Sj", SqlDbType.DateTime);
            p5.Value = bar.Sj;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5 });

            return flag;
        }
        #endregion

        #region 删除
        public bool DeleteById(int id)
        {
            string sql = "delete from [WineBar] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });

            return flag;
        }
        #endregion

        #region 修改
        public bool Update(string name, string spic, string pic, string content, int id)
        {
            string sql = "update [WineBar] set [Name] = @Name,[Spic]=@Spic,[Pic]=@Pic,[Content]=@Content where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Name", SqlDbType.VarChar);
            p1.Value = name;
            SqlParameter p2 = new SqlParameter("@Spic", SqlDbType.VarChar);
            p2.Value = spic;
            SqlParameter p3 = new SqlParameter("@Pic", SqlDbType.VarChar);
            p3.Value = pic;
            SqlParameter p4 = new SqlParameter("@Content", SqlDbType.VarChar);
            p4.Value = content;
            SqlParameter p5 = new SqlParameter("@Id", SqlDbType.Int);
            p5.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5 });
            return flag;
        }
        #endregion
    }
}
