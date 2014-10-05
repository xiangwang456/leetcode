using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class LeaveWord
    {
        private int _id;
        private string _type;
        private string _subject;
        private string _name;
        private string _email;
        private string _address;
        private string _tel;
        private string _content;
        private DateTime _createTime;
        private string _ip;
        private string _isCustomer;

        public LeaveWord() { }

        public LeaveWord(string type, string subject, string name, string email, string address, string tel, string content, DateTime createTime, string ip, string isCustomer)
        {
            _type = type;
            _subject = subject;
            _name = name;
            _email = email;
            _address = address;
            _tel = tel;
            _content = content;
            _createTime = createTime;
            _ip = ip;
            _isCustomer = isCustomer;
        }



        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }      

        public string Type
        {
            get { return _type; }
            set { _type = value; }
        }
     
        public string Subject
        {
            get { return _subject; }
            set { _subject = value; }
        }      

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }      

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }        

        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }       

        public string Tel
        {
            get { return _tel; }
            set { _tel = value; }
        }
      
        public string Content
        {
            get { return _content; }
            set { _content = value; }
        }       

        public DateTime CreateTime
        {
            get { return _createTime; }
            set { _createTime = value; }
        }      

        public string Ip
        {
            get { return _ip; }
            set { _ip = value; }
        }

        public string IsCustomer
        {
            get { return _isCustomer; }
            set { _isCustomer = value; }
        }
    }
}
