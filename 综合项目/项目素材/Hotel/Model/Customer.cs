using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class Customer
    {
        private int _id;
        private string _loginId;
        private string _pwd;
        private string _cardNo;
        private Card _card;
        private string _email;
        private string _sex;
        private DateTime _createTime;
        private string _realName;
        private string _tel;
        private string _address;
        private string _zip;
        private string _identityCardNo;
        private string _work;
        private int _lineCount;
        private DateTime _lastOnLineTime;

        public Customer() { }

        public Customer(string loginId,string pwd) 
        {
            _loginId = loginId;
            _pwd = pwd;
        }

        public Customer(string loginId,string pwd,string cardNo,string email,string sex
            ,DateTime createTime,string realName,string tel,string address,string zip,
            string identity,string work
            ,int lineCount,DateTime lastOnlineTime)
        {
            _loginId = loginId;
            _pwd = pwd;
            _cardNo = cardNo;
            _email = email;
            _sex = sex;
            _createTime = createTime;
            _realName = realName;
            _tel = tel;
            _address = address;
            _zip = zip;
            _identityCardNo = identity;
            _work = work;
            _lineCount = lineCount;
            _lastOnLineTime = lastOnlineTime;
        }


        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }      

        public string LoginId
        {
            get { return _loginId; }
            set { _loginId = value; }
        }     

        public string Pwd
        {
            get { return _pwd; }
            set { _pwd = value; }
        }  
        
        public string CardNo
        {
            get { return _cardNo; }
            set { _cardNo = value; }
        }    

        public Card Card
        {
            get { return _card; }
            set { _card = value; }
        }

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }

        public string Sex
        {
            get { return _sex; }
            set { _sex = value; }
        }

        public DateTime CreateTime
        {
            get { return _createTime; }
            set { _createTime = value; }
        }

        public string RealName
        {
            get { return _realName; }
            set { _realName = value; }
        }

        public string Tel
        {
            get { return _tel; }
            set { _tel = value; }
        }

        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }

        public string Zip
        {
            get { return _zip; }
            set { _zip = value; }
        }

        public string Work
        {
            get { return _work; }
            set { _work = value; }
        }

        public string IdentityCardNo
        {
            get { return _identityCardNo; }
            set { _identityCardNo = value; }
        }

        public int LineCount
        {
            get { return _lineCount; }
            set { _lineCount = value; }
        }

        public DateTime LastOnLineTime
        {
            get { return _lastOnLineTime; }
            set { _lastOnLineTime = value; }
        }
    }
}
