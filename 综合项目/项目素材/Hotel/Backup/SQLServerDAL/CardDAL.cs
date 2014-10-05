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
    public class CardDAL:ICard
    {

        #region ICard 成员
        public Card GetCardById(int id)
        {

            string sql = "select * from [Card] where Id=@Id";

            SqlParameter p1 = new SqlParameter("@Id", SqlDbType.Int);
            p1.Value = id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text, new SqlParameter[] { p1 });

            Card card = new Card();

            if (read.Read())
            {
                card.Id = (int)read["Id"];
                if (read["Name"] != DBNull.Value)
                {
                    card.Name = read["Name"].ToString();
                }                   
            }
            read.Close();
            return card;
        }
        #endregion

        #region 查询所有
        public List<Card> GetCardAll()
        {
            string sql = "select * from [Card] order by ClassLeval";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<Card> list = new List<Card>();

            while (read.Read())
            {
                Card card = new Card();
                card.Id = (int)read["Id"];
                if (read["Name"] != DBNull.Value)
                {
                    card.Name = read["Name"].ToString();
                }
                if (read["Up"] != DBNull.Value)
                {
                    card.Up = (decimal)read["Up"];
                }
                if (read["Down"] != DBNull.Value)
                {
                    card.Down = (decimal)read["Down"];
                }
                if (read["Discount"] != DBNull.Value)
                {
                    card.Discount = (decimal)read["Discount"];
                }
                if (read["ClassLeval"] != DBNull.Value)
                {
                    card.ClassLeval = (int)read["ClassLeval"];
                }
                list.Add(card);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 修改
        public bool UpdateCard(string name, decimal down, decimal up, decimal discount, int id)
        {
            string sql = "update [Card] set [Name] = @Name,[Down]=@Down,[Up]=@Up,[Discount]=@Discount where Id=@Id ";

            SqlParameter p1 = new SqlParameter("@Name", SqlDbType.VarChar);
            p1.Value = name;
            SqlParameter p2 = new SqlParameter("@Down", SqlDbType.Money);
            p2.Value = down;
            SqlParameter p3 = new SqlParameter("@Up", SqlDbType.Money);
            p3.Value = up;
            SqlParameter p4 = new SqlParameter("@Discount", SqlDbType.Decimal);
            p4.Value = discount;
            SqlParameter p5 = new SqlParameter("@Id", SqlDbType.Int);
            p5.Value = id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4,p5 });
            return flag;
        }
        #endregion
    }
}
