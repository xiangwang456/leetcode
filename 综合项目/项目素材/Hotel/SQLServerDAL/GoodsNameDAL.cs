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
    public class GoodsNameDAL:IGoodsName
    {
        #region 查询某一类型的所有商品  G_GoodsManage.aspx
        public List<GoodsName> GetGoodsNameAllByType(int goodsType)
        {

            string sql = "select * from [GoodsName]  where TypeId =" + goodsType;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<GoodsName> list = new List<GoodsName>();

            while (read.Read())
            {
                GoodsName goods = new GoodsName();
                goods.Id = (int)read["Id"];
                goods.Name = (string)read["Name"];
                goods.Price = (decimal)read["Price"];
                goods.Unit = (string)read["Unit"];
                goods.OnLine = (int)read["OnLine"];
                goods.OffLine = (int)read["OffLine"];

                list.Add(goods);
            }
            read.Close();
            return list;
        }

        #endregion

        #region 插入 G_AddGoodsName.aspx
        public bool InsertGoods(string name, decimal price, string unit, int up, int down, int typeId)
        {
            string sql = "insert into [GoodsName] values(@Name,@Price,@Unit,@OnLine,@OffLine,@TypeId)";

            SqlParameter p1 = new SqlParameter("@Name", SqlDbType.VarChar);
            p1.Value = name;
            SqlParameter p2 = new SqlParameter("@Price", SqlDbType.Money);
            p2.Value = price;
            SqlParameter p3 = new SqlParameter("@Unit", SqlDbType.VarChar);
            p3.Value = unit;
            SqlParameter p4 = new SqlParameter("@OnLine", SqlDbType.Int);
            p4.Value = up;
            SqlParameter p5 = new SqlParameter("@OffLine", SqlDbType.Int);
            p5.Value = down;
            SqlParameter p6 = new SqlParameter("@TypeId", SqlDbType.Int);
            p6.Value = typeId;


            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6 });

            return flag;
        }
        #endregion



        #region 删除
        public bool DeleteById(int id)
        {

            string sql = "delete from [GoodsName] where Id=" + id;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text);

            return flag;
        }
        #endregion

        #region 根据主键查询
        public GoodsName GetGoodsNameById(int id)
        {

            string sql = "select * from [GoodsName]  where Id =" + id;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);
            GoodsName goods = null;

            if (read.Read())
            {
                goods = new GoodsName();
                goods.Id = (int)read["Id"];
                goods.Name = (string)read["Name"];
                goods.Price = (decimal)read["Price"];
                goods.Unit = (string)read["Unit"];
                goods.OnLine = (int)read["OnLine"];
                goods.OffLine = (int)read["OffLine"];

              
            }
            read.Close();
            return goods;
        }
        #endregion
    }
}
