using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class Conference
    {
        private int _id;
        private string _content;
        private DateTime _sj;

        public Conference(){}

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public string Content
        {
            get { return _content; }
            set { _content = value; }
        }     

        public DateTime Sj
        {
            get { return _sj; }
            set { _sj = value; }
        }
    }
}
