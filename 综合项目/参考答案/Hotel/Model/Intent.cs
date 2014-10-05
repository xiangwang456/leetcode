using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class Intent
    {
        private int _id;
        private string _type;
        private string _title;
        private string _pic;
        private string _content;
        private DateTime _sj;

        public Intent() { }

        public Intent(string type,string title,string pic,string content,DateTime sj) 
        {
            _type = type;
            _title = title;
            _pic = pic;
            _content = content;
            _sj = sj;
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
        
        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }      

        public string Pic
        {
            get { return _pic; }
            set { _pic = value; }
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
