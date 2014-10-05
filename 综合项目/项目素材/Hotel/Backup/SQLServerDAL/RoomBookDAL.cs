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
    public class RoomBookDAL:IRoomBook
    {
        #region 插入
        public bool insertRoomBook(RoomBook book)
        {
            string sql = "insert into [RoomBook] values(@RoomType,@RoomCount,@PeopleCount,@Name,@Sex,@Zip,@Address,@Tel,@Fax,@Email,@FromDate,@ToDate,@AccountType,@Company,@Advice,@CreateTime)";

            SqlParameter p1 = new SqlParameter("@RoomType", SqlDbType.VarChar);
            p1.Value = book.RoomType;
            SqlParameter p2 = new SqlParameter("@RoomCount", SqlDbType.Int);
            p2.Value = book.RoomCount;
            SqlParameter p3 = new SqlParameter("@PeopleCount", SqlDbType.Int);
            p3.Value = book.PeopleCount;
            SqlParameter p4 = new SqlParameter("@Name", SqlDbType.VarChar);
            p4.Value = book.Name;
            SqlParameter p5 = new SqlParameter("@Sex", SqlDbType.VarChar);
            p5.Value = book.Sex;
            SqlParameter p6 = new SqlParameter("@Zip", SqlDbType.VarChar);
            p6.Value = book.Zip;
            SqlParameter p7 = new SqlParameter("@Address", SqlDbType.VarChar);
            p7.Value = book.Address;
            SqlParameter p8 = new SqlParameter("@Tel", SqlDbType.VarChar);
            p8.Value = book.Tel;
            SqlParameter p9 = new SqlParameter("@Fax", SqlDbType.VarChar);
            p9.Value = book.Fax;
            SqlParameter p10 = new SqlParameter("@Email", SqlDbType.VarChar);
            p10.Value = book.Email;
            SqlParameter p11 = new SqlParameter("@FromDate", SqlDbType.DateTime);
            p11.Value = book.FromDate;
            SqlParameter p12 = new SqlParameter("@ToDate", SqlDbType.DateTime);
            p12.Value = book.ToDate;
            SqlParameter p13 = new SqlParameter("@AccountType", SqlDbType.VarChar);
            p13.Value = book.AccountType;
            SqlParameter p14 = new SqlParameter("@Company", SqlDbType.VarChar);
            p14.Value = book.Company;
            SqlParameter p15 = new SqlParameter("@Advice", SqlDbType.VarChar);
            p15.Value = book.Advice;
            SqlParameter p16 = new SqlParameter("@CreateTime", SqlDbType.DateTime);
            p16.Value = book.CreateTime;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16 });

            return flag;
        }
        #endregion

        #region 查询所有
        public List<RoomBook> GetRoomBookAll()
        {
            string sql = "select * from [RoomBook]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomBook> list = new List<RoomBook>();

            while (read.Read())
            {
                RoomBook book = new RoomBook();

                book.Id = (int)read["Id"];
                if (read["Name"] != DBNull.Value)
                {
                    book.Name = read["Name"].ToString();
                }
                if (read["RoomType"] != DBNull.Value)
                {
                    book.RoomType = read["RoomType"].ToString();
                }
                if (read["RoomCount"] != DBNull.Value)
                {
                    book.RoomCount = (int)read["RoomCount"];
                }
                if (read["PeopleCount"] != DBNull.Value)
                {
                    book.PeopleCount = (int)read["PeopleCount"];
                }
                if (read["FromDate"] != DBNull.Value)
                {
                    book.FromDate = (DateTime)read["FromDate"];
                }
                if (read["ToDate"] != DBNull.Value)
                {
                    book.ToDate = (DateTime)read["ToDate"];
                }
                if (read["CreateTime"] != DBNull.Value)
                {
                    book.CreateTime = (DateTime)read["CreateTime"];
                }
                list.Add(book);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 根据类型查询所有
        public List<RoomBook> GetRoomBookByType(int typeId)
        {
            string sql = "select * from [RoomBook] where RoomType=" + typeId + " order by CreateTime desc";
            if (typeId == 0)
            {
                sql = "select * from [RoomBook] order by CreateTime desc";
            }

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<RoomBook> list = new List<RoomBook>();

            while (read.Read())
            {
                RoomBook book = new RoomBook();

                book.Id = (int)read["Id"];
                if (read["Name"] != DBNull.Value)
                {
                    book.Name = read["Name"].ToString();
                }
                if (read["RoomType"] != DBNull.Value)
                {
                    book.RoomType = read["RoomType"].ToString();
                }
                if (read["RoomCount"] != DBNull.Value)
                {
                    book.RoomCount = (int)read["RoomCount"];
                }
                if (read["PeopleCount"] != DBNull.Value)
                {
                    book.PeopleCount = (int)read["PeopleCount"];
                }
                if (read["FromDate"] != DBNull.Value)
                {
                    book.FromDate = (DateTime)read["FromDate"];
                }
                if (read["ToDate"] != DBNull.Value)
                {
                    book.ToDate = (DateTime)read["ToDate"];
                }
                if (read["CreateTime"] != DBNull.Value)
                {
                    book.CreateTime = (DateTime)read["CreateTime"];
                }

                list.Add(book);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 删除
        public bool DeleteById(int id)
        {
            string sql = "delete from [RoomBook] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });

            return flag;
        }
        #endregion

        #region 根据主键查询
        public RoomBook GetRoomBookById(int id)
        {
            string sql = "select * from [RoomBook] where id=" + id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            RoomBook book = new RoomBook();

            if (read.Read())
            {
                
                book.Id = (int)read["Id"];
                if (read["Name"] != DBNull.Value)
                {
                    book.Name = read["Name"].ToString();
                }
                if (read["RoomType"] != DBNull.Value)
                {
                    book.RoomType = read["RoomType"].ToString();
                }
                if (read["RoomCount"] != DBNull.Value)
                {
                    book.RoomCount = (int)read["RoomCount"];
                }
                if (read["PeopleCount"] != DBNull.Value)
                {
                    book.PeopleCount = (int)read["PeopleCount"];
                }
                if (read["FromDate"] != DBNull.Value)
                {
                    book.FromDate = (DateTime)read["FromDate"];
                }
                if (read["ToDate"] != DBNull.Value)
                {
                    book.ToDate = (DateTime)read["ToDate"];
                }
                if (read["CreateTime"] != DBNull.Value)
                {
                    book.CreateTime = (DateTime)read["CreateTime"];
                }
                if (read["Sex"] != DBNull.Value)
                {
                    book.Sex = read["Sex"].ToString();
                }
                if (read["Zip"] != DBNull.Value)
                {
                    book.Zip = read["Zip"].ToString();
                }
                if (read["Address"] != DBNull.Value)
                {
                    book.Address = read["Address"].ToString();
                }
                if (read["Tel"] != DBNull.Value)
                {
                    book.Tel = read["Tel"].ToString();
                }
                if (read["Fax"] != DBNull.Value)
                {
                    book.Fax = read["Fax"].ToString();
                }
                if (read["Email"] != DBNull.Value)
                {
                    book.Email = read["Email"].ToString();
                }
                if (read["AccountType"] != DBNull.Value)
                {
                    book.AccountType = read["AccountType"].ToString();
                }
                if (read["Company"] != DBNull.Value)
                {
                    book.Company = read["Company"].ToString();
                }
                if (read["Advice"] != DBNull.Value)
                {
                    book.Advice = read["Advice"].ToString();
                }
               
            }
            read.Close();
            return book;
 
        }
        #endregion
    }
}
