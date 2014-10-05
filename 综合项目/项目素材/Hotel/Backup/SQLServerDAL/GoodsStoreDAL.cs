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
    public class GoodsStoreDAL : IGoodsStore
    {
        //1是进，2是出，3是盘赢，4是盘亏
        #region
        public List<GoodsStore> GetGoodsStoreAll(int nameId)
        {

            string sql = "select s.Id as  sId,s.CreateTime as sCreateTime, s.InPrice as sInPrice,s.InCount as sInCount," +
               " s.StoreCount as sStoreCount,s.StoreMark as sStoreMark,s.OutCount as sOutCount,s.Type as sType," +
               " u.UserId as uUserId,u.UserName as uUserName," +
               " n.Price as nPrice,n.Unit as nUnit,n.Name as nName" +
               " from" +
               " GoodsStore s,UserInfo u,GoodsName n" +
               " where s.Runner=u.UserId and s.NameId=n.Id and s.NameId=" + nameId + "  order by s.CreateTime";


            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<GoodsStore> list = new List<GoodsStore>();

            while (read.Read())
            {
                GoodsStore store = new GoodsStore();
                store.Id = (int)read["sId"];
                store.CreateTime = (DateTime)read["sCreateTime"];
                store.InPrice = (decimal)read["sInPrice"];
                store.InCount = (int)read["sInCount"];
                store.StoreCount = (int)read["sStoreCount"];
                if (read["sStoreMark"] != DBNull.Value)
                {
                    store.StoreMark = (string)read["sStoreMark"];
                }
                store.OutCount = (int)read["sOutCount"];
                store.Type = (int)read["sType"];

                UserInfo user = new UserInfo();
                user.UserId = (string)read["uUserId"];
                user.UserName = (string)read["uUserName"];
                store.UserInfo = user;

                GoodsName name = new GoodsName();
                name.Price = (decimal)read["nPrice"];
                name.Unit = (string)read["nUnit"];
                name.Name = (string)read["nName"];
                store.GoodsName = name;

                list.Add(store);
            }

            read.Close();
            return list;
        }
        #endregion

        #region 插入
        public bool InsertStore(int nameId, string userId, DateTime createTime, decimal inPrice, int inCount, int outCount, int storeCount, string mark, int type)
        {
            string sql = "insert into [GoodsStore] values(@NameId,@Runner,@CreateTime,@InPrice,@InCount,@OutCount,@StoreCount,@StoreMark,@Type)";

            SqlParameter p1 = new SqlParameter("@NameId", SqlDbType.Int);
            p1.Value = nameId;
            SqlParameter p2 = new SqlParameter("@Runner", SqlDbType.VarChar);
            p2.Value = userId;
            SqlParameter p3 = new SqlParameter("@CreateTime", SqlDbType.DateTime);
            p3.Value = createTime;
            SqlParameter p4 = new SqlParameter("@InPrice", SqlDbType.Decimal);
            p4.Value = inPrice;
            SqlParameter p5 = new SqlParameter("@InCount", SqlDbType.Int);
            p5.Value = inCount;
            SqlParameter p6 = new SqlParameter("@StoreCount", SqlDbType.Int);
            p6.Value = storeCount;
            SqlParameter p7 = new SqlParameter("@StoreMark", SqlDbType.VarChar);
            p7.Value = mark;
            SqlParameter p8 = new SqlParameter("@OutCount", SqlDbType.Int);
            p8.Value = outCount;
            SqlParameter p9 = new SqlParameter("@Type", SqlDbType.Int);
            p9.Value = type;

            bool flag = SQLHelper.ExeNonQuery(sql, CommandType.Text, new SqlParameter[] { p1, p2, p3, p4, p5, p6, p7, p8, p9 });

            return flag;

        }
        #endregion

        #region 计算某种产品的库存
        public int GetGoodsStoreByNameId(int nameId)
        {
            int count = 0;
            try
            {
                string sql = "select StoreCount from GoodsStore where Id=( select Max(Id) from GoodsStore  where NameId=" + nameId + ")";
                //string sql = "select max(StoreCount) from [GoodsStore] where NameId=" + nameId;
                count = (int)SQLHelper.GetScalar(sql, CommandType.Text);
            }
            catch (Exception exe) { }

            return count;
        }
        #endregion

        #region 购物车
        public List<GoodsStore> GetGoodsStoreAllByShop()
        {
            string sql =
            " select t.GoodsTypeName as tGoodsTypeName, " +
            " g.StoreCount as gStoreCount,g.Id as gId, " +
            " n.[Name] as nName,n.Unit as nUnit,n.Price as nPrice, n.Id as nId " +
            " from GoodsStore g,GoodsName n,GoodsType t where " +
            " n.TypeId=t.GoodsTypeId and  g.NameId=n.Id" +
            " and g.StoreCount > 0 and " +
            " g.Id in"+
            " ( select Max(Id) from GoodsStore group by NameId )";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<GoodsStore> list = new List<GoodsStore>();

            while (read.Read())
            {
                GoodsStore store = new GoodsStore();
                store.Id = (int)read["gId"];
                store.StoreCount = (int)read["gStoreCount"];               

                GoodsName name = new GoodsName();
                name.Id = (int)read["nId"];
                name.Price = (decimal)read["nPrice"];
                name.Unit = (string)read["nUnit"];
                name.Name = (string)read["nName"];

                GoodsType type = new GoodsType();
                type.GoodsTypeName = (string)read["tGoodsTypeName"];

                name.GoodsType = type;
                store.GoodsName = name;

                list.Add(store);
            }

            read.Close();
            return list;
        }
        #endregion
    }
}
