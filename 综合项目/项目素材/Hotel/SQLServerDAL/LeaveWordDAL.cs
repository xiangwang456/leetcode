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
    public class LeaveWordDAL:ILeaveWord
    {
        #region 插入
        public bool Insert(LeaveWord leaveWord)
        {
            string sql = "insert into [LeaveWord] values(@Type,@Subject,@Name,@Email,@Address,@Tel,@Content,@CreateTime,@Ip,@IsCustomer)";

            SqlParameter p1 = new SqlParameter("@Type", SqlDbType.VarChar);
            p1.Value = leaveWord.Type;
            SqlParameter p2 = new SqlParameter("@Subject", SqlDbType.VarChar);
            p2.Value = leaveWord.Subject;
            SqlParameter p3 = new SqlParameter("@Name", SqlDbType.VarChar);
            p3.Value = leaveWord.Name;
            SqlParameter p4 = new SqlParameter("@Email", SqlDbType.VarChar);
            p4.Value = leaveWord.Email;
            SqlParameter p5 = new SqlParameter("@Address", SqlDbType.VarChar);
            p5.Value = leaveWord.Address;
            SqlParameter p6 = new SqlParameter("@Tel", SqlDbType.VarChar);
            p6.Value = leaveWord.Tel;
            SqlParameter p7 = new SqlParameter("@Content", SqlDbType.VarChar);
            p7.Value = leaveWord.Content;
            SqlParameter p8 = new SqlParameter("@CreateTime", SqlDbType.DateTime);
            p8.Value = leaveWord.CreateTime;
            SqlParameter p9 = new SqlParameter("@Ip", SqlDbType.VarChar);
            p9.Value = leaveWord.Ip;
            SqlParameter p10 = new SqlParameter("@IsCustomer", SqlDbType.VarChar);
            p10.Value = leaveWord.IsCustomer;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6, p7, p8, p9, p10 });

            return flag;
        }
        #endregion

        #region 查询所有
        public List<LeaveWord> GetLeaveWordAll()
        {
            string sql = "select * from [LeaveWord]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<LeaveWord> list = new List<LeaveWord>();

            while (read.Read())
            {
                LeaveWord leaveWord = new LeaveWord();

                leaveWord.Id = (int)read["Id"];
                if (read["Type"] != DBNull.Value)
                {
                    leaveWord.Type = read["Type"].ToString();
                }
                if (read["Subject"] != DBNull.Value)
                {
                    leaveWord.Subject = read["Subject"].ToString();
                }
                if (read["Name"] != DBNull.Value)
                {
                    leaveWord.Name = read["Name"].ToString();
                }
                if (read["Email"] != DBNull.Value)
                {
                    leaveWord.Email = read["Email"].ToString();
                }
                if (read["Address"] != DBNull.Value)
                {
                    leaveWord.Address = read["Address"].ToString();
                }
                if (read["Tel"] != DBNull.Value)
                {
                    leaveWord.Tel = read["Tel"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    leaveWord.Content = read["Content"].ToString();
                }
                if (read["CreateTime"] != DBNull.Value)
                {
                    leaveWord.CreateTime = (DateTime)read["CreateTime"];
                }
                if (read["Ip"] != DBNull.Value)
                {
                    leaveWord.Ip = read["Ip"].ToString();
                }
                if (read["IsCustomer"] != DBNull.Value)
                {
                    leaveWord.IsCustomer = read["IsCustomer"].ToString();
                }
                list.Add(leaveWord);
            }
            read.Close();
            return list;
        }
        #endregion

        #region ILeaveWord 成员
        public List<LeaveWord> GetLeaveWordByType(string type)
        {

            string sql = "select * from [LeaveWord] where Type='" + type + "' order by CreateTime desc";
            if (type == null || type == "")
            {
                sql = "select * from [LeaveWord] order by CreateTime desc";
            }
          
            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<LeaveWord> list = new List<LeaveWord>();

            while (read.Read())
            {
                LeaveWord leaveWord = new LeaveWord();

                leaveWord.Id = (int)read["Id"];
                if (read["Type"] != DBNull.Value)
                {
                    leaveWord.Type = read["Type"].ToString();
                }
                if (read["Subject"] != DBNull.Value)
                {
                    leaveWord.Subject = read["Subject"].ToString();
                }
                if (read["Name"] != DBNull.Value)
                {
                    leaveWord.Name = read["Name"].ToString();
                }
                if (read["Email"] != DBNull.Value)
                {
                    leaveWord.Email = read["Email"].ToString();
                }
                if (read["Address"] != DBNull.Value)
                {
                    leaveWord.Address = read["Address"].ToString();
                }
                if (read["Tel"] != DBNull.Value)
                {
                    leaveWord.Tel = read["Tel"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    leaveWord.Content = read["Content"].ToString();
                }
                if (read["CreateTime"] != DBNull.Value)
                {
                    leaveWord.CreateTime = (DateTime)read["CreateTime"];
                }
                if (read["Ip"] != DBNull.Value)
                {
                    leaveWord.Ip = read["Ip"].ToString();
                }
                if (read["IsCustomer"] != DBNull.Value)
                {
                    leaveWord.IsCustomer = read["IsCustomer"].ToString();
                }
                list.Add(leaveWord);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 根据主键查询
        public LeaveWord GetLeaveWordById(int id)
        {
            string sql = "select * from [LeaveWord] where Id=" + id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            LeaveWord leaveWord = new LeaveWord();

            if (read.Read())
            {

                leaveWord.Id = (int)read["Id"];
                if (read["Type"] != DBNull.Value)
                {
                    leaveWord.Type = read["Type"].ToString();
                }
                if (read["Subject"] != DBNull.Value)
                {
                    leaveWord.Subject = read["Subject"].ToString();
                }
                if (read["Name"] != DBNull.Value)
                {
                    leaveWord.Name = read["Name"].ToString();
                }
                if (read["Email"] != DBNull.Value)
                {
                    leaveWord.Email = read["Email"].ToString();
                }
                if (read["Address"] != DBNull.Value)
                {
                    leaveWord.Address = read["Address"].ToString();
                }
                if (read["Tel"] != DBNull.Value)
                {
                    leaveWord.Tel = read["Tel"].ToString();
                }
                if (read["Content"] != DBNull.Value)
                {
                    leaveWord.Content = read["Content"].ToString();
                }
                if (read["CreateTime"] != DBNull.Value)
                {
                    leaveWord.CreateTime = (DateTime)read["CreateTime"];
                }
                if (read["Ip"] != DBNull.Value)
                {
                    leaveWord.Ip = read["Ip"].ToString();
                }
                if (read["IsCustomer"] != DBNull.Value)
                {
                    leaveWord.IsCustomer = read["IsCustomer"].ToString();
                }
            }
            read.Close();
            return leaveWord;
        }
        #endregion 


        #region 删除
        public bool DeleteById(int id)
        {
            string sql = "delete from [LeaveWord] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });

            return flag;
        }
        #endregion
    }
}
