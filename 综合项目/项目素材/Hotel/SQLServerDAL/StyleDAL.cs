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
    public class StyleDAL:IStyle
    {
        #region IStyle 根据主键查询
        public Style GetStyleById(int id)
        {
            string sql = "select * from [style] where id=@id ";

            SqlParameter p1 = new SqlParameter("@id", SqlDbType.Int);
            p1.Value = id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1 });

            Style style = null;

            if (read.Read())
            {
                style = new Style();
                style.Id = (int)read["id"];
                if (read["pic"] != DBNull.Value)
                {
                    style.Pic = read["pic"].ToString();
                }
                if (read["title"] != DBNull.Value)
                {
                    style.Title = read["title"].ToString();
                }
                if (read["path"] != DBNull.Value)
                {
                    style.Path = read["path"].ToString();
                }
                if (read["show"] != DBNull.Value)
                {
                    style.Show = read["show"].ToString();
                }
                if (read["mr"] != DBNull.Value)
                {
                    style.Mr = read["mr"].ToString();
                }
            }
            read.Close();
            return style;
        }
        #endregion

        #region 查询所有
        public List<Style> GetStyleAll()
        {
            string sql = "select * from [style] ";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<Style> list = new List<Style>();

            while (read.Read())
            {
                Style style = new Style();
                style.Id = (int)read["id"];
                if (read["pic"] != DBNull.Value)
                {
                    style.Pic = read["pic"].ToString();
                }
                if (read["title"] != DBNull.Value)
                {
                    style.Title = read["title"].ToString();
                }
                if (read["path"] != DBNull.Value)
                {
                    style.Path = read["path"].ToString();
                }
                if (read["show"] != DBNull.Value)
                {
                    style.Show = read["show"].ToString();
                }
                if (read["mr"] != DBNull.Value)
                {
                    style.Mr = read["mr"].ToString();
                }
                list.Add(style);
            }
            read.Close();

            return list;
        }
        #endregion
    }
}
