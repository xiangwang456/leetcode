using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IGoodsStore
    {
        List<GoodsStore> GetGoodsStoreAll(int nameId);
        bool InsertStore(int nameId, string userId, DateTime createTime, decimal inPrice, int inCount,int outCount, int storeCount, string mark,int type);
        int GetGoodsStoreByNameId(int nameId);
        List<GoodsStore> GetGoodsStoreAllByShop();
    }
}
