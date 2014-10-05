using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;

namespace Hotel.BLL
{
    public class LoginLogBLL
    {
        private static readonly ILoginLog ilog = Hotel.DALFactory.DataAccess.CreateLoginLog();

        //插入登录日志
        public bool InsertLogin(string userId, DateTime loginTime, int ifSuccess, string loginUserIp, string loginDesc)
        {
            return ilog.InsertLogin(userId, loginTime, ifSuccess, loginUserIp, loginDesc);
        }

        //有条件查询 S_LoginLog.aspx
        public List<LoginLog> GetLoginBySearch(string beginTime, string endTime, int day)
        {
            return ilog.GetLoginBySearch(beginTime, endTime, day);
        }

        //删除
        public bool DeleteById(string loginId)
        {
            return ilog.DeleteById(loginId);
        }
    }
}
