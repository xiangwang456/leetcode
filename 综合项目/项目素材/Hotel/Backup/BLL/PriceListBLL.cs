using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class PriceListBLL
    {
        private static readonly IPriceList ipriceList = Hotel.DALFactory.DataAccess.CreatePriceList();

        public PriceList GetPriceList()
        {
            return ipriceList.GetPriceList();
        }

         //修改
        public bool UpdatePrice(string content, int id)
        {
            return ipriceList.UpdatePrice(content, id);
        }
    }
}
