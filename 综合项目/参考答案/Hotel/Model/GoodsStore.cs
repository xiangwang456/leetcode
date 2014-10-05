using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class GoodsStore
    {
        private int _id;
        private GoodsName _goodsName;
        private UserInfo _userInfo;
        private DateTime _createTime;
        private decimal _inPrice;
        private int _inCount;
        private int _outCount;
        private int _storeCount;
        private string _storeMark;
        private int _type;//1是进，2是出，3是盘点

        public GoodsStore() { }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
     

        public GoodsName GoodsName
        {
            get { return _goodsName; }
            set { _goodsName = value; }
        }
      

        public UserInfo UserInfo
        {
            get { return _userInfo; }
            set { _userInfo = value; }
        }

        public decimal InPrice
        {
            get { return _inPrice; }
            set { _inPrice = value; }
        }    

        public int InCount
        {
            get { return _inCount; }
            set { _inCount = value; }
        }     

        public int StoreCount
        {
            get { return _storeCount; }
            set { _storeCount = value; }
        }

        public string StoreMark
        {
            get { return _storeMark; }
            set { _storeMark = value; }
        }

        public DateTime CreateTime
        {
            get { return _createTime; }
            set { _createTime = value; }
        }

        public int Type
        {
            get { return _type; }
            set { _type = value; }
        }

        public int OutCount
        {
            get { return _outCount; }
            set { _outCount = value; }
        }
    }
}
