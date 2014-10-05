using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface ILoginLog
    {
        bool InsertLogin(string userId, DateTime loginTime, int ifSuccess, string loginUserIp, string loginDesc);
        List<LoginLog> GetLoginBySearch(string beginTime, string endTime, int day);
        bool DeleteById(string loginId);
    }
}
