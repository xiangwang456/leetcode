using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class Style
    {

        private int _id;
        private string _pic;
        private string _title;
        private string _path;
        private string _show;
        private string _mr;

        public Style() { }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public string Pic
        {
            get { return _pic; }
            set { _pic = value; }
        }

        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }

        public string Path
        {
            get { return _path; }
            set { _path = value; }
        }

        public string Show
        {
            get { return _show; }
            set { _show = value; }
        }

        public string Mr
        {
            get { return _mr; }
            set { _mr = value; }
        }

    }
}
