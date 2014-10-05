using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class Card
    {
        private int _id;
        private string _name;
        private decimal _up;
        private decimal _down;
        private decimal _discount;
        private int _classLeval;

        public Card() { }

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

        public decimal Up
        {
            get { return _up; }
            set { _up = value; }
        }

        public decimal Down
        {
            get { return _down; }
            set { _down = value; }
        }

        public decimal Discount
        {
            get { return _discount; }
            set { _discount = value; }
        }

        public int ClassLeval
        {
            get { return _classLeval; }
            set { _classLeval = value; }
        }
    }
}
