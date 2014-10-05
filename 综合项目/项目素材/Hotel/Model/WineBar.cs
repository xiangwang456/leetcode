using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class WineBar
    {
        private int _id;
        private string _name;
        private string _spic;
        private string _pic;
        private string _content;
        private DateTime _sj;

        public WineBar() { }

        public WineBar(string name,string spic,string pic,string content,DateTime sj) 
        {
            _name = name;
            _spic = spic;
            _pic = pic;
            _content = content;
            _sj = sj;
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
      
        public string Spic
        {
            get { return _spic; }
            set { _spic = value; }
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
