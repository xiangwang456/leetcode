using System;
using System.Collections.Generic;
using System.Text;
using Hotel.IDAL;
using Hotel.Model;


namespace Hotel.BLL
{
    public class UserInfoBLL
    {
        private static readonly IUserInfo iuser = Hotel.DALFactory.DataAccess.CreateUserInfo();

        //登陆
        public UserInfo Login(UserInfo user)
        {
            return iuser.Login(user);
        }

        //修改用户风格
        public bool UpdateUserStyle(string userId, int styleId)
        {
            return iuser.UpdateUserStyle(userId, styleId);
        }

       
    }
}
