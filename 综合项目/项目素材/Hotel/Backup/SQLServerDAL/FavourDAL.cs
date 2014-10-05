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
    public class FavourDAL:IFavour
    {
        #region 查询全部
        public List<Favour> GetFavourAll()
        {
            string sql = "select * from [Favour]  order by Sj desc ";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<Favour> list = new List<Favour>();

            while (read.Read())
            {
                Favour favour = new Favour();

                favour.Id = (int)read["Id"];
                if (read["Title"] != DBNull.Value)
                {
                    favour.Title = (string)read["Title"];
                }
                if (read["Pic"] != DBNull.Value)
                {
                    favour.Pic = (string)read["Pic"];
                }
                if (read["Content"] != DBNull.Value)
                {
                    favour.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    favour.Sj = (DateTime)read["Sj"];
                }
                list.Add(favour);
            }
            read.Close();
            return list;
        }
        #endregion

        #region Home.aspx
        public Favour GetFavourByTop1()
        {
            string sql = "select * from [Favour] order by Sj desc";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            Favour favour = new Favour();

            if (read.Read())
            {               

                favour.Id = (int)read["Id"];
                if (read["Title"] != DBNull.Value)
                {
                    favour.Title = (string)read["Title"];
                }
                if (read["Pic"] != DBNull.Value)
                {
                    favour.Pic = (string)read["Pic"];
                }
                if (read["Content"] != DBNull.Value)
                {
                    favour.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    favour.Sj = (DateTime)read["Sj"];
                }               
            }
            read.Close();
            return favour;
        }
        #endregion

        #region 根据主键查询
        public Favour GetFavourById(int id)
        {
            string sql = "select * from [Favour] where Id=@Id";
            SqlParameter p1=new SqlParameter("@Id",SqlDbType.Int);
            p1.Value = id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1 });

            Favour favour = new Favour();

            if (read.Read())
            {

                favour.Id = (int)read["Id"];
                if (read["Title"] != DBNull.Value)
                {
                    favour.Title = (string)read["Title"];
                }
                if (read["Pic"] != DBNull.Value)
                {
                    favour.Pic = (string)read["Pic"];
                }
                if (read["Content"] != DBNull.Value)
                {
                    favour.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    favour.Sj = (DateTime)read["Sj"];
                }
            }
            read.Close();
            return favour;
        }
        #endregion

        #region 插入
        public bool InsertFavour(Favour favour)
        {
            string sql = "insert into [Favour] values(@Title,@Pic,@Content,@Sj)";

            SqlParameter p1 = new SqlParameter("@Title", SqlDbType.VarChar);
            p1.Value = favour.Title;
            SqlParameter p2 = new SqlParameter("@Pic", SqlDbType.VarChar);
            p2.Value = favour.Pic;
            SqlParameter p3 = new SqlParameter("@Content", SqlDbType.VarChar);
            p3.Value = favour.Content;
            SqlParameter p4 = new SqlParameter("@Sj", SqlDbType.DateTime);
            p4.Value = favour.Sj;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4 });

            return flag;

        }
        #endregion

        #region 删除
        public bool DeleteById(int id)
        {
            string sql = "delete from [Favour] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });

            return flag;
        }
        #endregion

        #region 修改
        public bool UpdateFavour(string title, string pic, string content, int id)
        {
            string sql = "update [Favour] set [Title] = @Title,[Pic]=@Pic,[Content]=@Content where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Title", SqlDbType.VarChar);
            p1.Value = title;
            SqlParameter p2 = new SqlParameter("@Pic", SqlDbType.VarChar);
            p2.Value = pic;
            SqlParameter p3 = new SqlParameter("@Content", SqlDbType.VarChar);
            p3.Value = content;
            SqlParameter p4 = new SqlParameter("@Id", SqlDbType.Int);
            p4.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4 });
            return flag;
        }
        #endregion
    }
}
