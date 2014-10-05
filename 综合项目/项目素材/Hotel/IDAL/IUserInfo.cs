using System;
using System.Collections.Generic;
using System.Text;
using Hotel.Model;

namespace Hotel.IDAL
{
    public interface IUserInfo
    {
        UserInfo Login(UserInfo user);
        bool UpdateUserStyle(string userId, int styleId);
        
    }
}
