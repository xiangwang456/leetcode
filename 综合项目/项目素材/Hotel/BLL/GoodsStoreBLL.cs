using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class GoodsStoreBLL
    {
        private static readonly IGoodsStore igoods = Hotel.DALFactory.DataAccess.CreateGoodsStore();

        //查询全部
        public List<GoodsStore> GetGoodsStoreAll(int nameId)
        {
            return igoods.GetGoodsStoreAll(nameId);
        }

        //插入
        public bool InsertStore(int nameId, string userId, DateTime createTime, decimal inPrice, int inCount, int outCount, int storeCount, string mark, int type)
        {
            return igoods.InsertStore(nameId, userId, createTime, inPrice, inCount,outCount, storeCount, mark,type);
        }

        //计算某种产品的库存
        public int GetGoodsStoreByNameId(int nameId)
        {
            return igoods.GetGoodsStoreByNameId(nameId);
        }

        //购物车
        public List<GoodsStore> GetGoodsStoreAllByShop()
        {
            return igoods.GetGoodsStoreAllByShop();
        }
    }
}
