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
    public class IntentDAL:IIntent
    {

        #region 查询全部
        public List<Intent> GetIntentAll()
        {

            string sql = "select * from [Intent]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<Intent> list = new List<Intent>();

            while (read.Read())
            {
                Intent intent = new Intent();

                intent.Id = (int)read["Id"];
                if (read["Type"] != DBNull.Value)
                {
                    intent.Type = read["Type"].ToString();
                }
                if (read["Title"] != DBNull.Value)
                {
                    intent.Title = read["Title"].ToString();
                }
                if (read["Pic"] != DBNull.Value)
                {
                    intent.Pic = read["Pic"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    intent.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    intent.Sj = (DateTime)read["Sj"];
                }


                list.Add(intent);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 根据主键查询
        public Intent GetIntentById(int id)
        {

            string sql = "select * from [Intent] where Id=@Id ";
            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1 });
            Intent intent = null;

            if (read.Read())
            {
                intent = new Intent();
                intent.Id = (int)read["Id"];
                if (read["Type"] != DBNull.Value)
                {
                    intent.Type = read["Type"].ToString();
                }
                if (read["Title"] != DBNull.Value)
                {
                    intent.Title = read["Title"].ToString();
                }
                if (read["Pic"] != DBNull.Value)
                {
                    intent.Pic = read["Pic"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    intent.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    intent.Sj = (DateTime)read["Sj"];
                }              
            }
            read.Close();
            return intent;
        }
        #endregion

        #region 查询某一类
        public List<Intent> GetIntentByStyle(string style)
        {


            string sql = "select * from [Intent] where Type='" + style + "' order by Sj desc";
            if (style == null || style == "")
            {
                sql = "select * from [Intent] order by Sj desc";
            }


            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<Intent> list = new List<Intent>();

            while (read.Read())
            {
                Intent intent = new Intent();

                intent.Id = (int)read["Id"];
                if (read["Type"] != DBNull.Value)
                {
                    intent.Type = read["Type"].ToString();
                }
                if (read["Title"] != DBNull.Value)
                {
                    intent.Title = read["Title"].ToString();
                }
                if (read["Pic"] != DBNull.Value)
                {
                    intent.Pic = read["Pic"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    intent.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    intent.Sj = (DateTime)read["Sj"];
                }


                list.Add(intent);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 删除
        public bool DeleteById(int id)
        {
            string sql = "delete from [Intent] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });

            return flag;
        }
        #endregion

        #region 插入
        public bool InsertIntent(Intent intent)
        {
            string sql = "insert into [Intent] values(@Type,@Title,@Pic,@Content,@Sj)";

            SqlParameter p1 = new SqlParameter("@Type", SqlDbType.VarChar);
            p1.Value = intent.Type;
            SqlParameter p2 = new SqlParameter("@Title", SqlDbType.VarChar);
            p2.Value = intent.Title;
            SqlParameter p3 = new SqlParameter("@Pic", SqlDbType.VarChar);
            p3.Value = intent.Pic;
            SqlParameter p4 = new SqlParameter("@Content", SqlDbType.VarChar);
            p4.Value = intent.Content;
            SqlParameter p5 = new SqlParameter("@Sj", SqlDbType.DateTime);
            p5.Value = intent.Sj;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5 });

            return flag;
        }
        #endregion

        #region 修改
        public bool UpdateIntent(string type, string title, string pic, string content, int id)
        {

            string sql = "update [Intent] set [Type] = @Type,[Title]=@Title,[Pic]=@Pic,[Content]=@Content where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Type", SqlDbType.VarChar);
            p1.Value = type;
            SqlParameter p2 = new SqlParameter("@Title", SqlDbType.VarChar);
            p2.Value = title;
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
