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
    public class HealthFunDAL : IHealthFun
    {

        #region 查询全部
        public List<HealthFun> GetHealthFunAll()
        {
            string sql = "select * from [HealthFun]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<HealthFun> list = new List<HealthFun>();

            while (read.Read())
            {
                HealthFun healthfun = new HealthFun();

                healthfun.Id = (int)read["Id"];
                if (read["Style"] != DBNull.Value)
                {
                    healthfun.Style = read["Style"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    healthfun.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    healthfun.Sj = (DateTime)read["Sj"];
                }


                list.Add(healthfun);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 根据主键查询
        public HealthFun GetHealthFunById(int id)
        {
            string sql = "select * from [HealthFun] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", id);

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1 });

            HealthFun fun = new HealthFun();

            if (read.Read())
            {
                fun.Id = (int)read["Id"];
                if (read["Style"] != DBNull.Value)
                {
                    fun.Style = read["Style"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    fun.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    fun.Sj = (DateTime)read["Sj"];
                }
            }
            read.Close();
            return fun;
        }
        #endregion

        #region 删除
        public bool DeleteById(int id)
        {
            string sql = "delete from [HealthFun] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });

            return flag;
        }
        #endregion

        #region 修改
        public bool Update(string style, string content, int id)
        {
            string sql = "update [HealthFun] set [Style] = @Style,[Content]=@Content where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Style", SqlDbType.VarChar);
            p1.Value = style;
            SqlParameter p2 = new SqlParameter("@Content", SqlDbType.VarChar);
            p2.Value = content;
            SqlParameter p3 = new SqlParameter("@Id", SqlDbType.Int);
            p3.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3 });
            return flag;
        }
        #endregion
    }
}
