using System;
using System.Collections.Generic;
using System.Text;

namespace Hotel.Model
{
    [Serializable]
    public class GoodsType
    {
        private int _goodsTypeId;
        private string _goodsTypeName;

        public GoodsType() { }

        public int GoodsTypeId
        {
            get { return _goodsTypeId; }
            set { _goodsTypeId = value; }
        }
  

        public string GoodsTypeName
        {
            get { return _goodsTypeName; }
            set { _goodsTypeName = value; }
        }
    }
}
