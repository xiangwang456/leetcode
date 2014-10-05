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
    public class NewsDAL:INews
    {
        #region 最新动态前五行
        public List<News> GetNewsByZXDT()
        {
            string sql = "select top 5 * from [News] where Style='酒店动态' order by CreateDate desc";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<News> list = new List<News>();

            while (read.Read())
            {
                News news = new News();

                news.Id = (int)read["Id"];
                if (read["CreateDate"] != DBNull.Value)
                {
                    news.CreateDate = (DateTime)read["CreateDate"];
                }
                if (read["Title"] != DBNull.Value)
                {
                    news.Title = (string)read["Title"];
                }
                list.Add(news);
            }
            read.Close();

            return list;
        }
        #endregion

        #region 最新动态全部
        public List<News> GetNewsByZXDTAll()
        {

            string sql = "select * from [News] where Style='酒店动态' order by CreateDate desc";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<News> list = new List<News>();

            while (read.Read())
            {
                News news = new News();

                news.Id = (int)read["Id"];
                if (read["CreateDate"] != DBNull.Value)
                {
                    news.CreateDate = (DateTime)read["CreateDate"];
                }
                if (read["Title"] != DBNull.Value)
                {
                    news.Title = (string)read["Title"];
                }
                if (read["Click"] != DBNull.Value)
                {
                    news.Click = (int)read["Click"];
                }
                list.Add(news);
            }
            read.Close();

            return list;
        }
        #endregion

        #region 根据主键查询
        public News GetNewsById(int id)
        {
            string sql = "select * from [News] where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1 });

            News news = null;

            if (read.Read())
            {
                news = new News();

                news.Id = (int)read["Id"];
                if (read["Style"] != DBNull.Value)
                {
                    news.Style = (string)read["Style"];
                }
                if (read["CreateDate"] != DBNull.Value)
                {
                    news.CreateDate = (DateTime)read["CreateDate"];
                }
                if (read["Pic"] != DBNull.Value)
                {
                    news.Pic = (string)read["Pic"];
                }
                if (read["Content"] != DBNull.Value)
                {
                    news.Content = (string)read["Content"];
                }
                if (read["Title"] != DBNull.Value)
                {
                    news.Title = (string)read["Title"];
                }
                if (read["Click"] != DBNull.Value)
                {
                    news.Click = (int)read["Click"];
                }
            }
            read.Close();

            return news;
        }
        #endregion

        #region 增加点击率
        public bool UpdateClick(int id)
        {
            string sql = "update [News] set Click = Click +1 where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });
            return flag;
        }
        #endregion

        #region 员工互动前五行
        public List<News> GetNewsByYGHD()
        {
            string sql = "select top 5 * from [News] where Style='员工互动' order by CreateDate desc";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<News> list = new List<News>();

            while (read.Read())
            {
                News news = new News();

                news.Id = (int)read["Id"];
                if (read["CreateDate"] != DBNull.Value)
                {
                    news.CreateDate = (DateTime)read["CreateDate"];
                }
                if (read["Title"] != DBNull.Value)
                {
                    news.Title = (string)read["Title"];
                }
                list.Add(news);
            }
            read.Close();

            return list;
        }
        #endregion

        #region 员工互动所有
        public List<News> GetNewsByYGHDAll()
        {
            string sql = "select * from [News] where Style='员工互动' order by CreateDate desc";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<News> list = new List<News>();

            while (read.Read())
            {
                News news = new News();

                news.Id = (int)read["Id"];
                if (read["CreateDate"] != DBNull.Value)
                {
                    news.CreateDate = (DateTime)read["CreateDate"];
                }
                if (read["Title"] != DBNull.Value)
                {
                    news.Title = (string)read["Title"];
                }
                if (read["Click"] != DBNull.Value)
                {
                    news.Click = (int)read["Click"];
                }
                list.Add(news);
            }
            read.Close();

            return list;
        }

        #endregion

        #region 员工风采前5行
        public List<News> GetNewsByYGFC()
        {
            string sql = "select top 5 * from [News] where Style='员工风采' order by CreateDate desc";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<News> list = new List<News>();

            while (read.Read())
            {
                News news = new News();

                news.Id = (int)read["Id"];
                if (read["CreateDate"] != DBNull.Value)
                {
                    news.CreateDate = (DateTime)read["CreateDate"];
                }
                if (read["Title"] != DBNull.Value)
                {
                    news.Title = (string)read["Title"];
                }
                if (read["Click"] != DBNull.Value)
                {
                    news.Click = (int)read["Click"];
                }
                if (read["Pic"] != DBNull.Value)
                {
                    news.Pic = (string)read["Pic"];
                }
                list.Add(news);
            }
            read.Close();

            return list;
        }
        #endregion

        #region 员工风采所有
        public List<News> GetNewsByYGFCAll()
        {
            string sql = "select * from [News] where Style='员工风采' order by CreateDate desc";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<News> list = new List<News>();

            while (read.Read())
            {
                News news = new News();

                news.Id = (int)read["Id"];
                if (read["CreateDate"] != DBNull.Value)
                {
                    news.CreateDate = (DateTime)read["CreateDate"];
                }
                if (read["Title"] != DBNull.Value)
                {
                    news.Title = (string)read["Title"];
                }
                if (read["Click"] != DBNull.Value)
                {
                    news.Click = (int)read["Click"];
                }
                list.Add(news);
            }
            read.Close();

            return list;
        }
        #endregion



        #region 员工精英第一条
        public News GetNewsYGJY()
        {
            string sql = "select top 1 * from [News] where Style='员工精英' order by CreateDate desc";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            News news = null;

            if (read.Read())
            {
                news = new News();

                news.Id = (int)read["Id"];
                if (read["CreateDate"] != DBNull.Value)
                {
                    news.CreateDate = (DateTime)read["CreateDate"];
                }
                if (read["Title"] != DBNull.Value)
                {
                    news.Title = (string)read["Title"];
                }
                if (read["Click"] != DBNull.Value)
                {
                    news.Click = (int)read["Click"];
                }
                if (read["Pic"] != DBNull.Value)
                {
                    news.Pic = (string)read["Pic"];
                }
            }
            read.Close();

            return news;
        }
        #endregion

        #region 插入
        public bool InsertNews(News news)
        {
            string sql = "insert into [News] values(@Style,@Title,@Content,@Pic,@CreateDate,@Click)";

            SqlParameter p1 = new SqlParameter("@Style", SqlDbType.VarChar);
            p1.Value = news.Style;
            SqlParameter p2 = new SqlParameter("@Title", SqlDbType.VarChar);
            p2.Value = news.Title;
            SqlParameter p3 = new SqlParameter("@Content", SqlDbType.VarChar);
            p3.Value = news.Content;
            SqlParameter p4 = new SqlParameter("@Pic", SqlDbType.VarChar);
            p4.Value = news.Pic;
            SqlParameter p5 = new SqlParameter("@CreateDate", SqlDbType.DateTime);
            p5.Value = news.CreateDate;
            SqlParameter p6 = new SqlParameter("@Click", SqlDbType.Int);
            p6.Value = news.Click;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6 });

            return flag;

            
        }
        #endregion

        #region 查询某一类型的所有新闻     
        public List<News> GetNewsByStyle(string style)
        {
           
            string sql = "select * from [News] where Style='" + style + "' order by CreateDate desc";
            if (style == null || style == "")
            {
                sql = "select * from [News] order by CreateDate desc";
            }

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<News> list = new List<News>();

            while (read.Read())
            {
                News news = new News();

                news.Id = (int)read["Id"];
                if (read["CreateDate"] != DBNull.Value)
                {
                    news.CreateDate = (DateTime)read["CreateDate"];
                }
                if (read["Title"] != DBNull.Value)
                {
                    news.Title = (string)read["Title"];
                }
                if (read["Style"] != DBNull.Value)
                {
                    news.Style = (string)read["Style"];
                }
                if (read["Click"] != DBNull.Value)
                {
                    news.Click = (int)read["Click"];
                }
                if (read["Pic"] != DBNull.Value)
                {
                    news.Pic = (string)read["Pic"];
                }
                list.Add(news);
            }
            read.Close();

            return list;
        }
        #endregion

        #region 删除
        public bool DeleteNewsById(int id)
        {
            string sql = "delete from [News] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });

            return flag;
        }
        #endregion

        #region 修改
        public bool UpdateNews(string style, string title, string content, int id)
        {
            string sql = "update [News] set [Style] = @Style,[Title]=@Title,[Content]=@Content where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Style", SqlDbType.VarChar);
            p1.Value = style;
            SqlParameter p2 = new SqlParameter("@Title", SqlDbType.VarChar);
            p2.Value = title;
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
