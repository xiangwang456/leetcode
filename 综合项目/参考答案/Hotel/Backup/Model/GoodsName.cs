using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class GoodsName
    {
        private int _id;
        private string _name;
        private decimal _price;
        private string _unit;
        private int _onLine;
        private int _offLine;
        private GoodsType _goodsType;

        public GoodsName() { }

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
  
        public decimal Price
        {
            get { return _price; }
            set { _price = value; }
        }
      
        public string Unit
        {
            get { return _unit; }
            set { _unit = value; }
        }
     
        public int OnLine
        {
            get { return _onLine; }
            set { _onLine = value; }
        }
      
        public int OffLine
        {
            get { return _offLine; }
            set { _offLine = value; }
        }    

        public GoodsType GoodsType
        {
            get { return _goodsType; }
            set { _goodsType = value; }
        }

    }
}
