using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class GoodsNameBLL
    {
        private static readonly IGoodsName igoods = Hotel.DALFactory.DataAccess.CreateGoodsName();

        //查询某一类型的所有商品  G_AddGoods.aspx 
        public List<GoodsName> GetGoodsNameAllByType(int goodsType)
        {
            return igoods.GetGoodsNameAllByType(goodsType);
        }

        //插入 G_GoodsManage.aspx
        public bool InsertGoods(string name, decimal price, string unit, int up, int down, int typeId)
        {
            return igoods.InsertGoods(name,price,unit,up,down,typeId);
        }

        //删除
        public bool DeleteById(int id)
        {
            return igoods.DeleteById(id);
        }

        //根据主键查询
        public GoodsName GetGoodsNameById(int id)
        {
            return igoods.GetGoodsNameById(id);
        }

    }
}
