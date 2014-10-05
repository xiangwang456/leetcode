using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class UserInfo
    {
        private string _userId;
        private string _userName;
        private string _password;
        private int _gender;
        private Style _style;
        private string _url;//特殊       

        public UserInfo() { }

        public UserInfo(string userId, string pwd)
        {
            _userId = userId;
            _password = pwd;
        }

        public UserInfo(string userId)
        {
            _userId = userId;            
        }


        public string UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }

        public Style Style
        {
            get { return _style; }
            set { _style = value; }
        }

       

        public int Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }

        public string Url
        {
            get { return _url; }
            set { _url = value; }
        }        
    }
}
