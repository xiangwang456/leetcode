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
    public class HotelInfoDAL:IHotelInfo
    {
        #region IHotelInfo 得到该公司的信息
        public HotelInfo GetHotelInfo()
        {
            string sql = "select * from [HotelInfo]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            HotelInfo hotel = null;

            if (read.Read())
            {
                hotel = new HotelInfo();
                hotel.Id = (int)read["HId"];
                if (read["HName"] != DBNull.Value)
                {
                    hotel.Name = read["HName"].ToString();
                }
                if (read["HCorporation"] != DBNull.Value)
                {
                    hotel.Corporation = read["HCorporation"].ToString();
                }
                if (read["HAddress"] != DBNull.Value)
                {
                    hotel.Address = read["HAddress"].ToString();
                }
                if (read["HZip"] != DBNull.Value)
                {
                    hotel.Zip = read["HZip"].ToString();
                }
                if (read["HTel"] != DBNull.Value)
                {
                    hotel.Tel = read["HTel"].ToString();
                }
                if (read["HFax"] != DBNull.Value)
                {
                    hotel.Fax = read["HFax"].ToString();
                }
                if (read["HEmail"] != DBNull.Value)
                {
                    hotel.Email = read["HEmail"].ToString();
                }
                if (read["HContent"] != DBNull.Value)
                {
                    hotel.Content = read["HContent"].ToString();
                }
                if (read["HQQ"] != DBNull.Value)
                {
                    hotel.Qq = read["HQQ"].ToString();
                }
                if (read["HQQ2"] != DBNull.Value)
                {
                    hotel.Qq2 = read["HQQ2"].ToString();
                }
                if (read["HPic"] != DBNull.Value)
                {
                    hotel.Pic = read["HPic"].ToString();
                }
                if (read["HSign"] != DBNull.Value)
                {
                    hotel.Sign = read["HSign"].ToString();
                }
                if (read["NameOfEnglish"] != DBNull.Value)
                {
                    hotel.NameOfEnglish = read["NameOfEnglish"].ToString();
                }
            }
            read.Close();
            return hotel;
        }
        #endregion

        #region 修改
        public bool UpdateHotelInfo(string name, string corporation, string address, string zip, string tel, string fax, string email, string content, string qq, string qq2, string nameOfEnglish, int id)
        {
            string sql = "update [HotelInfo] set HName=@HName,HCorporation=@HCorporation,HAddress=@HAddress,HZip=@HZip,HTel=@HTel,HFax=@HFax,HEmail=@HEmail,HContent=@HContent,HQQ=@HQQ,HQQ2=@HQQ2,NameOfEnglish=@NameOfEnglish  where HId=@HId ";

            SqlParameter p1 = new SqlParameter("@HName", SqlDbType.VarChar);
            p1.Value = name;
            SqlParameter p2 = new SqlParameter("@HCorporation", SqlDbType.VarChar);
            p2.Value = corporation;
            SqlParameter p3 = new SqlParameter("@HAddress", SqlDbType.VarChar);
            p3.Value = address;
            SqlParameter p4 = new SqlParameter("@HZip", SqlDbType.VarChar);
            p4.Value = zip;
            SqlParameter p5 = new SqlParameter("@HTel", SqlDbType.VarChar);
            p5.Value = tel;
            SqlParameter p6 = new SqlParameter("@HFax", SqlDbType.VarChar);
            p6.Value = fax;
            SqlParameter p7 = new SqlParameter("@HEmail", SqlDbType.VarChar);
            p7.Value = email;
            SqlParameter p8 = new SqlParameter("@HContent", SqlDbType.VarChar);
            p8.Value = content;
            SqlParameter p9 = new SqlParameter("@HQQ", SqlDbType.VarChar);
            p9.Value = qq;
            SqlParameter p10 = new SqlParameter("@HQQ2", SqlDbType.VarChar);
            p10.Value = qq2;
            SqlParameter p11 = new SqlParameter("@NameOfEnglish", SqlDbType.VarChar);
            p11.Value = nameOfEnglish;
            SqlParameter p12 = new SqlParameter("@HId", SqlDbType.Int);
            p12.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12 });

            return flag;
        }
        #endregion
    }
}
