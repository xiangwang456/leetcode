using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class GoodsTypeBLL
    {
        private static readonly IGoodsType igoodsType = Hotel.DALFactory.DataAccess.CreateGoodsType();

        // 查询所有
        public List<GoodsType> GetGoodsTypeAll()
        {
           return  igoodsType.GetGoodsTypeAll();
        }
        
        //根据主键查询
        public GoodsType GetGoodsTypeById(int goodsTypeId)
        {
            return igoodsType.GetGoodsTypeById(goodsTypeId);
        }
    }
}
