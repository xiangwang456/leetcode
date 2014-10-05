using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class GoodsCheck
    {
        private int _id;
        private UserInfo _userInfo;
        private DateTime _createTime;
        private GoodsName _goodsName;
        private int _nameCount;
        private string mark;

        public GoodsCheck() { }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        
        public UserInfo UserInfo
        {
            get { return _userInfo; }
            set { _userInfo = value; }
        }
        
        public DateTime CreateTime
        {
            get { return _createTime; }
            set { _createTime = value; }
        }

        public GoodsName GoodsName
        {
            get { return _goodsName; }
            set { _goodsName = value; }
        }
        
        public int NameCount
        {
            get { return _nameCount; }
            set { _nameCount = value; }
        }

        public string Mark
        {
            get { return mark; }
            set { mark = value; }
        }
    }
}
