using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class HotelInfo
    {
        private int _id;
        private string _name;
        private string corporation;
        private string _address;
        private string _zip;
        private string _tel;
        private string _fax;
        private string _email;
        private string _content;
        private string _qq;
        private string _pic;
        private string _sign;
        private string _qq2;
        private string _nameOfEnglish;


        public HotelInfo()
        {
 
        }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }      

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }      

        public string Corporation
        {
            get { return corporation; }
            set { corporation = value; }
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
      
        public string Tel
        {
            get { return _tel; }
            set { _tel = value; }
        }       

        public string Fax
        {
            get { return _fax; }
            set { _fax = value; }
        }
   
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
     
        public string Content
        {
            get { return _content; }
            set { _content = value; }
        }
     
        public string Qq
        {
            get { return _qq; }
            set { _qq = value; }
        }
     
        public string Pic
        {
            get { return _pic; }
            set { _pic = value; }
        }
     
        public string Sign
        {
            get { return _sign; }
            set { _sign = value; }
        }

        public string Qq2
        {
            get { return _qq2; }
            set { _qq2 = value; }
        }

        public string NameOfEnglish
        {
            get { return _nameOfEnglish; }
            set { _nameOfEnglish = value; }
        }
    }
}
