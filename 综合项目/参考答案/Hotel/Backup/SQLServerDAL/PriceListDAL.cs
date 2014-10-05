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
    public class PriceListDAL : IPriceList
    {     
        #region IPriceList 成员
        public PriceList GetPriceList()
        {
            string sql = "select * from [PriceList]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            PriceList price = new PriceList();

            while (read.Read())
            {              

                price.Id = (int)read["Id"];
                if (read["Content"] != DBNull.Value)
                {
                    price.Content = read["Content"].ToString();
                }
                if (read["Sj"] != DBNull.Value)
                {
                    price.Sj = (DateTime)read["Sj"];
                }
            }
            read.Close();
            return price;
        }
        #endregion

        #region 修改
        public bool UpdatePrice(string content, int id)
        {
            string sql = "update [PriceList] set [Content]=@Content where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Content", SqlDbType.VarChar);
            p1.Value = content;
            SqlParameter p2 = new SqlParameter("@Id", SqlDbType.Int);
            p2.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2 });
            return flag;
        }
        #endregion
    }
}
