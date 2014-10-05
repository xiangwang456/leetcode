using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IHotelInfo
    {
        HotelInfo GetHotelInfo();
        bool UpdateHotelInfo(string name, string corporation, string address, string zip, string tel, string fax, string email, string content, string qq, string qq2, string nameOfEnglish, int id);
    }
}
