using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IGoodsType
    {
        List<GoodsType> GetGoodsTypeAll();
        GoodsType GetGoodsTypeById(int goodsTypeId);
    }
}
