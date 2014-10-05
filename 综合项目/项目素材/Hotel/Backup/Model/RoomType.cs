using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class RoomType
    {
        private int _id;
        private string _name;
        private string _spic;
        private string _pic;
        private string _content;
        private decimal _price;
        private string _area;
        private DateTime _sj;
        private int _isAddBed;
        private decimal _addBedPrice;

        public RoomType() { }

        public RoomType(string name, string spic, string pic, string content, decimal price, string area, DateTime sj, int isAddBed, decimal addBedPrice) 
        {
            _name = name;
            _spic = spic;
            _pic = pic;
            _content = content;
            _price = price;
            _area = area;
            _sj = sj;
            _isAddBed = isAddBed;
            _addBedPrice = addBedPrice;
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

        public decimal Price
        {
            get { return _price; }
            set { _price = value; }
        }       

        public string Area
        {
            get { return _area; }
            set { _area = value; }
        }     

        public DateTime Sj
        {
            get { return _sj; }
            set { _sj = value; }
        }      

        public int IsAddBed
        {
            get { return _isAddBed; }
            set { _isAddBed = value; }
        }      

        public decimal AddBedPrice
        {
            get { return _addBedPrice; }
            set { _addBedPrice = value; }
        } 
 
    }
}
