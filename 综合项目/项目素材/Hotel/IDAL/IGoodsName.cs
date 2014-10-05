using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IGoodsName
    {
        List<GoodsName> GetGoodsNameAllByType(int goodsType);
        bool InsertGoods(string name, decimal price, string unit, int up, int down, int typeId);
        bool DeleteById(int id);
        GoodsName GetGoodsNameById(int id);
    }
}
