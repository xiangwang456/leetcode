using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class HotelInfoBLL
    {
        private static readonly IHotelInfo ihotelInfo = Hotel.DALFactory.DataAccess.CreateHotelInfo();

        public HotelInfo GetHotelInfo()
        {
            return ihotelInfo.GetHotelInfo();
        }

        //修改
        public bool UpdateHotelInfo(string name, string corporation, string address, string zip, string tel, string fax, string email, string content, string qq, string qq2, string nameOfEnglish, int id)
        {
            return ihotelInfo.UpdateHotelInfo(name, corporation, address, zip, tel, fax, email, content, qq, qq2, nameOfEnglish, id);
        }
    }
}
