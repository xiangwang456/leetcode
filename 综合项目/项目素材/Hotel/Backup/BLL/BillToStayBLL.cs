using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class BillToStayBLL
    {
        private static readonly IBillToStay ibill = Hotel.DALFactory.DataAccess.CreateBillToStay();

        //插入客人入住单
        public bool InsertBillToStay(List<BillToStay> listBill)
        {
            return ibill.InsertBillToStay(listBill);
        }

        //获取入住人的姓名
        public string GetRealName(string number)
        {
            return ibill.GetRealName(number);
        }

         //BillToHotelByShow.aspx 页面
        public List<BillToStay> GetByRealName(string name)
        {
            return ibill.GetByRealName(name);
        }
    }
}
