using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Hotel.DBUtility
{
    public abstract class SQLHelper
    {
        public static readonly string conString = ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;

        //增删改
        public static bool ExeNonQuery(string sql, CommandType type, params SqlParameter[] lists)
        {
            bool bFlag = false;
            using (SqlConnection con = new SqlConnection(conString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = sql;
                cmd.CommandType = type;
                if (lists.Length > 0)
                {
                    foreach (SqlParameter p in lists)
                    {
                        cmd.Parameters.Add(p);
                    }
                }
                try
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        bFlag = true;
                    }

                }
                catch { ;}
            }
            return bFlag;
        }

        //查．读
        public static SqlDataReader ExeDataReader(string sql, CommandType type, params SqlParameter[] lists)
        {
            SqlConnection con = new SqlConnection(conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = sql;
            cmd.CommandType = type;

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            if (lists.Length > 0)
            {
                foreach (SqlParameter p in lists)
                {
                    cmd.Parameters.Add(p);
                }
            }

            SqlDataReader reader = cmd.ExecuteReader();

            return reader;
        }

        //返回单个值
        public static object GetScalar(string sql, CommandType type, params SqlParameter[] lists)
        {
            object returnValue = null;
            using (SqlConnection con = new SqlConnection(conString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = sql;
                cmd.CommandType = type;
                if (lists.Length > 0)
                {
                    foreach (SqlParameter p in lists)
                    {
                        cmd.Parameters.Add(p);
                    }
                }
                try
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    returnValue = cmd.ExecuteScalar();

                }
                catch { ; }
            }
            return returnValue;
        }

        //事务
        public static bool ExeNonQueryTran(List<SqlCommand> list)
        {
            bool flag = true;
            SqlTransaction tran = null;
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                        tran = con.BeginTransaction();
                        foreach (SqlCommand com in list)
                        {
                            com.Connection = con;
                            com.Transaction = tran;
                            com.ExecuteNonQuery();
                        }
                        tran.Commit();
                    }
                }
                catch (Exception ex)
                {
                    Console.Write(ex.Message);
                    tran.Rollback();
                    flag = false;
                }
            }
            return flag;
        }

        //调用示例
        //public bool DeleteUserRoleByPk(int id)
        //{
        //    List<SqlCommand> list = new List<SqlCommand>();
        //    SqlCommand com = new SqlCommand();
        //    com.CommandText = "Delete RoleRight WHERE RoleId=@p1";
        //    SqlParameter p1 = new SqlParameter("@p1", id);
        //    com.Parameters.Add(p1);
        //    com.CommandType = CommandType.Text;
        //    list.Add(com);

        //    com = new SqlCommand();
        //    com.CommandText = "Delete UserInfo WHERE UserRole=@p1";
        //    p1 = new SqlParameter("@p1", id);
        //    com.Parameters.Add(p1);
        //    com.CommandType = CommandType.Text;
        //    list.Add(com);

        //    string strSql = "DeleteUserRoleByPk";
        //    p1 = new SqlParameter("@p1", id);
        //    com = new SqlCommand();
        //    com.CommandText = strSql;
        //    com.CommandType = CommandType.StoredProcedure;
        //    com.Parameters.Add(p1);
        //    list.Add(com);
        //    bool bflag = SqlHelper.ExeNonQueryTran(list);
        //    return bflag;
        //}

    }
}
