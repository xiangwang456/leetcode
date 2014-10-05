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
    public class CustomerDAL : ICustomer
    {
        #region 登陆
        public Customer LoginByCustomer(Customer customer)
        {
            string sql = "select * from [Customer] where LoginId=@LoginId and Pwd=@Pwd ";

            SqlParameter p1 = new SqlParameter("@LoginId", SqlDbType.VarChar);
            p1.Value = customer.LoginId;

            SqlParameter p2 = new SqlParameter("@Pwd", SqlDbType.VarChar);
            p2.Value = customer.Pwd;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1, p2 });

            Customer user = null;

            if (read.Read())
            {
                user = new Customer();
                user.Id = (int)read["Id"];
                user.LoginId = (string)read["LoginId"];
                user.Pwd = (string)read["Pwd"];
                if (read["CardNo"] != DBNull.Value)
                {
                    user.CardNo = (string)read["CardNo"];
                }
                user.Card = new CardDAL().GetCardById((int)read["CardId"]);

                if (read["Email"] != DBNull.Value)
                {
                    user.Email = (string)read["Email"];
                }
                if (read["Sex"] != DBNull.Value)
                {
                    user.Sex = (string)read["Sex"];
                }
                if (read["CreateTime"] != DBNull.Value)
                {
                    user.CreateTime = (DateTime)read["CreateTime"];
                }
                if (read["RealName"] != DBNull.Value)
                {
                    user.RealName = (string)read["RealName"];
                }
                if (read["Tel"] != DBNull.Value)
                {
                    user.Tel = (string)read["Tel"];
                }
                if (read["Address"] != DBNull.Value)
                {
                    user.Address = (string)read["Address"];
                }
                if (read["Zip"] != DBNull.Value)
                {
                    user.Zip = (string)read["Zip"];
                }
                if (read["IdentityCardNo"] != DBNull.Value)
                {
                    user.IdentityCardNo = (string)read["IdentityCardNo"];
                }
                if (read["Work"] != DBNull.Value)
                {
                    user.Work = (string)read["Work"];
                }
                if (read["LineCount"] != DBNull.Value)
                {
                    user.LineCount = (int)read["LineCount"];
                }
                if (read["LastOnLineTime"] != DBNull.Value)
                {
                    user.LastOnLineTime = (DateTime)read["LastOnLineTime"];
                }
            }
            read.Close();
            return user;
        }
        #endregion

        #region 根据主键查询
        public Customer GetCustomerById(int id)
        {

            string sql = "select * from [Customer] where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1 });

            Customer user = null;

            if (read.Read())
            {
                user = new Customer();
                user.Id = (int)read["Id"];
                user.LoginId = (string)read["LoginId"];
                user.Pwd = (string)read["Pwd"];
                if (read["CardNo"] != DBNull.Value)
                {
                    user.CardNo = (string)read["CardNo"];
                }
                user.Card = new CardDAL().GetCardById((int)read["CardId"]);

                if (read["Email"] != DBNull.Value)
                {
                    user.Email = (string)read["Email"];
                }
                if (read["Sex"] != DBNull.Value)
                {
                    user.Sex = (string)read["Sex"];
                }
                if (read["CreateTime"] != DBNull.Value)
                {
                    user.CreateTime = (DateTime)read["CreateTime"];
                }
                if (read["RealName"] != DBNull.Value)
                {
                    user.RealName = (string)read["RealName"];
                }
                if (read["Tel"] != DBNull.Value)
                {
                    user.Tel = (string)read["Tel"];
                }
                if (read["Address"] != DBNull.Value)
                {
                    user.Address = (string)read["Address"];
                }
                if (read["Zip"] != DBNull.Value)
                {
                    user.Zip = (string)read["Zip"];
                }
                if (read["IdentityCardNo"] != DBNull.Value)
                {
                    user.IdentityCardNo = (string)read["IdentityCardNo"];
                }
                if (read["Work"] != DBNull.Value)
                {
                    user.Work = (string)read["Work"];
                }
                if (read["LineCount"] != DBNull.Value)
                {
                    user.LineCount = (int)read["LineCount"];
                }
                if (read["LastOnLineTime"] != DBNull.Value)
                {
                    user.LastOnLineTime = (DateTime)read["LastOnLineTime"];
                }
            }
            read.Close();
            return user;
        }
        #endregion

        #region 修改
        public bool UpdateCustomer(Customer customer)
        {
            string sql =
"update Customer set Email=@Email ,Sex=@Sex,RealName=@RealName," +
"Tel=@Tel,Address=@Address,Zip=@Zip,IdentityCardNo=@IdentityCardNo,Work=@Work where Id=@Id";
            SqlParameter p1 = new SqlParameter("@Email", SqlDbType.VarChar);
            p1.Value = customer.Email;
            SqlParameter p2 = new SqlParameter("@Sex", SqlDbType.VarChar);
            p2.Value = customer.Sex;
            SqlParameter p3 = new SqlParameter("@RealName", SqlDbType.VarChar);
            p3.Value = customer.RealName;
            SqlParameter p4 = new SqlParameter("@Tel", SqlDbType.VarChar);
            p4.Value = customer.Tel;
            SqlParameter p5 = new SqlParameter("@Address", SqlDbType.VarChar);
            p5.Value = customer.Address;
            SqlParameter p6 = new SqlParameter("@Zip", SqlDbType.VarChar);
            p6.Value = customer.Zip;
            SqlParameter p7 = new SqlParameter("@IdentityCardNo", SqlDbType.VarChar);
            p7.Value = customer.IdentityCardNo;
            SqlParameter p8 = new SqlParameter("@Work", SqlDbType.VarChar);
            p8.Value = customer.Work;
            SqlParameter p9 = new SqlParameter("@Id", SqlDbType.Int);
            p9.Value = customer.Id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6, p7, p8, p9 });
            return flag;
        }
        #endregion

        #region 修改密码
        public bool UpdateCustomerByPwd(Customer customer)
        {
            string sql = " update Customer set Pwd=@Pwd where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Pwd", SqlDbType.VarChar);
            p1.Value = customer.Pwd;
            SqlParameter p2 = new SqlParameter("@Id", SqlDbType.Int);
            p2.Value = customer.Id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2 });
            return flag;

        }
        #endregion

        #region 增加上线次数
        public bool UpdateCustomerByLineCount(int id)
        {
            string sql = " update Customer set LineCount=LineCount+1 where Id=@Id ";

            SqlParameter p2 = new SqlParameter("@Id", SqlDbType.Int);
            p2.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p2 });
            return flag;
        }
        #endregion

        #region 修改最后一次上线时间
        public bool UpdateCustomerLastOnLineTime(int id)
        {
            string sql = " update Customer set LastOnLineTime=@LastOnLineTime where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@LastOnLineTime", SqlDbType.DateTime);
            p1.Value = DateTime.Now;
            SqlParameter p2 = new SqlParameter("@Id", SqlDbType.Int);
            p2.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2 });
            return flag;
        }
        #endregion

        #region 用户名是否存在
        public bool IsLoginIdExit(string loginId)
        {
            string sql = "select count(*) from [Customer] where LoginId=@LoginId ";

            SqlParameter p1 = new SqlParameter("@LoginId", SqlDbType.VarChar);
            p1.Value = loginId;

            int count = (int)SQLHelper.GetScalar(sql, CommandType.Text, new SqlParameter[] { p1 });
            bool flag = false;
            if (count > 0)
            {
                flag = true;

            }
            return flag;
        }
        #endregion

        #region Emial是否存在
        public bool IsEmailExit(string email)
        {
            string sql = "select count(*) from [Customer] where Email=@Email ";

            SqlParameter p1 = new SqlParameter("@Email", SqlDbType.VarChar);
            p1.Value = email;

            int count = (int)SQLHelper.GetScalar(sql, CommandType.Text, new SqlParameter[] { p1 });
            bool flag = false;
            if (count > 0)
            {
                flag = true;

            }
            return flag;
        }
        #endregion

        #region 身份证是否重复
        public bool IsIdentityExit(string IdentityId)
        {
            string sql = "select count(*) from [Customer] where IdentityCardNo=@IdentityCardNo ";

            SqlParameter p1 = new SqlParameter("@IdentityCardNo", SqlDbType.VarChar);
            p1.Value = IdentityId;

            int count = (int)SQLHelper.GetScalar(sql, CommandType.Text, new SqlParameter[] { p1 });
            bool flag = false;
            if (count > 0)
            {
                flag = true;

            }
            return flag;
        }
        #endregion

        #region 查询全部
        public List<Customer> GetCustomerAll()
        {
            string sql = "SELECT Customer.Id, Customer.LoginId, Customer.Pwd, Customer.CardNo, " +
        " Customer.CardId, Customer.Email, Customer.Sex, Customer.CreateTime, " +
        " Customer.RealName, Customer.Tel, Customer.Address, Customer.Zip, " +
        " Customer.IdentityCardNo, Customer.[Work], Customer.LineCount, " +
        " Customer.LastOnLineTime, Card.Id AS cid, Card.Name as cname" +
        " FROM Card INNER JOIN  Customer ON Card.Id = Customer.CardId";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<Customer> list = new List<Customer>();

            while (read.Read())
            {
                Customer customer = new Customer();
                customer.Id = (int)read["Id"];
                if (read["LoginId"] != DBNull.Value)
                {
                    customer.LoginId = read["LoginId"].ToString();
                }

                Card card = new Card();
                card.Id = (int)read["cid"];
                card.Name = read["cname"].ToString();
                customer.Card = card;

                if (read["LineCount"] != DBNull.Value)
                {
                    customer.LineCount = (int)read["LineCount"];
                }
                list.Add(customer);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 删除
        public bool DeleteById(int id)
        {
            string sql = "delete from [Customer] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1 });

            return flag;
        }
        #endregion

        #region 插入
        public bool InsertCustomer(Customer cus)
        {
            string sql =
            "insert into [Customer] values(@LoginId,@Pwd,@CardNo,@CardId,@Email,@Sex,@CreateTime, " +
            "@RealName,@Tel,@Address,@Zip,@IdentityCardNo,@Work,@LineCount,@LastOnLineTime)";
            SqlParameter p1 = new SqlParameter("@LoginId", SqlDbType.VarChar);
            p1.Value = cus.LoginId;
            SqlParameter p2 = new SqlParameter("@Pwd", SqlDbType.VarChar);
            p2.Value = cus.Pwd;
            SqlParameter p3 = new SqlParameter("@CardNo", SqlDbType.VarChar);
            p3.Value = cus.CardNo;
            SqlParameter p4 = new SqlParameter("@CardId", SqlDbType.Int);
            p4.Value = 1;/////////////////
            SqlParameter p5 = new SqlParameter("@Email", SqlDbType.VarChar);
            p5.Value = cus.Email;
            SqlParameter p6 = new SqlParameter("@Sex", SqlDbType.VarChar);
            p6.Value = cus.Sex;
            SqlParameter p7 = new SqlParameter("@CreateTime", SqlDbType.DateTime);
            p7.Value = cus.CreateTime;
            SqlParameter p8 = new SqlParameter("@RealName", SqlDbType.VarChar);
            p8.Value = cus.RealName;
            SqlParameter p9 = new SqlParameter("@Tel", SqlDbType.VarChar);
            p9.Value = cus.Tel;
            SqlParameter p10 = new SqlParameter("@Address", SqlDbType.VarChar);
            p10.Value = cus.Address;
            SqlParameter p11 = new SqlParameter("@Zip", SqlDbType.VarChar);
            p11.Value = cus.Zip;
            SqlParameter p12 = new SqlParameter("@IdentityCardNo", SqlDbType.VarChar);
            p12.Value = cus.IdentityCardNo;
            SqlParameter p13 = new SqlParameter("@Work", SqlDbType.VarChar);
            p13.Value = cus.Work;
            SqlParameter p14 = new SqlParameter("@LineCount", SqlDbType.Int);
            p14.Value = cus.LineCount;
            SqlParameter p15 = new SqlParameter("@LastOnLineTime", SqlDbType.DateTime);
            p15.Value = cus.LastOnLineTime;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15 });
            return flag;
        }
        #endregion

        #region 账户查询
        public Customer GetCustomerByCardNo(string cardNo, string pwd)
        {
            string sql =
            "select d.Discount as dDiscount," +
            " c.Id as cId,c.Tel as cTel,c.Address as cAddress,c.IdentityCardNo as cIdentityCardNo,c.RealName as cRealName,c.Sex as cSex " +
            " from [Customer] c,Card d where c.CardId=d.Id and c.CardNo=@CardNo and c.Pwd=@Pwd ";

            SqlParameter p1 = new SqlParameter("@CardNo", SqlDbType.VarChar);
            p1.Value = cardNo;

            SqlParameter p2 = new SqlParameter("@Pwd", SqlDbType.VarChar);
            p2.Value = pwd;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1, p2 });

            Customer user = null;

            if (read.Read())
            {
                user = new Customer();
                user.Id = (int)read["cId"];
                user.CardNo = cardNo;
                user.Pwd = pwd;
                user.Tel = (string)read["cTel"];
                user.Address = (string)read["cAddress"];
                user.IdentityCardNo = (string)read["cIdentityCardNo"];
                user.RealName = (string)read["cRealName"];
                user.Sex = (string)read["cSex"];

                Card card = new Card();
                card.Discount = (decimal)read["dDiscount"];
                user.Card = card;
            }
            read.Close();
            return user;
        }
        #endregion
    }
}
