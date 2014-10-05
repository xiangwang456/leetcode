using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class News
    {
        private int _id;
        private string _style;
        private string _title;
        private string _content;
        private string _pic;
        private DateTime _createDate;
        private int _click;

        public News() 
        { }

        public News(string style, string title, string content, string pic, DateTime createdate, int click)
        {
            _style = style;
            _title = title;
            _content = content;
            _pic = pic;
            _createDate = createdate;
            _click = click;
        }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }     

        public string Style
        {
            get { return _style; }
            set { _style = value; }
        }      

        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }      

        public string Content
        {
            get { return _content; }
            set { _content = value; }
        }
     
        public string Pic
        {
            get { return _pic; }
            set { _pic = value; }
        }    

        public DateTime CreateDate
        {
            get { return _createDate; }
            set { _createDate = value; }
        }    

        public int Click
        {
            get { return _click; }
            set { _click = value; }
        }
    }
}
