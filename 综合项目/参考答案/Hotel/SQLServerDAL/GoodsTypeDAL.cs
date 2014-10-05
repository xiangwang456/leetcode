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
    public class GoodsTypeDAL:IGoodsType
    {
        #region 查询所有
        public List<GoodsType> GetGoodsTypeAll()
        {
            string sql = "select * from [GoodsType]";

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            List<GoodsType> list = new List<GoodsType>();

            while (read.Read())
            {
                GoodsType type = new GoodsType();
                type.GoodsTypeId = (int)read["GoodsTypeId"];
                type.GoodsTypeName = (string)read["GoodsTypeName"];

                list.Add(type);
            }
            read.Close();
            return list;
        }
        #endregion

        #region 根据主键查询
        public GoodsType GetGoodsTypeById(int goodsTypeId)
        {
            string sql = "select * from [GoodsType] where GoodsTypeId=" + goodsTypeId;

            SqlDataReader read = SQLHelper.ExeDataReader(sql, CommandType.Text);

            GoodsType type = null;
            while (read.Read())
            {
                type = new GoodsType();
                type.GoodsTypeId = (int)read["GoodsTypeId"];
                type.GoodsTypeName = (string)read["GoodsTypeName"];             
            }
            read.Close();
            return type;
        }
        #endregion
    }
}
