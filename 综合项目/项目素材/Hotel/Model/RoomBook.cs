using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class RoomBook
    {
        private int _id;
        private string _roomType;
        private int _roomCount;
        private int _peopleCount;
        private string _name;
        private string _sex;
        private string _zip;
        private string _address;
        private string _tel;
        private string _fax;
        private string _email;
        private DateTime _fromDate;
        private DateTime _toDate;
        private string _accountType;
        private string _company;
        private string _advice;
        private DateTime _createTime;

        public RoomBook() { }

        public RoomBook(string roomType, int roomCount, int peopleCount, string name, string sex, string zip, string add, string tel, string fax,
            string email, DateTime from, DateTime to, string accountType, string company, string advice, DateTime createTime)
        {
            _roomType = roomType;
            _roomCount = roomCount;
            _peopleCount = peopleCount;
            _name = name;
            _sex = sex;
            _zip = zip;
            _address = add;
            _tel = tel;
            _fax = fax;
            _email = email;
            _fromDate = from;
            _toDate = to;
            _accountType = accountType;
            _company = company;
            _advice = advice;
            _createTime = createTime;
        }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public string RoomType
        {
            get { return _roomType; }
            set { _roomType = value; }
        }

        public int RoomCount
        {
            get { return _roomCount; }
            set { _roomCount = value; }
        }

        public int PeopleCount
        {
            get { return _peopleCount; }
            set { _peopleCount = value; }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public string Sex
        {
            get { return _sex; }
            set { _sex = value; }
        }

        public string Zip
        {
            get { return _zip; }
            set { _zip = value; }
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

        public DateTime FromDate
        {
            get { return _fromDate; }
            set { _fromDate = value; }
        }

        public DateTime ToDate
        {
            get { return _toDate; }
            set { _toDate = value; }
        }

        public string AccountType
        {
            get { return _accountType; }
            set { _accountType = value; }
        }

        public string Company
        {
            get { return _company; }
            set { _company = value; }
        }

        public string Advice
        {
            get { return _advice; }
            set { _advice = value; }
        }

        public DateTime CreateTime
        {
            get { return _createTime; }
            set { _createTime = value; }
        }


    }
}
