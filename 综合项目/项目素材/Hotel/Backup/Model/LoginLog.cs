using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class LoginLog
    {
        private int _loginId;//登录日志id
        private UserInfo _userInfo;//登录者
        private DateTime _loginTime;//登录时间
        private int _ifSuccess;//登录是否成功。1：成功、0失败。
        private string _loginUserIp;//登录用户IP
        private string _loginDesc;//登录备注

        public LoginLog() { }

        public int LoginId
        {
            get { return _loginId; }
            set { _loginId = value; }
        }
      
        public UserInfo UserInfo
        {
            get { return _userInfo; }
            set { _userInfo = value; }
        }    

        public DateTime LoginTime
        {
            get { return _loginTime; }
            set { _loginTime = value; }
        }    

        public int IfSuccess
        {
            get { return _ifSuccess; }
            set { _ifSuccess = value; }
        }    

        public string LoginUserIp
        {
            get { return _loginUserIp; }
            set { _loginUserIp = value; }
        }

        public string LoginDesc
        {
            get { return _loginDesc; }
            set { _loginDesc = value; }
        }
    }
}
